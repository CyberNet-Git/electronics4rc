/*
 * CFile1.c
 *
 * Created: 3/20/2014 1:28:05 PM
 *  Author: o.masliuchenko
 */ 

#include <stdint.h>
#include <string.h>

#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

#include "EventQueue.h"

// Software timers list
typedef struct timer_t
{
	uint16_t timeout;
	eventHandler handler;
} timer_t;

#define TIMERS_LIST_SIZE 5
timer_t timersList[TIMERS_LIST_SIZE];

// Additional high byte for 8bit timer value
volatile uint8_t tcnth; 

// Current PWM value
volatile uint8_t pwmAValue = 0; // 255 = Off because of transistor inverter
volatile uint8_t pwmBValue = 127;

void setupEventQueue()
{
	// Clear timers list
	memset(timersList, 0, sizeof(timersList)); 
	
	// Initialize counters
	tcnth = 0;
	TCNT0 = 0x00;
	//TCNT1 = (unsigned int) 0x00; // For Atmega8
}

void runTimer()
{
	// Reset counter counters
	tcnth = 0;
	TCNT0 = 0x00; // TCNT1 for Atmega8
	OCR0A = pwmAValue;
	//OCR0B = pwmBValue;
	
	// Run timer at 4.8MHz/8 = 600 kHz
	// This gives 1.667 uSec timer tick, 426.667 uSec timer interval
	// Almost 28 seconds with additional 16bit SW timer value
	TCCR0A = 1 << COM0A1 | 0 << COM0A0 | 1 << WGM01 | 1 << WGM00; // Fast PWM on OC0A  pins, inverting mode
	TCCR0B = 0 << CS02 | 1 << CS01 | 0 << CS00  ;  // run timer with prescaler f/8 for Attiny13
	TIMSK0 = 1 << TOIE0;

	//TCCR1A = 1<<COM1A1 | 0<<COM1A0 | 1<<WGM10; // Fast PWM on OC1A pin, non-inverting mode (direct LED to PIN connection) Atmega8
//	TCCR0A = 0; // Normal mode
	//TCCR1B = 1<<WGM12 |  1<<CS11 ; // run timer with prescaler f/8 for atmega8
	//TIMSK = 1 << TOIE1; // For Atmega8
	
}

void addTimer(eventHandler handler, uint16_t timeout)
{
	// Search through the timers list to find empty slot
	for(timer_t * timer = timersList; timer < timersList + sizeof(timersList) / sizeof(timer_t); timer++)
	{
		if(timer->handler != NULL)
			continue;
		
		// Add the timer to the list
		timer->handler = handler;
		timer->timeout = timeout;
		
		break;
	}
}

void runEventQueue()
{
	runTimer();

	// Set up sleep mode
	set_sleep_mode(SLEEP_MODE_IDLE);

	while(1) // Main event loop
	{
		wdt_reset();
		
		// Sleep until the timer event occurs
		sleep_enable();
		sleep_cpu();
		sleep_disable();

		//Iterate over timers
		for(timer_t * timer = timersList; timer < timersList + sizeof(timersList) / sizeof(timer_t); timer++)
		{
			// Skip inactive timers
			if(timer->handler == NULL)
				continue;

			if(timer->timeout) // Decrement timeout value
			{
				timer->timeout--;
			}
			else // If it is already zero - execute handler
			{
				timer->handler();
				timer->handler = NULL;
			}
		}
	}	
}

volatile uint8_t pwmEnabled = 0;

ISR(TIM0_OVF_vect)
{
	// Update the PWM values
	if(pwmEnabled) OCR0A = pwmAValue;
	if(pwmEnabled) OCR0B = pwmBValue;
	
	// Increment high byte of the HW counter
	tcnth++;
}


uint16_t ppmPulseStartTime;
uint8_t ppmInputPin;

#define LED_C_PIN		PORTB2
#define LED_B_PIN		PORTB1

#define PPM_THRESHOLD_0	900	 // Attiny13 at 4.8 MHz: number of pulses in 1500 uS at 4.8MHz with /8 prescailer = 1500 * 4.8 / 8 = 900
#define PPM_THRESHOLD_1	1200 // Attiny13 at 4.8 MHz: number of pulses in 1500 uS at 4.8MHz with /8 prescailer = 1500 * 4.8 / 8 = 900

inline void setupPPMInput()
{
	// Initialize the timestamp value
	ppmPulseStartTime = 0;

	// Attiny13
	PCMSK = 1 << ppmInputPin;  // Use PCINT3 pin as input
	GIMSK |= 1 << PCIE; // Enable Pin Change interrupt
	
	// Atmega8
	//MCUCR = 1<<ISC00; // Any logical change on INT0 generates an interrupt request.
	//GICR = 1<<INT0;   // External Interrupt Request 0 Enable For Atmega8
}

ISR(PCINT0_vect)
{
	/*
	// Get the current time stamp
	uint16_t curTime = (tcnth << 8) + TCNT0;
	*/

	// gcc generates plenty of code when constructing 16 bit value from 2 bytes. Let's do it ourselves	
	union
	{
		struct
		{
			uint8_t l;
			uint8_t h;
		};
		uint16_t val;
	} curTime;
	
	// Get the current time stamp
	curTime.h = tcnth;
	curTime.l = TCNT0;

	// It may happen that Pin Change Interrupt occurs at the same time as timer overflow
	// Since timer overflow interrupt has lower priority let's do its work here (increment tcnth)
	if(TIFR0 & (1 << TOV0))
	{
		curTime.h = tcnth+1;
		curTime.l = TCNT0;
	}
	
	
	//ATtiny13 if(PINB & (1 << PWM_INPUT_PIN)) // On raising edge just capture current timer value
	if(PINB & (1 << ppmInputPin)) // On raising edge just capture current timer value
	{
		ppmPulseStartTime = curTime.val;
	}
	else // On failing edge calculate pulse length and turn on/off LED depending on time
	{
		uint16_t pulseLen = curTime.val - ppmPulseStartTime;

		if(pulseLen < PPM_THRESHOLD_1){
			LED_OFF(LED_C);
		}

		if(pulseLen > PPM_THRESHOLD_2){
			pwmEnabled = 1;
			TCCR0A = 1 << COM0A1 | 1 << COM0A0 | 1 << WGM01 | 1 << WGM00;
		}
		else	{
			pwmEnabled = 1;
			TCCR0A = 0 << COM0A1 | 0 << COM0A0 | 1 << WGM01 | 1 << WGM00;
		}

		if(pulseLen > PPM_THRESHOLD_3){
			LED_ON(LED_C);
		}


	}
}
