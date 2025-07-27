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

## Service Manual Errata

### Voltage Adjustment

 * The service manual (the first calibration section) lists the 8V rail as
   being between 8.55 and 9.45V.  Considering it's fed from a 7808 regulator,
   it definitely should be 8V.

### Control Adjustment

 * The internet scan of the service manual, section 6, has different
   frequencies for each of the voltage adjustments.
 * 7.499MHz should be 7.990MHz
 * 6.600MHz should be 6.660MHz
 * 24.790MHz is OK
 * 21.000MHz is OK
 * 24.999MHz should be 24.990MHz
 * 24.800MHz is OK
 * 53.999MHz is 53.990MHz
 * 50.000MHz is OK

### TX Adjustment

#### Base Current

You absolutely should verify the finals current by desoldering the
two links on the finals board (A and B, which are unlabeled, sigh)
and measure the current between them.  I destroyed one of my driver
transistors because the circuit didn't actually calibrate down to
0mA bias current.

The A and B connectors aren't labelled on the board or drawn on the
service manual.  It's similar to the TS-660 finals board though (and
that service manual does have pictures) - the "A" jumper is the one
closest to VR1, and the "B" jumper is closest to VR2.

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

### Calibrating the RX and TX voltages first!

 * Don't skip the "Voltage Adjustment" steps before you calibrate
   TX and RX.  The TXB signal is used as the TX bias for the IF/RF
   paths, if it's not at 8.8v then you'll find balancing the mixers
   to not have spurs to be impossible.  Similarly, the RXB level
   gates the RX paths, and RFG (RF gain) drives the RF receive paths.
   You'll find calibrating the RX paths (including RX bandpass and mixers)
   impossible if this isn't set right.

### Calibrating TX/RX bandpass filters

 * The 50MHz path has separate TX and RX filtering
 * The 7MHz, 21MHz, 28/29MHz bands have one set of filters which are
   shared for both TX and RX
 * So, they need to be calibrated well for both RX sensitivity and
   TX level.
 * The RX paths they ask you to poke at aren't at DC ground level,
   so you absolutely need DC blocks on the input and output of your VNA.
 * The RX path they ask you to calibrate for RX BPFs includes RX
   amplifiers, so you may need attenuators at both the input and output
   of your VNA to avoid overload/damage.  I use 20dB attenuators - one on
   both input and output.

If there are issues in the HF RX input / bandpass filter path, then you're
going to have problems calibrating the TX side.

Note that the calibration instructions actually have you check the
RX path including the 50MHz and HF RX filters, but before the IF
mixer. The cathode on D3 is connected to D15 and D16 cathodes, and
those three diodes are switch/pin diodes switching in the "right"
RX path into the 8.83MHz trap before the IF mixer pair (T20 and Q5/Q6.)

This means:

 * the signal level goes through a bunch of stages that aren't just
   the filters;
 * those stages may have problems, heh;
 * it includes the RX AGC loop; and
 * includes RFG (RF gain) level (hence why you need to calibrate that
   voltage first!)

Instead, I did something a bit sneakier:

 * I attached a 20dB attenuator and DC block on both the input and output
   of my NanoVNA (so the signal level wouldn't overwhelm anything);
 * I ensured that the NanoVNA saw a mostly flat -40dB signal when I joined
   CH0 -> CH1 (ie, measuring through, not reflected);

Then to test a few things:

 * I injected the signal at the cathode of D1 (which is just before
   the first filter stage, L2/L3/L4/C2/C3/C4); and checked it at the cathode
   of D2/D4 (which is just afterwards);
 * and did that with the radio switched off.

That verifies that you're getting a nice flat -40dB passthrough and you're
not seeing anything odd going on (eg D2/D4 are shorted, which lead to my
-10dB behaviour.)

Then:

 * Inject it at J2 (RAT/GND); check it on D2/D4 cathode, with the radio off.

That verifies that there's nothing weird on the input side (dirty attenuation
relay, broken T1, something wrong with T2/T3 trap, etc, etc.)

Then:

* Inject it at the antenna input, and again it should be nice and
  flat -40dB passhthrough.  Again, with the radio off.

If you have a problem at this point then it is likely on the filter board,
the cables between the filter board to the RF board, or the SO239 connector
and cabling on the back of the unit.  My TS-670 had corroded relays because
they weren't the sealed units.  Sigh.

Once that's done, you've eliminated anything weird going on early in the
receive path which could cause RX attenuation, and you can work on the RX
BPF calibration as per the manual.

On my NanoVNA with DC block / 20dB attenuators on both input and output,
each bandpass filter shows up at around -16 to -20dB.  Yes, because of
the RX amplifier stages involved, you're going to get a decent amount of
gain showing up and if you didn't have the 20dB attenuator on the input
into the NanoVNA you'd quickly overload the NanoVNA receiver and maybe
even damage it.

## Known Schematic/PCB Differences

 * I've found that C61 and R31 on the control board are inverted on
   the PCB - C61 goes to the junction of L28/R32, then the ground of C61
   goes to R31, that then goes to ground

 * The two pairs of resistors in the TX mix on the RF board are indeed
   crossed on the PCB; the silk screen and layout is wrong!
 * I am referring to R43,R44,R45,R46 before the Q5/Q6 mixing transistors!

 * The ALC/SM/FSM lines on the IF section (see connectors 21
   and 20 on the IF board schematic, right hand side of said schematic)
   are joined; joining ALC there into SM (RX signal meter) and FSM (FM
   signal meter, from the FM-430 board) doesn't make any sense.
   The schematic is wrong! They are NOT joined there.

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
