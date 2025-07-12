---
layout: default
title: TS-711 / TS-811 notes
---

# Kenwood TS-711 (144MHz), TS-811 (430MHz)

These are all mode (well, CW, USB, LSB, FM, notably no AM) radios which
will, when in good shape, happily put out 25W.

## Overview

(TBD)


## Common Failures

(TBD)

### Regulator Failure

(TBD)

### Rotary Encoder / Detent latch failure

(TBD)

## Radio differences

### Model number / PCB differences

You need to pay special attention in the service manual for the model
number differences for each schematic/PCB layout.  There are differences
between the TS-711 / TS-811 boards (eg the AF boards, IF boards, etc
are slightly different) and within the models themselves (eg the TS-711
europe / US variants have differences.)  The PCBs themselves are the
same.

### TS-811A vs TS-811E

The European TS-811E only supports 430 to 440MHz.  The HET unit which is
present on the TS-811 but not on the TS-711 handles further mixing into
the 430/440MHz band.

However, the TS-811E HET board only handles 430-440MHz and uses the 4FH
(4 * PLL) input, BUT the TS-811A HET board has a second path with its own
oscillator for 440-450MHz.

## Interesting work

### Trying to convert a TS-811E to a TS-811A

This requires a few things which need to be documented / designed.

 * Diode changes on the control board to unlock the extra bands
 * RX and TX path filter realignment to work across 430-450MHz instead
   of just 430-440MHz.
 * A replacement HET board (the "K" variant) with the extra 440-450MHz
   band.

## Common Issues

(TBD)

## PDFs

 * [KENWOOD--TS-711-811-serv-Manual.pdf](KENWOOD--TS-711-811-serv-Manual.pdf)
 * [ts811be_manual.pdf](ts811be_manual.pdf)
 * [ts711a.pdf](ts711a.pdf)

