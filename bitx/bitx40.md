---
layout: default
title: Bitx40 notes / modifications
---

# Unsorted notes

 * Occasional reports of R141 (10 ohm resistor, emitter of power driver) burning up.
   Replace it with something large (1/2 watt?)

 * Q13 (2n3904) - replace with a normal one, rather than SMT

 * https://ubitx.net/2018/01/30/bitx40-essential-mods/

 * D7 / C130 - should be across the coil of K1 (like D8/C164 are for K2)

 * add back-to-back 1n1418 between pin 12 of K1 and ground - provide a path
   to ground for input RF spikes

 * Add 100pF capacitor across L7 (output filter) - reduce output harmonics

 * Improved bitx40 firmware, even for unmodified radios: https://github.com/amunters/

 * Don't bother with the multi-turn pot for the VFO!

 * Mic gain: http://smallwonderqrp.blogspot.com/2017/11/

 * change R123 to 10 ohms and R126 to 4.7K - this increases gain for an electret
   microphone.
 * Instead, replacing R63 with a zero ohm resistor and 10K pot at mic input should
   allow to work with a dynamic microphone.  Maybe reduce R64 to 470 ohms for some
   more gain but be careful of clipping!

