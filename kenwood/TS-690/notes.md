---
layout: default
title: TS-450/TS-690 Notes
---

# Kenwood TS-450/TS-690

I like this radio but wow the TS-690 I got has shot finals.
This is all TBD as I turn my notes into a doc.

## Overview

There are a lot of weird things to fix in this radio.
The mods I've done are pretty extensive:

 * Fixed the finals - totally shot!
 * Replaced the filter board!
 * Moved the thermistor checking finals temperature closer to the transistors
 * 6m first stage amplifier bias repair!
 * Fixed finals oscillation problem!
 * Leaky capacitors in AF output stage
 * Add some negative gain to the packet / data audio output stage to reduce distortion for digital modes
 * Decreased input gain on the packet / data audio input to address how easy it was to get RF back /into/ the radio
 * Added an IF tap buffer board to the first IF to be able to see what's going on.
 * Added a third-party TCXO from Bob Anderson (N3BA). He's still selling them on ebay.

## Finals

I've been slowly rebuilding the finals on this unit.

### Inductor rewinding

Here are some notes about the inductors.

L3:
 * Primary:  4.6uH
 * Secondary: 1.154, so around 0.740uH each side

L9:
 * secondary - 3.075uH, 0.595uH each side
 * primary - 0.5uH (it's a single turn using soldered pipes)

L6/L7:
 * 1uH choke - 18 turns... ~ 0.7uH on mine

L10/L11:
 * ~ 11uH

### Thermistor / fan control

The thermistor is mounted very far from the finals transistor making it
take a long time to turn on.  I'd rather it turn out sooner rather than
later, so I did a couple things:

 * On the fan control PCB (a little riser board on the finals PCB) I substituted R6 with 4.7K.  This kicks in the fan much sooner.
 * I relocated the thermistor to the grounding tab near the power socket, close to the finals transistors. I ran some wire across the finals board and make sure it was twisted around to try and pretend to balance out any stray RF there.

The fan now kicks in much sooner and keeps things much, much cooler.

### Replacement transistors

I used replacement 2SC2509s from Eleflow which have higher HFE than the low-ish
HFE parts used by Kenwood.  So, I did the finals modifications appropriate
for the 2SC3133 - I have a feeling the eleflow parts more resemble the
2SC3133 anyway.  It seems to work OK.

### Finals oscillating issue

As noticed in the TS-450_HELP link below, the finals have a habit of
oscillating when operating on at least the 20m band.

I've done the following finals mods, based on both the service manual and an
eham post about this.

 * 220pF capacitors from finals transistors collector<->emitter.
 * 0.1uF capacitor from L14/L13 junction to ground.
 * 18 inch coax cable from finals output to filter board.

The post is here:

 * [https://www.eham.net/ehamforum/smf/index.php?topic=115234.0](https://www.eham.net/ehamforum/smf/index.php?topic=115234.0)

.. and a backup PDF:

 * [ts450-finals-oscillation.pdf](ts450-finals-oscillation.pdf)

So far so good? The 20m oscillation seems to have gone away.

## Interesting links

 * [https://www.qsl.net/wb4kdi/Kenwood/TS-450S/TS-450_HELP.html](https://www.qsl.net/wb4kdi/Kenwood/TS-450S/TS-450_HELP.html)
 * [https://www.qsl.net/wb4kdi/Kenwood/TS-450S/Service%20Bulletins/sb-1036.html](https://www.qsl.net/wb4kdi/Kenwood/TS-450S/Service%20Bulletins/sb-1036.html)
 * [https://www.qsl.net/wb4kdi/Kenwood/TS-450S/ts450fun.html](https://www.qsl.net/wb4kdi/Kenwood/TS-450S/ts450fun.html)
 * [https://www.qsl.net/bg4agr/data/mods/kenwood/ts450.htm](https://www.qsl.net/bg4agr/data/mods/kenwood/ts450.htm)

## PDFs

 * [TS-450S_TS-690S_serv.pdf](TS-450S_TS-690S_serv.pdf)
