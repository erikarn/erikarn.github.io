---
layout: default
title: Heathkit SB-200 Notes
---

# Heathkit SB-200

This is a set of notes on the Heathkit SB-200 amplifier.
It's mostly for me to make sure I don't operate the thing
incorrectly.

## General notes

 * Expect 600-700W power output on 80/40, down to 400-500W on 10m
 * It's rated at 500W CW and 1000W PEP SSB.  Anything between 500-600W is good.
 * Don't overdo it! It'll not be acting linearly.

## Tuning notes

From the manual:

 * Set load at minimum (left), set tune at the centre of the band
 * Set low output from exciter, look for around 200mA plate current on the meter
 * Adjust Tune to maximise output power - this should be dipping the plate
 * Adjust power up a little
 * Re-adjust Tune to maximise output power - should dip the plate again
 * And start adjusting Load to peak power; should be dipping plate each time
 * Repeat until maximum CW exciter power
 * If grid current peaks above the white section (ie, 100mA) - increase load to back it off
 * If plate current peaks above 500mA then decrease exciter power

Limits:

 * Maximum grid current for a pair of 572Bs is ~ 100mA (50mA each)
 * Normal grid currnet operation is around 70ma - 80mA
 * Maximum plate current for the pair is ~ 500mA (250mA-275mA each)
 * Grid current should peak when plate tuning causes a plate current dip

## Maximum power issues on 40/80m

 * Aging tubes can manifest as not being able to load down on 80 and 40m
   input - the load cap is fully counterclockwise for max power and can't
   dip.
 * BUT - the amp also doesn't present a 50+j0 impedance on all bands,
   especially 40m and 80m.  So although tube transmitters will just output
   full power, solid state transcievers will begin reducing power above 1.5:1
   and thus you may not be outputting 100w.

## AM usage

 * Tune the amplifier up at 100W CW, like any other mode
 * Then reduce AM carrier power down to the SB-200 outputs 100W AM carrier
 * Use this; don't key down for more than a couple minutes at a time and all
   should be OK.

## Documents and Links

 * [SB-200 Manual.pdf](SB-200 Manual.pdf)
 * [sb200-eham-low-power-on-80m.pdf](sb200-eham-low-power-on-80m.pdf)
 * SB-200 on AM notes - [https://forums.qrz.com/index.php?threads/sb200-on-am.347818/](https://forums.qrz.com/index.php?threads/sb200-on-am.347818/)
 * [WirelessGirl - Heathkit SB-200 Mods](http://www.wirelessgirl.net/Projects/Heathkit-SB200-Mods/)
