---
layout: default
title: Monitor Detection on the SGI Indy (and likely Indigo2)
---

# Monitor Detection on the SGI Indy (and likely Indigo2)

## Overview

I've done a lot of digging into the monitor detection stuff on the
SGI Indy Newport Graphics.

Thanks to the people who made the MAME SGI emulator a thing because it meant
I could do bad tricks / hacks to boot the system with different configurations
and see what the hardware programmed.

## Monitor Detection

For both the Indy and Indigo2 the main monitor detection method is via
the 4 sense pins on the 13W3 connector.  This gives a monitor ID value
range from 0 to 15 inclusive.

Those pins are mapped to the 4 input pins on CMAP1 on the Newport XL
board.

A bunch of them default to the same resolution, and it looks like for
the other resolution/refresh rates they do seem to program in different
timing tables into the DAC and sometimes the VC2 chip.

In any case, after a whole bunch of weird digging, I have this list.

 * 0 - "default"
 * 1 - 1280x1024, 76Hz
 * 2 - 1280x1024, 76Hz
 * 3 - "default"
 * 4 - "default"
 * 5 - "default"
 * 6 - 1024x768, 70Hz
 * 7 - "default"
 * 8 - "default"
 * 9 - 1280x1024, 72Hz
 * 10 - 1280x1024, 60Hz
 * 11 - 1280x1024, 76Hz
 * 12 - 1280x1024, 60Hz
 * 13 - 1280x1024, 60Hz
 * 14 - "default"
 * 15 - "default"

The entries with "default" are a bit weird.

 * For the SGI Indy, they default to 1024x768, 60Hz.
 * For the SGI Indigo 2, they seem to default to 1280x1024, 60Hz.

Then the SGI Indy has an extra parameter in the PROM labeled monitor.

 * If I set it to H (setenv monitor H) then it uses 1280x1024, 60Hz
 * If I set it to S (setenv monitor S) then it uses 1280x1024, 76Hz.

The SGI Indigo 2 PROM didn't seem to recognise this environment parameter.

Then, I tried varying some of the board versions and I found that
with XL board revisions less than 4 the 1280x1024 76Hz monitor programming
became a lot more like the 72Hz programming.  I don't know why, maybe
there's some chipset issue?

In any case, if you have one of those 13w3 <-> VGA cables that lets you
set the monitor ID, now you know what the ID bits mean.

## Why's this useful?

Well, besides knowing what the monitor timings are, it turns out that
these are needed for accurately writing to the XMAP9 from the REX3 chip
via the DCB.  The XMAP9 runs at 1/2 the pixel clock, and the REX3 chip
runs at the 33MHz GIO bus clock.  So, unless the timing is configured
correctly the XMAP9 mode writes will not work and the wrong pixel / palette
configuration will be written to the hardware.

This is likely why the Xorg driver and maybe the Linux console driver
really only wanted to support 1280x1024 - the XMAP9 mode table programming
is just not reliable with the "fast" timing when the pixel clock is
slower.  I found this made 1024x768 60Hz operation on NetBSD
unpredictable until I fixed it (and a lot of other bugs.)

## What about the P/N 8200 universal 13W3 interface input cable?

What about it? Well it does expose those four monitor type bits, but
they're inverted. Ie, "on" means "0" into the monitor.  Also the bits
are in an odd order (bit 3, bit 0, bit 1, bit 2) so make sure you
read the manual before you program them!

## Monitor Output

It looks like at least for Newport graphics, the 13W3 has three kinds of
sync output:

 * Composite sync
 * H/V sync
 * Sync on Green

They're all available at the same time.

## What about Sync on Green?

It's now 2025 and finding monitors that handle Sync on Green correctly -
either extracting it from the green signal, or knowing how to offset
the green signal lower to match the Red/Blue signals so the image isn't
tinted Green! - is .. difficult.

However, the Sync on Green itself is actually controlled by the BT445 RAMDAC.

In IRIX this is controllable via the setmon command.  It looks like IRIX
6.5 documents how to control the sync output in the man page.

In Linux/NetBSD it doesn't look like it's currently exported, but it should
not be too hard to read/modify/write that single register - COMMAND REGISTER 1,
BIT 7 - clearing it disables Sync on Green.
