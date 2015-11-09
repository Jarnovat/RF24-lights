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

/*
PINOUT
Teensy 3.1	HC05	nRF24L01+
GND			GND		1-GND
3.3V		VCC		2-VCC
9			-		3-CE
10			-		4-CSN
13			-		5-SCK
11			-		6-MOSI
12			-		7-MISO
-			-		8-IRQ
8-TX3		RX		-
7-RX3		TX		-
6			STATE	-
*/


#include <RF24Network.h>
#include <RF24.h>
#include <SPI.h>

#define BTSERIAL Serial3

char buf[20];

RF24 radio(9,10);					// nRF24L01(+) radio
RF24Network network(radio);			// Network uses that radio

const uint16_t this_node = 01;		// Insert address of your node in Octal format here
const uint16_t channel = 90;		// Insert channel of your network here

// Pins
const int StatePin = 6;

boolean buttonState=0;
boolean lastState=0;

// Structure of our payload max 32 bytes
struct payload_t
{
	byte r; // 1 byte
	byte g; // 1 byte
	byte b; // 1 byte
	byte w; // 1 byte
}; // Total 4 bytes

//Variables for RGBW values and address
byte rgbw[4];
byte address;

String inputString = "";			// a string to hold incoming data
boolean stringComplete = false;		// whether the string is complete


void setup() {
	//Start serial communication to PC and BTModule, Serial to PC is optional
	Serial.begin(19200);
	BTSERIAL.begin(1382400);
	
	pinMode(StatePin, INPUT);
	
	delay(2500);
	Serial.println("Blue server");
	
	
	SPI.begin();
	radio.begin();
	network.begin(/*channel*/ channel, /*node address*/ this_node);
	

}

void loop() {
	

	while (BTSERIAL.available()) {

			char inChar = (char)BTSERIAL.read();
			//Serial.println(inChar);
			// add it to the inputString:
			if (inChar=='@'){

				inputString.toCharArray(buf,18);
				//Get values from incoming string
				sscanf(buf, "%hhu %hhu %hhu %hhu %hhu", &address, &rgbw[0], &rgbw[1], &rgbw[2], &rgbw[3]);	
				
				Serial.print("BL received:");
				Serial.print(" address = ");
				Serial.print(address);
				Serial.print(" r = ");
				Serial.print(rgbw[0]);
				Serial.print(" g = ");
				Serial.print(rgbw[1]);
				Serial.print(" b = ");
				Serial.print(rgbw[2]);
				Serial.print(" w = ");
				Serial.println(rgbw[3]);
				
				inputString = "";
				
				//Send command over to radio
				payload_t payload = {rgbw[0], rgbw[1], rgbw[2], rgbw[3] };
				RF24NetworkHeader header(/*to node*/ address);
		
				Serial.print("nrf24l01 sending...");
				bool ok  = network.write(header,&payload,sizeof(payload));
		
				if (ok)
					Serial.println("ok.");
				else
					Serial.println("failed.");

				
			}else{
				inputString += inChar;
			}
		
		
	}



	
	buttonState = digitalRead(StatePin);
	
	if(buttonState){
		//Do something while connected
		WhileConnect();
		
		if(!lastState){
			//Do something on connect
			OnConnect();
			//Set State
			lastState = 1;
		}
	}
	if(!buttonState){
		//Do something while disconnected
		WhileDisconnect();
		
		if(lastState){
			//Do something on disconnect
			OnDisconnect();
			//Reset State
			lastState = 0;
		}
	}



	
}

void WhileConnect(){
	
	network.update();  // Check the network regularly
	
}

void OnConnect(){
	Serial.println("Welcome to the server...");
	
}

void WhileDisconnect(){
	
	
	
}

void OnDisconnect(){
	Serial.println("Bye Bye, shutting lights...");
	//shutdown lights
	payload_t payload = {0, 0, 0, 0};
	RF24NetworkHeader header(/*to node*/ 0);
	
	Serial.print("nrf24l01 sending...");
	bool ok  = network.write(header,&payload,sizeof(payload));
	
	if (ok)
		Serial.println("ok.");
	else
		Serial.println("failed.");
		
}


