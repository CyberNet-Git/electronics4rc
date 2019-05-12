/*
 * bano.c
 *
 * Created: 16.04.2019 19:09:00
 * Author : Vladimir V. Panfilov v.v.panfilov@gmail.com
 */ 

/*
 * Compilation control of the processor family
 * Development && Debug with ATmega8, resulting project for ATtiny13
 *
*/


// include system files
#include <avr/io.h>
#include <avr/interrupt.h>

// include local files
#include "eventdriver.h"
#include <util/delay.h>


#define LED_A_PIN		PORTB0
#define LED_B_PIN		PORTB1
#define LED_C_PIN		PORTB2
#define PWM_INPUT_PIN	PCINT3


void blink_led() {
	//toggleLedATask();
	_delay_ms(500);
}

int main(void)
{
    /* Replace with your application code */
	uint8_t i=1;
   asm("break");
	//cli();
   init_timer(F_CPU);
	
    while (1) 
    {
	   i++;
	   blink_led();
	}
}

