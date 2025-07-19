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
 * general coverage receive is an add-on (GC-10), with a spur at 8.83MHz
   (the IF stage frequency.)

## Notes about subsystems

(Ie, so I don't forget!)

### TX power control and ALC

The TX power control and ALC loop are split across the filter board and
the IF board and feed into the RF board.

The forward / reverse power on the filter board are both fed via
D6 -> VR1 -> D10 (reverse) and D7 -> VR2 -> D9 (forward) into IC1 (2/4),
which acts as a positive/buffer amplifier and generates a positive control
voltage representing how much to negatively influence the ALC / TX power
control loop.

The TX power meter is tapped off of D7, through R40 / D14 and eventually into
the positive side of IC1 (1/4). That acts as a positive gain amplifier,
out through VR5 -> D16 into the RFM (pin 1) on J4.  The RFM connector also
is fed the S meter signal from the RXM (pin 3) on J3.

The ALC signal is generated from two signals fed into a differential
amplifier IC 1 (3/4):

 * the negative input is fed from the the output of IC1 (2/4) which represents
   both the forward and reverse power values, and
 * the positive input is fed from the PCL (pin 4) line on J3, which comes
   from some fun logic to set a floor/ceiling for the control voltage from
   the RF power pot on the front panel.  It also has a thermistor (TH1)
   which I'm guessing is a positive coefficient thermistor whose resistance
   increases as the unit heats up, which will reduce the voltage presented
   on the positive input of IC1 (3/4).

Ok, so the PCL line is fed from the IF board, which is generated from the
PCV (1) and MIN (2) pins on J10, and those go to the RF power pot on the
front panel.  The MIN pin connects to the ground side of the pot and
controls the "minimum" voltage the pot is provided above ground.
The PCV signal feeds into a voltage divider (R139 / R136), through some
diode logic to make sure things go a certain way (D51/D54), and out to PCL.
The other diodes (D47 -> D57) and the transistors (Q37, Q38, Q39, Q40)
control when to provide which minimum and maximum PCL control voltages to
the filter board to feed the TX power control / ALC loop.

The G2 signal (TX gain) is generated from the PCL signal, through R141 to 8V
(via R141, 100K), D55 and Q40.  There's some transistor switching and voltage
dividing going on.  If SSB/FMB is high then Q40 will be turned on, lowering
the G2 voltage feed on the 8V side; I think this lets the PCL signal assert
more of G2.

G2 feeds into the RF board via G2 (pin 2) on J18.  It feeds a positive control
voltage to both the HF path (Q26) and 50MHz path (Q29).

Finally, ALC is fed into one of the inputs into Q42 on the IF board.
That's the transmit IF (TIF) final stage amplifier and as an active
ALC voltage is negative, it will reduce the gain of that final IF stage
before the TIF signal is handed to the RF board for modulation.

Note there's no ALC voltage / control loop feeding into the RF board.
The RF board is only looking at the G2 voltage (TX gain) derived
from the above logic and RF power control (PCL) generated from the
front panel.

## Weirdnesses / Errors

### 50MHz TX bandpass filter

The 50MHz TX bandpass filter (Section 3, TX calibration) instructions
aren't as clear as they should be.  The 50 MHz TX BPF is actually
T37 -> T42 (ie, T37, T38, T39, T40, T41, T42) and TC3/TC2 for max
power.

The instructions just say TC3/2, then T37 / 42, and they don't make
it clear it's the whole range between T37 -> T42.

### Calibrating TX power

If your radio (like mine) was very broken, the alignment instructions
may just not be enough to get the radio into good working order.
After a lot of reverse engineering I finally figured out what's going on.

 * The Max forward power is first set at 15W, and then tuned for 10W of
   voice output
 * Then CW (and hopefully FM; still figuring that out) are limited to
   10W using a separate pot, rather than also using ALC.
 * That's limited via Q39/VR9 via a bunch of diode and transistor logic.
   It confused the heck out of me for the longest time.
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
   crossed on the PCB; the silk screen and layout is wrong! (TODO - when
   I wrote this, am I referring to R43,R44,R45,R46 before the Q5/Q6
   mixing transistors?)

 * (TODO) check if the ALC/SM/FSM lines on the IF section (see connectors 21
   and 20 on the IF board schematic, right hand side of said schematic)
   are joined; joining ALC there into SM (RX signal meter) and FSM (FM
   signal meter, from the FM-430 board) doesn't make any sense.  I think
   the schematic is wrong!

## Revisions

(TBD)

## Common Issues

(TBD)

## PDFs

The service and user manuals should be used together to figure out
what's going on.

 * [ts670_user.pdf](ts670_user.pdf)
 * [ts670_service.pdf](ts670_service.pdf)
 * [ts-670txmoddiag.pdf](ts-670txmoddiag.pdf)
