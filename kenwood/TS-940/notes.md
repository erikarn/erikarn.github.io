---
layout: default
title: TS-940S notes
---

# Kenwood TS-940S

Yes, I bought a TS-940 and have been trying to diagnose hilarity.

## Marker

The calibration marker circuit is .. sub-optimal, and picks up
a lot of stray, random noise throughout the radio.

There's a very nice write-up about this, applicable to at least the
TS-930 and TS-940:

 * <https://k6iokforum.com/community/need-help/ts-930s-random-noise-with-the-antenna-disconnected-this-is-a-long-journey/>
 * [k6iok - ts940 marker noise.pdf](k6iok - ts940 marker noise.pdf) - a local cache

## Power supply issues

The TS-940 power supply is not the best designed and it'll go pop, taking
your hard-to-find driver transistors with it. (k6iok)[https://k6iok.com/] has
replacement power supply bits to drop in and it works!

## My issues!

K6IOK installed his replacement PSU in my TS-940 and it runs like a charm!
The radio runs much cooler and it's much lighter.  However, I've been having
some RF issues which I bet are due to this rig.

 * I think the buck/boost board is a bit noisy and it's being picked up
   by the wiring looms, ending up on the marker connector on the RF board.
 * Adding three clip-on ferrites reduced noise on 18MHz from S9+10 down to
   about S5.  So there's something weird going on there.
 * Removing the MKR connector (J2) from the RF board fixed the rest of
   the IMD showing up on 160/80m and the noise floor on 18MHz is ~ S0.k

## PLL repair / recalibration

 * Yes this has sony bond related goop on the VCOs on the RF board and
   on the PLL board.

 * From Cliff Holland, re VCO-0 on PLL board (the HET / 36.22MHz Oscillator):

 "Melt the wax out of VCO-0 (the one next to IC19). This is to allow easier
  resoldering of the components. Turn the board over and remove the old
  solder and resolder all of the parts that are inside the enclosure.
  Pay close attention to the leads on L35. Clean any potting compound on the
  bottom of the board especially under the cap tacked on the bottom of the
  board. Once clean and resoldered install in radio and adjust the coil for
  7.5v at the TP. If stable and operating then you may repot if desired
  but not necessary."

  For reference: [https://forums.qrz.com/index.php?threads/ts-940s.448583/](https://forums.qrz.com/index.php?threads/ts-940s.448583/)

## Dry / Wrong Electrolytic Capacitors

This radio runs hot. Very hot. I found two fun issues here:

 * A lot of the caps are dry/leaked after all these years.  So yes, you should
   replace them.
 * I found some capacitors that were close to the operating voltage or wildly
   wrongly specified, which lead to them leaking.
 * The PLL board has a bunch of electrolytic capacitors within a volt
   or two of the rail voltage; I replaced them all with 25 or 50v rated
   capacitors.
 * My control board had incorrect rated capacitors on the linear regulators!
   (Like, a 12v cap on an 18v input rail.)  It was either a bad repair or
   a factory messup.  In any case, this caused all kinds of PLL stability
   issues so I just pulled all the large/power rail capacitors off and
   replaced them.

There are around 190 electrolytic capacitors to replace in this radio and
it's worthwhile doing it.


## PDFs

 * [508_Kenwood_TS-940S_Fixes_Reviews.pdf](508_Kenwood_TS-940S_Fixes_Reviews.pdf)
 * [ts940_brochure.pdf](ts940_brochure.pdf)
 * [KENWOOD--TS-940-Serv-Manual.pdf](KENWOOD--TS-940-Serv-Manual.pdf)
 * [ts940s_manual.pdf](ts940s_manual.pdf)
 * [TS-940S Alignment Instructions Rev3.pdf](TS-940S Alignment Instructions Rev3.pdf)
 * [ts940_options_for_repairing_your_kenwood_power_amplifier_2.pdf](ts940_options_for_repairing_your_kenwood_power_amplifier_2.pdf)
