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

## Tuning notes

 * Maximum grid current for a pair of 572Bs is ~ 100mA
 * Normal operation is around 70ma - 80mA
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
