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
 * general coverage receive is an add-on (GC-10)

## Weirdnesses

 * The Max forward power is first set at 15W, and then tuned for 10W of
   voice output
 * Then CW (and hopefully FM; still figuring that out) are limited to
   10W using a separate pot, rather than also using ALC.
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
   crossed on the PCB; the silk screen and layout is wrong!

## Revisions

(TBD)

## Common Issues

(TBD)

## PDFs

The service and user manuals should be used together to figure out
what's going on.

 * [ts670_user.pdf](ts670_user.pdf)
 * [ts670_user.pdf](ts670_user.pdf)
 * [ts-670txmoddiag.pdf](ts-670txmoddiag.pdf)
