---
layout: default
title: Kenwood 13-pin ACC jack pinout
---

# Variations on the 13-pin ACC jack pinout

There are a handful of weird variations in the 13 pin accessory jack on
Kenwood radios.

| Radio | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 |
| ----- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---- | ---- | ---- | ---- |
| TS-140 | NC | NC | Receiver output / 300mV / 4.7k | Output ground | Squelch control | NC | NC | Ground | Transmit PTT - MIC mute | NC | Data Input / 10mV | Input ground | PTT (not MIC mute) |
| TS-440 | NC | NC | Data output / 300mV / 4.7k | Output ground | NC | NC | NC | Ground | MIC mute | NC | Data input - docs say 500mV or less; end up needing 1v PtP to see full SSB modulation | Input ground | PTT |
| TS-450 | NC | RTTY input | Receiver output / 300mV / 4.7k | Receiver output ground | Squelch control | NC | NC | Ground | Transmit PTT - MIC mute | NC | Mic audio input | Input Ground (via 0.001uF cap) | PTT (not MIC mute) |
| TS-680 | NC | NC | Receiver output / 300mV / 4.7k | Output ground | Squelch control | NC | NC | Ground | Transmit PTT - MIC mute | NC | Data Input / 10mV | Input ground | PTT (not MIC mute) |
| TS-690 | NC | RTTY input | Receiver output / 300mV / 4.7k | Receiver output ground | Squelch control | NC | NC | Ground | Transmit PTT - MIC mute | NC | Mic audio input | Input Ground (via 0.001uF cap)| PTT (not MIC mute) |
| TS-711 | NC | NC | Data out / 300mV+ at 4.7k | Data GND | NC | NC | NC | NC | Mic Mute | NC | Data Input / 500mV | Data Input GND | PTT |
| TS-811 | NC | NC | Data out / 300mV+ at 4.7k | Data GND | NC | NC | NC | NC | Mic Mute | NC | Data Input / 500mV | Data Input GND | PTT |
| TS-2000 | Sub-receiver output / 10k | RTTY input | Main receiver output / 10k | GND | Main receiver squelch control | NC | Sub-receiver squelch control | GND | Transciever PTT - MIC mute | NC | Mic audio input | GND | PTT (not MIC mute) |

# Differences

 * Pin 13 is PTT with the front MIC not muted - eg for a foot pedal.
 * Some radios (TS-440, TS-711, TS-811) have a separate pin (9) that doesn't PTT - it just mutes the MIC
 * Other radios (TS-690, TS-2000) use pin 9 for PTT + Mic mute

# Notes

 * The TS-440 needs a comparitively obscene amount of audio input to work compared to the other radios. I've had to feed it more than 1v ptp to get it to do the right thing. This requires the "higher audio level" jumper on the Signalink USB to work right.
 * TS-2000 could do with some more description as to what each does!
 * The TS-450 / TS-690 input ground (pin 12) isn't ground ground; it's actually through a 0.001uF capacitor.  I'm assuming they're trying to do a bit of ground loop avoidance here but still, seems a bit weird.
 * The TS-450 / TS-690 input levels by default are super sensitive and any RF leaking in via poor shielding / choking will distort audio. A common fix is to adjust the PKD pot (VR13) on the IF board to make it require more audio drive.
