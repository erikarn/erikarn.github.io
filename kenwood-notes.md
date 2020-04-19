---
layout: default
title: Kenwood Notes
---

# A note on alignment signal levels

(From w6nl)

Clif Holland of Avvid, a respected repairer of Kenwood radios, emailed me to note that the
Japanese specification for the standard signal generator used in alignment is different from the US
signal generator calibration. The 930 service manual refers to signal levels in dBuV, so I had
assumed 0dBuV was 1 uV and 40dBuV was 100uV.
But not so. Clif is right and I'm off by 6 dB. I checked it out, and although I see no mention of
the issue in the TS-930 or TS-950 manuals, I found a table in the TS-850 service manual, pg. 96,
that confirms this. It has two columns:

| Japanese "SG" | American "SG" |
| ------ | ------ |
| -6dB | 0.25uV |
| 0dB | 0.5uV |
| 6dB | 1uV... etc. |
| 40dB | 50uV... etc. |

Apparently the JA generator defines output in terms of open circuit voltage rather than voltage into
a matched load. This 6 dB difference affects the alignment of the RF PIN attenuator start point as
well as the S-meter settings for S1 and S9. Since the manual specs are ±4 dB anyway the
difference will be mighty small except for a more active S-meter.
