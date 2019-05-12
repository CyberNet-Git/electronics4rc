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

	typedef void (*eventHandler)();

	void setupEventQueue();
	void addTimer(eventHandler handler, uint16_t timeout);
	void runEventQueue();

#endif /*  EVENTQUEUE_H_ */