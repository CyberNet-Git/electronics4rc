/*
 * eventdriver.h
 *
 * Created: 18.04.2019 19:29:19
 * Author : Vladimir V. Panfilov v.v.panfilov@gmail.com
 */ 


#ifndef EVENTDRIVER_H_
#define EVENTDRIVER_H_


#ifdef 	__AVR_ATmega8__
// ATMega8 works on different MHz, 4MHz for example
// Fuse bits for 4MHz internal clock are: CKSEL0..3 = 0011 
#define F_CPU 4000000UL				// CPU frequency			| Частота процессора
#define PRESCALER 8					// Timer/Counter prescaler	| Делитель частоты для счетчика
#define F_TCNT (F_CPU / PRESCALER)	// Timer/Counter frequency	| Частота счетчика
#define TCNT_RES 16					// Timer/Counter bits		| Разрядность счетчика
#define TCNT TCNT1					// TCNT Register			| Регистр счетчика
#define TIMER_OVF_vect TIMER1_OVF_vect

#elif __AVR_ATtiny13__
// 4.8 & 9.6 MHz is a case for attiny
// Fuse bits are: TODO
#define F_CPU 4800000UL
#define TCNT_RES 8

#else
#error "Unsupported MCU"
#endif

#ifndef F_CPU
#error "preprocessor F_CPU (CPU frequency) must be defined"
#endif

#define BV(BIT, VALUE) (VALUE<<BIT)


// Hardware support preprocessor notice
#ifndef __AVR_ATmega8__
#warning "Only ATmega8 currently supported!"
#endif

volatile uint16_t TimerK;

void init_timer(unsigned long cpufreq);
void init_events();

// Globals on used hardware CPU
uint16_t cpu_freq;

#endif /* EVENTDRIVER_H_ */