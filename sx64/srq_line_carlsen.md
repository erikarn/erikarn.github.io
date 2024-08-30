---
layout: default
title: Commodore SX-64 SRQ Line Bug
---

# Commodore SX-64 SRQ Line Bug

[https://narkive.com/5JXcHnau.1](https://narkive.com/5JXcHnau.1)

Title: SRQ line in SX64
From: Raymond Carlsen
Group: comp.sys.cbm

The 6 pin DIN serial ports of our 8 bit computers all have an
/SRQ line on pin 1. I know it's used for fast serial communication
between the C128 and a 1571/81, but what was/is it used for on the
older computers? Even the VIC20 has that line. The C64 programmers
manual states that "any device on the serial bus can bring this signal
LOW when it requires attention from the Commodore 64, which will then
take care of the device." Does anyone know what device might do that?
When repairing several SX computers, I used a game cart called
ROBOTRON 2084 to do a quick check of the expansion port. In two of
those SX computers, I would get a partial screen freeze when running
that cart. Doing a drive reset would clear it momentarily, but it
would continue to lock up when trying to run the game.
I searched my notes for anything similar and found something
called the "Q-link fix for fast loader problems", which was to add a
pull-up resistor to the SRQ line. That mod fixed my screen freeze
problem with those two SX computers running the Robotron game! I
installed a 3.3K resistor from P12 pin 4 (the keyboard connector
header) which is a +5VDC source, and P11 pin 1, the SRQ line on the
internal serial port connector header on the I/O board. Those two
points are only an inch or so apart, so the resistor installation
was easy. I just soldered it to the back of the board at the header
connections.
Experience has taught me that it's not good practice to leave
logic gates unconnected (floating), but that's apparently what
Commodore did here. /SRQ goes directly to the /FLAG input of CIA1
UB3. Note that the C64C has a pull-up resistor on its SRQ line as
does the C128 and DCR models. So do drives such as the 1571 and 1581.
The 1541 and SX drives do not. So, I must assume that the marginal
operation of the SX I encountered was just a fault of the ambiguous
logic state in those computers.
I am reminded of the problem of using a datassette -and- a 1581
at the same time on a C64. Someone wanted to transfer files from
their datassette to their 1581, but it wouldn't work and they thought
there was something wrong with their drive because accessing the drive
locked up the serial bus with that configuration of hardware. Since
the C64 doesn't use the SRQ line anyway, the "fix" was to disconnect
that line either at the computer serial port or in the cable to the
1581 so it can't pull the line LOW.

Ray Carlsen
