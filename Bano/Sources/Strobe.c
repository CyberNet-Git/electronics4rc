/*
 * Strobe.c
 *
 * Created: 3/20/2014 1:21:41 PM
 *  Author: o.masliuchenko
 */ 


#include <avr/io.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>

#include <string.h>

#include "EventQueue.h"

#define LED_A_PIN		PORTB0
#define LED_B_PIN		PORTB1
#define LED_C_PIN		PORTB2
#define PWM_INPUT_PIN	PCINT3

#define LED_A			LED_A_PIN
#define LED_B			LED_B_PIN
#define LED_C			LED_C_PIN

#define PWM_THRESHOLD_0	900	 // Attiny13 at 4.8 MHz: number of pulses in 1500 uS at 4.8MHz with /8 prescailer = 1500 * 4.8 / 8 = 900
#define PWM_THRESHOLD_1	1200 // Attiny13 at 4.8 MHz: number of pulses in 1500 uS at 4.8MHz with /8 prescailer = 1500 * 4.8 / 8 = 900
//#define PWM_THRESHOLD	750	 // Atmega8 at 4MHz:  number of pulses in 1500 uS at 4MHz with /8 prescailer = 1500 * 4 / 8 = 750

#define LED_TOGGLE(LED)		PORTB ^= (1 << LED);
#define LED_ON(LED)			PORTB |= (1 << LED);
#define LED_OFF(LED)		PORTB &= (0xFF ^ (1 << LED));

//unsigned char led_trigger = 1 << LED_A_PIN | 1 << LED_B_PIN | 1 << LED_C_PIN; // FOR XOR OP in toggle

void toggleLedATask()
{
	PORTB ^= (1 << LED_A_PIN);

	addTimer(toggleLedATask, TIMEOUT_MS(300));
}

void toggleLedBTask()
{
	PORTB ^= (1 << LED_B_PIN);

	addTimer(toggleLedBTask, TIMEOUT_MS(500));
}

void toggleLedCTask()
{
	PORTB ^= (1 << LED_C_PIN);
	
	addTimer(toggleLedCTask, TIMEOUT_MS(1000));
}

uint8_t idx = 0;
const uint16_t delays[] = 
{
	TIMEOUT_MS(100), //on
	TIMEOUT_MS(700), //off
	TIMEOUT_MS(100), //on
	TIMEOUT_MS(200), //off
	TIMEOUT_MS(100), //on
	TIMEOUT_MS(700), //off
	TIMEOUT_MS(100), //on
	TIMEOUT_MS(200), //off
	TIMEOUT_MS(100), //on
	TIMEOUT_MS(200), //off
	TIMEOUT_MS(100), //on
	TIMEOUT_MS(1200), //off
};
const uint8_t delaysCount = sizeof(delays)/sizeof(uint16_t); //dim(delays)
void complexLedTask()
{
	
	PORTB ^= (1 << LED_C_PIN);
	
	uint16_t delay = delays[idx];
	idx++;
	if(idx >= delaysCount)
		idx = 0;
	
	addTimer(complexLedTask, delay);
}

void strobeBTask()
{
	PORTB ^= (1 << LED_B_PIN);

	addTimer(strobeBTask, PINB & (1 << LED_B_PIN) ? TIMEOUT_MS(10) : TIMEOUT_MS(1000));
}

extern uint8_t pwmAValue;
uint8_t directionA = 0; 
void pwmLedATask()
{
	if(directionA) // Incrementing
	{
		pwmAValue += 2;
		
		if(pwmAValue == 255)
			directionA = 0;
	}
	else //decrementing
	{
		pwmAValue -= 2;
		
		if(pwmAValue == 1)
			directionA = 1;
	}
	
	
	addTimer(pwmLedATask, TIMEOUT_MS(2));
}

extern uint8_t pwmBValue;
uint8_t directionB = 0;
void pwmLedBTask()
{
	if(directionB) // Incrementing
	{
		pwmBValue += 1;
		
		if(pwmBValue == 255)
			directionB = 0;
	}
	else //decrementing
	{
		pwmBValue -= 1;
		
		if(pwmBValue == 1)
			directionB = 1;
	}
	
	
	addTimer(pwmLedBTask, TIMEOUT_MS(10));
}

/*typedef struct complexPWM
{
	uint8_t step;
	uint8_t startValue;
	uint8_t maxValue;
	uint16_t delay;
} complexPWM;


complexPWM pwmItems[] =
{
	{0, 1, TIMEOUT_MS(1000)},
	{2, 63, TIMEOUT_MS(2)},  // 127
	{-2, 15, TIMEOUT_MS(5)}, // 33
	{4, 255, TIMEOUT_MS(2)},
	{-4, 63, TIMEOUT_MS(2)},
	{-2, 1, TIMEOUT_MS(2)}

};
*/

//
// Each step is 2ms long
//
typedef struct complexPWM
{
	uint8_t baseValue;  // start or base value
	uint8_t Steps;		// number of steps
    int16_t k;			// tg(a) - slope. For more look in out.xlsx. calculate as k=(EndVal-StartVal)/Steps*100
} complexPWM;

//
// Table located at EEPROM
//
complexPWM EEMEM pwmItems[] = {
{0,255,0},
{0,20,130},
{26,15,473},
{97,15,86},
{110,20,80},
{126,15,180},
{153,15,679},
{255,20,-510},
{153,15,-180},
{126,15,-107},
{110,15,-87},
{97,15,-467},
{27,20,-135}
};

complexPWM pwmItem;

uint8_t EEMEM pwmTableSizeE = sizeof(pwmItems) / sizeof(complexPWM);
uint8_t volatile pwmTableIndex = 0xFF;
uint8_t volatile pwmTableSize;
uint8_t pwmStep = 0;


void complexPWMTask()
{
	//complexPWM * curItem = pwmItems + pwmTableIndex;
	if (pwmTableIndex == 0xFF) { // first start
		pwmTableSize = eeprom_read_byte(&pwmTableSizeE);
//		pwmTableSize = 2;
		pwmTableIndex = 0;
		pwmStep = 0;
		if (pwmTableSize > 0)
		{
			eeprom_read_block(&pwmItem, &pwmItems[pwmTableIndex], sizeof(complexPWM));
//		PORTB ^= (1 << LED_B_PIN);
		} else { return; }
	}
	
	pwmAValue = (pwmItem.k * pwmStep) / 100 + pwmItem.baseValue;
	pwmStep++;
	
	if(pwmStep == pwmItem.Steps ) {
		pwmStep = 0;
		pwmTableIndex++;
		if(pwmTableIndex == pwmTableSize) {
			pwmTableIndex = 0;
		}
		eeprom_read_block(&pwmItem, &pwmItems[pwmTableIndex], sizeof(complexPWM));
//		PORTB ^= (1 << LED_B_PIN);
	}
	
	addTimer(complexPWMTask, TIMEOUT_MS(2));
}


uint16_t pwmPulseStartTime;
extern volatile uint8_t tcnth;

void setupPWMInput()
{
	// Initialize the timestamp value
	pwmPulseStartTime = 0;

    // Attiny13
	PCMSK = 1 << PWM_INPUT_PIN;  // Use PCINT3 pin as input
	GIMSK |= 1 << PCIE; // Enable Pin Change interrupt
	
	// Atmega8 
	//MCUCR = 1<<ISC00; // Any logical change on INT0 generates an interrupt request.
	//GICR = 1<<INT0;   // External Interrupt Request 0 Enable For Atmega8
}

// Pin Change interrupt
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
	if(PINB & (1 << PWM_INPUT_PIN)) // On raising edge just capture current timer value
	{
		pwmPulseStartTime = curTime.val;
	}
	else // On failing edge calculate pulse length and turn on/off LED depending on time
	{
		uint16_t pulseLen = curTime.val - pwmPulseStartTime;
		
		if(pulseLen >= PWM_THRESHOLD_0)
			PORTB |= (1 << LED_C_PIN);
		else	
			PORTB &= ~(1 << LED_C_PIN);

		if(pulseLen >= PWM_THRESHOLD_1)
			PORTB |= (1 << LED_C_PIN);
		else
			PORTB &= ~(1 << LED_C_PIN);
	}
}

int main(void)
{
	// Set up ports
	PORTB = 1 << PWM_INPUT_PIN | 1 << LED_A_PIN | 1 << LED_B_PIN | 0 << LED_C_PIN ; // LEDs switched off, pull-up for PCINT4
	//PORTD = 1 << PWM_INPUT_PIN; // pull-up for INT0 for Atmega8
	DDRB = 0 << PWM_INPUT_PIN | 1 << LED_A_PIN | 1 << LED_B_PIN | 1 << LED_C_PIN; // output mode for LED pins, input mode for PCINT4 pin
	
	
	setupEventQueue();
//	addTimer(complexLedTask, TIMEOUT_MS(0));
//	addTimer(pwmLedATask, TIMEOUT_MS(0));
//	addTimer(pwmLedBTask, TIMEOUT_MS(0));
// 	addTimer(toggleLedATask, TIMEOUT_MS(0));
// 	addTimer(toggleLedBTask, TIMEOUT_MS(0));
 //	addTimer(toggleLedCTask, TIMEOUT_MS(0));


//	addTimer(strobeBTask, TIMEOUT_MS(0));
	addTimer(complexPWMTask, TIMEOUT_MS(2));  // LED_A_PIN

	setupPWMInput();
	
	sei();
	
	runEventQueue();
}