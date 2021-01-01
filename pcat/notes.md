---
layout: default
title: IBM PC/AT 5170 notes
---

# IBM PC/AT 5170 notes

Here are some notes on my work restoring and working with
an old IBM PC/AT 5170.

## U117 - address decode PROM

U117 on the rev 3 board is a 32 byte PROM used to decode
a few IO addresses, including the RTC and keyboard controller.

I dumped it using minipro and some wires to hook it up
as if it was a 2716 EPROM.

So, only look at the first 32 bytes to see what the PROM
contents really should be!

 * [pc-at-u115-prom.out](pc-at-u115-prom.out)

## TCOM.COM

This is a small program one can use to both talk over serial
and receive files.  It unfortunately doesn't configure
hardware flow control (and I'm not sure if one can do it
using MODE.COM under DOS, I'll investigate that later.)

Although it's useful to have around, it's unfortunately
not suitable to transfer files onto a floppy disk.
The time it takes to write to the floppy disk means
the default 16450 UART and driver will end up dropping
received bytes.

 * [tcomtxt.asm](tcomtxt.asm)

# Other PC/AT cards that I have

## Winbond W86855AF

This is apparently an MDA card with an optional character ROM.

The jumpers are:

 * J1 Light Pen
 * J2 Printer ON: DISABLE, OFF: ENABLE
 * J3 External ROM ON: DISABLE, OFF: ENABLE
