---
layout: default
title: TS-430S notes
---

# Kenwood TS-430S

This is a collection of notes on the care and feeding of a TS-430S.

## Overview


## Common Issues

Like the TS-440S, the TS-430S suffers from a set of pretty common problems.
Yes, this is kinda similar to the TS-440S notes!

### Dry Joints

There are very likely dry joints everywhere.  This seems to be some weird
combination of perhaps some early automated soldering and a whole lot of
a lack of solder being used.  In a lot of cases I've seen barely enough
solder on each pad and it cracks very very easily.  A lot of repairs can
be summarised as "take out each board, touch up every joint."

### Finals

The finals are either in great shape or someone's run the rig into the ground.
I always pull out the LPF output filter and finals board for inspection.
I'll always touch up the soldering on the finals board - especially around all
the transistors on the board.  A fresh coat of thermal grease is also a great idea.


### RF Board Repair/Alignment

(tbd)

### PLL Board Repair/Alignment

(tbd)

### Control Board Repair/Alignment

(tbd)

### USB/SSB frequency response, IF offset Alignment

Like a lot of non-computer rigs before it, the TS-430S has separate oscillators
for LSB, USB and CW.  AM and FM are derived from the CW oscillator.

IF offset alignment is mostly about getting the 8.83MHz oscillator working right.

### Bypassing the finals for output alignment

Whilst on the topic of output alignment - here's something I commonly do.
Unless you need to test something like the finals or ALC, you can just
take the RF output from the RF board, put it into a 56 ohm resistor and
put a scope across that.  I'll do this for testing things like the above
USB/SSB frequency response, frequency calibration, output carrier cleanliness,
modulation, etc - none of these require full output power or ALC to work.
It saves a bunch of headache around things around having to output real RF
power just to check things - so you don't have to worry about how long
you leave your radio on and transmitting whilst aligning the VCOs/PLLs.

## PDFs

This is a collection of versions of user manauls and service manuals.

 * [TS-430.pdf](TS-430.pdf)
 * [ts430s_manual.pdf](ts430s_manual.pdf)
 * [TS430S_user.pdf](TS430S_user.pdf)
 * [ts430s-service-manual.pdf](ts430s-service-manual.pdf)

## High-resolution schematics

(tbd)


