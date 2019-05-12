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
volatile uint8_t pwmBValue = 255;

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

ISR(TIM0_OVF_vect)
{
	// Update the PWM values
	OCR0A = pwmAValue;
	//OCR1B = pwmBValue;
	
	// Increment high byte of the HW counter
	tcnth++;
}
