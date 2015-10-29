/*
	Copyright (C) 2015  Jarno Vatanen <frogilix@gmail.com>

	This program is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
*/

#include <RF24Network.h>
#include <RF24.h>
#include <SPI.h>

// nRF24L01(+) radio attached using Getting Started board 
RF24 radio(8,10);

// Network uses that radio
RF24Network network(radio);

// Address of our node
const uint16_t this_node = 00;

//Radio channel
const uint16_t channel = 90;

//Pins
int RPIN = 9; //9 Timer1
int GPIN = 5; //5 Timer0
int BPIN = 6; //6 Timer0
int WPIN = 3; //3 Timer2
int LEDPIN = 7;


// Structure of our payload max 32 bytes
struct payload_t
{
	byte r; // 1 bytes
	byte g; // 1 bytes
	byte b; // 1 bytes
	byte w; // 1 bytes
}; // Total 4 bytes


void setup(void)
{
	pinMode(LEDPIN, OUTPUT);
	digitalWrite(LEDPIN, HIGH);
	
	/*
	Serial.begin(115200);
	delay(3000);
	Serial.println("Led receiver");
	*/
	
	
	SPI.begin();
	radio.begin();
	network.begin(channel, this_node);
	delay(3000);
	digitalWrite(LEDPIN, LOW);
	
	/*
	Timer settings:
			122Hz	490Hz	3.93KHz		32.3KHz
	TCCR0B	0x04	0x03	0x02		0x01
	TCCR1B	0x04	0x03	0x02		0x01
	TCRR2B	0x06	0x04	0x02		0x01	
	*/
	
	TCCR0B = TCCR0B & 0b11111000 | 0x02;
	TCCR1B = TCCR1B & 0b11111000 | 0x02;
	TCCR2B = TCCR2B & 0b11111000 | 0x02;
	
	//Needed for phase correct on timer0
	TCCR0A = _BV(COM0A1) | _BV(COM0B1) | _BV(WGM00);
	
}

void loop(void)
{
	// Pump the network regularly
	network.update();

	// Is there anything ready for us?
	while ( network.available() )
	{
		// If so, grab it and print it out
		RF24NetworkHeader header;
		payload_t payload;
		network.read(header,&payload,sizeof(payload));

		/*
		Serial.print("Received packet:");
		Serial.print(" r = ");
		Serial.print(payload.r);
		Serial.print(" g = ");
		Serial.print(payload.g);
		Serial.print(" b = ");
		Serial.print(payload.b);
		Serial.print(" w = ");
		Serial.println(payload.w);
		*/

		analogWrite(RPIN,payload.r);
		analogWrite(BPIN,payload.g);
		analogWrite(GPIN,payload.b);
		analogWrite(WPIN,payload.w);

	}
}
