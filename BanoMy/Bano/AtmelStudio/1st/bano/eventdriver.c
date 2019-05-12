/*
 * eventdriver.c
 *
 * Created: 18.04.2019 19:29:19
 * Author : Vladimir V. Panfilov v.v.panfilov@gmail.com
 */ 

#include <avr/interrupt.h>

#include "eventdriver.h"
#include <stdint-gcc.h>


ISR( TIMER_OVF_vect )
{
	TCNT1 = 0; //выставляем начальное значение TCNT1
	if( PINB & ( 1 << PB0 ) ) {
		PORTB &= ~ BV( PB0, 1 );
	}
	else {
		PORTB |= BV( PB0, 1 );
	}
}

void init_events()
{
	cli();
}


void init_timer(unsigned long cpufreq)
{
	//cpu_freq = cpufreq;
	TCCR1B = (1 << CS12)|(0<<CS11)|(0<<CS10);
	TIMSK = (1<<TOIE1); // enable interrupt on timer overflow
}

