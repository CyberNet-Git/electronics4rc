/*
 * EventQueue.h
 *
 * Created: 3/20/2014 1:32:45 PM
 *  Author: o.masliuchenko
 */ 

#include <avr/pgmspace.h>

#ifndef EVENTQUEUE_H_
#define EVENTQUEUE_H_

	#define TIMEOUT_MS(t)  ((uint32_t)t  * 600 / 256)    // 4.8MHz / (8 prescailer * 256 full timer cycle * 1000 since we are counting in ms)
	//#define TIMEOUT_MS(t)  ((uint32_t)t  * 125 / 64)    // 4MHz / (8 prescailer * 256 full timer cycle * 1000 since we are counting in ms)

	#define LED_A_PIN		PORTB0
	#define LED_B_PIN		PORTB1
	#define LED_C_PIN		PORTB2
	#define PPM_INPUT_PIN	PCINT3

	#define LED_A			LED_A_PIN
	#define LED_B			LED_B_PIN
	#define LED_C			LED_C_PIN


	#define LED_TOGGLE(LED)		PORTB ^= (1 << LED);
	#define LED_ON(LED)			PORTB |= (1 << LED);
	#define LED_OFF(LED)		PORTB &= (0xFF ^ (1 << LED));


	#define PPM_THRESHOLD_1	750	  // Attiny13 at 4.8 MHz: number of pulses in 1250 uS at 4.8MHz with /8 prescailer = 1250 * 4.8 / 8 = 750
	#define PPM_THRESHOLD_2	900   // Attiny13 at 4.8 MHz: number of pulses in 1500 uS at 4.8MHz with /8 prescailer = 1500 * 4.8 / 8 = 900
	#define PPM_THRESHOLD_3	1050  // Attiny13 at 4.8 MHz: number of pulses in 1750 uS at 4.8MHz with /8 prescailer = 1750 * 4.8 / 8 = 1050
	#define PPM_THRESHOLD_4	1140  // Attiny13 at 4.8 MHz: number of pulses in 1750 uS at 4.8MHz with /8 prescailer = 1900 * 4.8 / 8 = 1050
	//#define PWM_THRESHOLD	750	 // Atmega8 at 4MHz:  number of pulses in 1500 uS at 4MHz with /8 prescailer = 1500 * 4 / 8 = 750

	typedef void (*eventHandler)();

	void setupEventQueue();
	void setupPPMInput();

	void addTimer(eventHandler handler, uint16_t timeout);
	void runEventQueue();

#endif /*  EVENTQUEUE_H_ */