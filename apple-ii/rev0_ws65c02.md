---
layout: default
title: Apple II - Rev 0 - Using a WS65C02
---

# Apple II - Using a WS65C02

I only have/had a WS65C02 handy when building my apple-II replica.
However! It isn't a 100% drop-in replacement.  It's a .. well, 99.5%
drop-in replacement.  However, I haven't yet made it work stable;
will have to figure it out.

It's pretty simple, and well documented [Here](https://www.westerndesigncenter.com/wdc/AN-002_W65C02S_Replacements.php).

The short version:

 * Bend pin 1 out
 * Bend pin 5 out
 * Tie pin 36 to VDD (pin 8).

The short version:

 * pin 1 on a WS65C02 is VPB (Vector Pull), an output pin which is asserted
   when a vector location is being addressed during an interrupt sequence.
   This isn't needed for the Apple II, and since it's connected to Ground,
   it's a bad thing to have wired up.  Just disconnect it from the socket

 * Pin 5 on a WS65C02 is MLB (Memory Lock), involved in
   memory addressing in multi-processor systems.
   Disconnect it on an Apple II!

 * Pin 36 on a WS65C02 is BE (Bus Enable).  If it's tied low then the 65C02
   disconnects from the bus (high impedance.)  This confused me when I first
   powered things up until I read up on the WS65C02 differences.  Just tie it
   high - remove it from the socket so it's not tied low, then run a short
   wire to pin 8 (VDD.)

Et Voila!  The thing should at least boot!
