---
layout: default
title: TS-2000 notes
---

# Kenwood TS-2000

This is where I'm keeping notes about my experiences running a TS-2000
for well, everything it does.

## Serial numbers

Kenwood serial numbers issued from 1999 come in 2 formats. The format used from 1999 until approximately August 2008 is numeric:

 * First digit is the year code, add 1998 to get year. If first digit
   is 0 add 10 to 1998. Next 2 digits are the month code starting with
   01 which is April (beginning of Japanese tax year).
   Months 10,11 & 12 will be Jan, Feb, Mar of the next year so add 1 to the year.
 
The format adopted from approximately August 2008 is alphanumeric:

* The first character is the decade A=2000, B=2010, C=2020.
  The second character would be the year of the decade from 0 to 9.
  The third character is the month. 1-Jan, 2-Feb, 3-Mar, ...., 9-Sep, A-Oct, B-Nov, C-Dec.

Some examples:

 * 301xxxxx = April 2001
 * 311xxxxx = February 2002 
 * 313xxxxx = April 2002 
 * 810xxxxx = January 2007 - Beginning of defective filters
 * 909xxxxx = December 2007 
 * 910xxxxx = January 2008 
 * 001xxxxx = April 2008 
 * 005xxxxx = August 2008
 * A88xxxx = August 2008
 * A8Bxxxx = November 2008
 * A91xxxx = January 2009
 * A98xxxx = August 2009 - End of defective filters
 * A9Cxxxx = December 2009 - Beginning of MOSFET finals
 * B02xxxx = February 2010

## HF - RX sensitivity issues

There's been a lot of discussion around the TS-2000 RX sensitivity compared to other radios.
Here's at least one piece of research into what may be going on.

 * <https://forums.qrz.com/index.php?threads/ts-2000-receiver-sensitivity-mystery-solved.466335/>

And a local copy of the above page:

 * [ts-2000-rx-sensitivity-hf.pdf](ts-2000-rx-sensitivity-hf.pdf)

There are other threads about S-meter calibration being not quite equivalent
to other rigs and tweaking that; that's less interesting/important.

## VHF/UHF - RX sensitivity issues

There's also been a lot of discussion around TS-2000 RX sensitivity on VHF/UHF.

 * <http://www.pa3guo.com/ts2000_mod_ak2f.pdf>
 * <http://www.pa3guo.com/ts2000_rx.html>

And local copies of the above pages:

 * [ts2000_mod_ak2f.pdf](ts2000_mod_ak2f.pdf)
 * [ts2000_mod_uu2jj.pdf](ts2000_mod_uu2jj.pdf)

This was apparently fixed in later TS-2000 releases (TODO: which year?)

## Filter board failure - attenuated signals, static crashes

Another fun one - failure in a filter board component causing multiple filter
diodes to be pulled down, causing noise.

* [TS2000_20_to_30db_Attenuated_Receive_Signals.pdf](TS2000_20_to_30db_Attenuated_Receive_Signals.pdf)

## Filter failures

There was also an issue with how some ceramic filters were fitted.
Kenwood didn't use a DC blocking capacitor on one side of the filter
and they eventually fail.

Many TS-2000's (Including the X model) in the serial number range 810xxxx - A98xxxx
(dates January 2007 - August 2009) were produced with defective filters.

* [TS-2000-receiver-crackling-noise-problem-Repair-procedure.pdf](TS-2000-receiver-crackling-noise-problem-Repair-procedure.pdf)

## Finals replacements

There were issues with the TS-2000 finals.

They were initially BJT finals like previous HF rigs, but they were migrated
to MOSFETS around 2008.  Note that it's not possible to retrofit MOSFET finals
to an older rig as other board changes have occured elsewhere.

## Rig control

You can't control TX of the rig through CAT control if you want audio to come
in through the ACC3 jack.  There's a specific PTT line that is "use this audio
input line and mute the MIC" which you have to use.


## Documentation

* [ts2000_service_manual.pdf](ts2000_service_manual.pdf)
* [TS-2000-Owner-Manual.PDF](TS-2000-Owner-Manual.PDF)
