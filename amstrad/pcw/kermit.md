---
layout: default
title: Using Kermit on the Amstrad PCW
---

# Using Kermit on the Amstrad PCW

This is a brief set of notes for how to use Kermit on the Amstrad PCW
to transfer files between it and another device.

In my case I'm using a Wifi Modem [https://github.com/VapourSoft/PCWWiFiModem/](https://github.com/VapourSoft/PCWWiFiModem/) which allows network connections to other IPv4 hosts.

## CP/M version

This is for CP/M 3 - which is what the PCW runs - but apparently there
are improvements in the XBIOS in later versions? Eg, The PCW Wifi Modem
wiki mentions needing at least PCW CP/M v1.7.

## Building Kermit

The first step is actually /getting/ Kermit.  This is .. more linked
to the next step than I'd like.

Start here - [https://kermitproject.org/](https://kermitproject.org/).
The CP/M kermit stuff is currently here - [https://www.columbia.edu/kermit/archive.html](https://www.columbia.edu/kermit/archive.html).

Now it's all a bit 1980s.  The site doesn't provide pre-built
Kermit binaries.  Instead you'll need to start with withe CP/M 80
Kermit 4.11 bundle in [cpm80.zip](http://www.columbia.edu/kermit/ftp/archives/cpm80.zip).

The short version is you need to transfer the build tool (mtool.hex),
the kermit application (cpsker.hex) and the PCW specific driver
(cpvpcw.hex).  If you want to build the generic CP/M 3.0 one then
also transfer the generic driver (cpvgen.hex).

Then once they're on your machine, you need to build them.

 * LOAD MLOAD.HEX - will convert MLOAD.HEX to MLOAD.COM
 * MLOAD KERM411=CPSKER.HEX,CPVPCW.HEX - will generate a KERM411.COM program
   from the Kermit application and Driver (in this case the PCW driver.)
 * Then you should be able to run KERM411.COM .


## Getting Kermit Over To Your System

This is the first hurdle - getting it over. It's 2024, not 1987, and
so you may have the "how do I bootstrap a 3" or 3.5" CP/M disk?" problem.

I use MAIL232.COM, which is a hidden program on your Locoscript disk.
It supports ASCII transfers, which is just fine for the .HEX files.

The MAIL232 program is described in the CPS8256 user manual -
[manual_cps8256_english.pdf](manual_cps8256_english.pdf).

## SETSIO - serial port configuration

The Wifi Modem I'm using uses hardware flow control, so before starting
Kermit you should configure it appropriately.

 * SETSIO 9600 HS ON XON OFF INT OFF

This sets it to 9600, hardware handshaking, no software flow control, no
interrupts (ie, polled.)

You can use SET SPEED in the PCW Kermit to set the serial port speed
(eg if you change it during use), but you can't do that with the generic
CP/M build.

## Talking to a Network Kermit Server

(This is TBD - it's mostly notes for me right now)

[https://www.kermitproject.org/ck10clientserver.html](https://www.kermitproject.org/ck10clientserver.html)

On the PC side:

 * run kermit (which is C-kermit)
 * SET FILE TYPE BINARY
 * set host /server * 3000

On the PCW side

 * SET IBM OFF
 * SET FILE-MODE BINARY
 * SET FILE TYPE BINARY
 * CONNECT

Then at the modem:

 * ATDT -x.x.x.x:yyyy

The - prefix here says "raw network, no telnet escaping / NUL insertion after CRLF, etc."
It's part of the PCW Wifi Modem command set.

Once it connects, break back into the kermit command line, and you should
be able to talk to the remote side, eg

 * REMOTE DIR
 * REMOTE CD /path/to/stuff

At this point make sure it's binary, ie

 * REMOTE SET FILE TYPE BINARY

Then you should be able to SEND and GET files as appropriate.


