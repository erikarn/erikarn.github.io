---
layout: default
title: Commodore Amiga - Gary (MOS 5719)
---

# Commodore Amiga Gary (MOS 5719)

Gary is a custom logic IC which implements address decoding, default
bus timing (AS/DTACK) and some floppy drive logic.

# Gary versions

## Toshiba

There are apparently bugs in the earliest Toshiba Gary ICs.
These start with TC17xxxxAP and have 87 date codes.

A new post from David Haynie in 1993 (link unknown unfortunately,
they didn't post the article ID or the newsgroup name):

{{{
That's the Toshiba version.  The MOS version speeds up access to ROM and the
"I/O" space of Zorro II (eg, it fixes a bug in the original Toshiba-foundried
design).  Along with the Gary change, you'll probably need to add a couple of
pullup resistors to the A2000 motherboard for optimal performance.  When they
did the MOS version, they changed a few active outputs to open-drain, so speed
critical outputs (pretty much just VPA* and DTACK* as I recall, but it's been
years) need more pull to +5V with the MOS part, since the chip doesn't provide
it.
}}}

## MOS

The MOS 5719 chips are ... less buggy?  Need to go figure that out
and document things here.

## Documentation

(TBD)

## Open Source Projects

(TBD)

