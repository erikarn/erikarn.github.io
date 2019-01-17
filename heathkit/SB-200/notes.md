---
layout: default
title: Heathkit SB-200 Notes
---

# Heathkit SB-200

This is a set of notes on the Heathkit SB-200 amplifier.
It's mostly for me to make sure I don't operate the thing
incorrectly.

## General notes

 * It's rated at 600W CW and 1000W PEP SSB.  Anything between 500-600W is good.
 * Don't overdo it! It'll not be acting linearly.
 * A well maintained rig will output 700-800W on the lower bands but the grid current is pretty high.  Don't do it - limit drive output to whatever you need to be able to peak/load at 600W output.
 * The HV should be around 2300V - if it's not then (after carefully discharging everything) check all of the meter resistors for correct values and replace accordingly

## Using it with a solid state rig

 * Note the ALC voltage is .. very negative, and it could damage your radios.  Kenwoods for example don't need more than around -9v for ALC to shut down transmit.
 * So either build a circuit to clamp the ALC at -9v (and realise it could swing quite a bit more, so be careful on your choice of zener) or don't hook up the ALC line and be double careful.
 * The relay circuit is also -110V DC; that's fine for a TS-440S but other radios using transistors will be unhappy.  Make sure you install the soft-key module.
 * Check the service bulletin section

## Service bulletins

This includes a note about ALC and using an 8v zener.

 * [service-bulletins.txt](service-bulletins.txt)

## Tuning notes

From the manual:

 * Set load at minimum (left), set tune at the centre of the band
 * Set low output from exciter, look for around 200mA plate current on the meter
 * Adjust Tune to maximise output power - this should be dipping the plate
 * Adjust power up a little
 * Re-adjust Tune to maximise output power - should dip the plate again
 * And start adjusting Load to peak power; should be dipping plate each time
 * Repeat until you hit 600W output power
 * If grid current peaks above the white section (ie, 100mA) - increase load to back it off
 * If plate current peaks above 500mA then decrease exciter power

Limits:

 * Maximum grid current for a pair of 572Bs is ~ 100mA (50mA each)
 * Normal grid currnet operation is around 70ma - 80mA
 * Maximum plate current for the pair is ~ 500mA (250mA-275mA each)
 * Grid current should peak when plate tuning causes a plate current dip

## Maximum power issues on different bands

 * Aging tubes can manifest as not being able to load down on 80 and 40m
   input - the load cap is fully counterclockwise for max power and can't
   dip.
 * BUT - the amp also doesn't present a 50+j0 impedance on all bands.
   So although tube transmitters will just output
   full power, solid state transcievers will begin reducing power above 1.5:1
   and thus you may not be outputting 100w.
 * I've had to use my tuner on the TS-440S for 15 and 10m to stop the SWR to
   be terrible, but it's touchy - the SWR at the exciter changes as tune/load
   happens so the autotuner needs to be kicked in and re-run a few times during
   tuning.

## AM usage

 * Tune the amplifier up at 100W CW, like any other mode
 * Then reduce AM carrier power down to the SB-200 outputs 100W AM carrier
 * Use this; don't key down for more than a couple minutes at a time and all
   should be OK.

## TODO items to investigate

 * Look at what it'll take to make a proper ALC reducing circuit - see if
   ALC can be asserted above 600W to keep the amplifier from being overdriven.
 * Add HV fuse, glitch resistor.
 * Maybe add a series input resistor to limit the input power - ie, 100W exciter
   but only 50-60W into the amplifier input tank.
 * Write up something on checking the metering resistosr to ensure that they're still
   within spec.

## Documents and Links

 * [SB-200 Manual.pdf](SB-200 Manual.pdf)
 * [sb200-eham-low-power-on-80m.pdf](sb200-eham-low-power-on-80m.pdf)
 * SB-200 on AM notes - [https://forums.qrz.com/index.php?threads/sb200-on-am.347818/](https://forums.qrz.com/index.php?threads/sb200-on-am.347818/)
 * [WirelessGirl - Heathkit SB-200 Mods](http://www.wirelessgirl.net/Projects/Heathkit-SB200-Mods/)
