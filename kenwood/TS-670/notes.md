---
layout: default
title: TS-670 notes
---

# Kenwood TS-670

This is a cute little QRP rig that covers 40m, 15m, 10m and 6m.
They're hard to find and they're even harder to find intact and not-broken.

## Overview

 * It's a single conversion radio, 8.83MHz IF
 * FM is an add-on (FM-430 module, like the TS-430)
 * general coverage receive is an add-on (GC-10), with a spur at 8.83MHz
   (the IF stage frequency.)

## Weirdnesses

### Calibrating TX power

If your radio (like mine) was very broken, the alignment instructions
may just not be enough to get the radio into good working order.
After a lot of reverse engineering I finally figured out what's going on.

 * The Max forward power is first set at 15W, and then tuned for 10W of
   voice output
 * Then CW (and hopefully FM; still figuring that out) are limited to
   10W using a separate pot, rather than also using ALC.
 * That's limited via Q39/VR9 via a bunch of diode and transistor logic.
   It confused the heck out of me for the longest time.
 * If you tune the output power max to 10W, then you'll only ever see
   4-5W of max voice power!
 * ALC min/max calibration is purely for the meter; there isn't an ALC
   min/max setting based on the voice input.  The only feedback into the
   ALC line comes from the forward power pot and associated circuitry.

## Known Schematic/PCB Differences

 * I've found that C61 and R31 on the control board are inverted on
   the PCB - C61 goes to the junction of L28/R32, then the ground of C61
   goes to R31, that then goes to ground

 * The two pairs of resistors in the TX mix on the RF board are indeed
   crossed on the PCB; the silk screen and layout is wrong! (TODO - when
   I wrote this, am I referring to R43,R44,R45,R46 before the Q5/Q6
   mixing transistors?)

 * (TODO) check if the ALC/SM/FSM lines on the IF section (see connectors 21
   and 20 on the IF board schematic, right hand side of said schematic)
   are joined; joining ALC there into SM (RX signal meter) and FSM (FM
   signal meter, from the FM-430 board) doesn't make any sense.  I think
   the schematic is wrong!

## Revisions

(TBD)

## Common Issues

(TBD)

## PDFs

The service and user manuals should be used together to figure out
what's going on.

 * [ts670_user.pdf](ts670_user.pdf)
 * [ts670_service.pdf](ts670_service.pdf)
 * [ts-670txmoddiag.pdf](ts-670txmoddiag.pdf)
