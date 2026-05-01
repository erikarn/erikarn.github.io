---
layout: default
title: IRIX install notes
---

# IRIX installation notes

Before I forget how to install IRIX _again_, I think I should just
write down what works and what doesn't and what I need to figure out.

## Software Locations

 * [https://jrra.zone/sgi/](https://jrra.zone/sgi/) - Great collection of
   ISO images / etc for various IRIX bits

## Zuluscsi and CD-ROM emulation

ZuluSCSI devices can emulate CD-ROMs and hot plug.  However things are a
little delicate (as of May 2026.)

 * You'll need a disk in the ZuluSCSI for it to claim a LUN and emulate
   a device.  Yes, this means you need to boot with a CD-ROM image on a
   flash disk at the right device ID.

 * I think there's bugs in ZuluSCSI's handling of sync/async mode transitions.
   It shows up when emulating CD-ROMs on an Indy / Indigo2, but not on
   the O2.  My guess is that the driver / chipset handle things differently.

   Notably when you hotplug a CD-ROM, it resets its own state back to async.
   When it reboots, it resets back to async, etc.  Ideally the transfer
   setup would fail, there'd be a bus reset and some error handling on the
   SGI host controller / driver side that signals to the device that it
   needs to go back to async, and the ZuluSCSI would reset its configuration
   back to async to try again. This doesn't happen. So, put this in the
   config file of _each_ CD-ROM you're emulating.

```
[SCSI]

EnableUnitAttention = 1
MaxSyncSpeed = 0
```

 * The same holds for the hard drive emulation.  I've seen things get wedged
   and require a power cycle to reset both the SGI side controller and ZuluSCSI
   state.  My guess is again the sync/async config is mismatched.  Resetting
   the Indy / Indigo2 isn't enough; that doesn't reset the ZuluSCSI state.

## IRIX 6.5.22

### Base Installation Images

The following images are needed for install:

 * IRIX 6.5.22 Installation Tools and Overlays (1 of 3) (812-0818-022)
 * IRIX 6.5.22 Overlays (2 of 3) (812-0819-022)
 * IRIX 6.5.22 Overlays (3 of 3) (812-0817-022)
 * IRIX 6.5 Foundation 1 (812-0759-002)
 * IRIX 6.5 Foundation 2 (812-0760-002)
 * IRIX 6.5 Applications November 2003 (812-0877-022)
 * ONC3/NFS Version 3 for IRIX 6.2, 6.3, 6.4 and 6.5 (812-0774-002)

### Partitioning Drive

 * Insert Overlay 1, boot into maintenance mode
 * Assuming the CDROM is on unit 4 - "dksc(0,4,8)/sashARCS" for
   Indy (and O2?) and "dksc(0,4,8)/sash64" (for I2 / R10000)
 * Once in sash, you'll need to run fx to partition the drive -
   "dksc(0,4,7)/stand/fx.ARCS" for Indy, "dksc(0,4,7)/stand/fx.64" for
   Indigo 2 R10000.
 * (TBD) - remember the label, all, .. , sync .. to write it all out.

### Booting Installation

 * Insert Overlay 1, click the install OS option on the boot screen
 * It'll go through a whole bunch of boot stuff, you'll likely need
   to create an XFS filesystem, block size, etc.
 * To install, select "from", then "/CDROM/dist", then read the file.
 * Select "feature stream", because why not.
 * Insert each of the other disks above in that order.  Each of them
   should install "/CDROM/dist" except NFS, which comes from
   "/CDROM/dist/dist6.5".
 * then "done"
 * To finish installation, do:

```
keep *
install standard
install prereqs
go
```

### Known conflicts

 * Mozilla / java - just bypass it, that's fine
 * (TBD - there's a couple other harmless ones)

## Compiler Toolchain

This requires the Development Foundation, Libraries and Compiler.
It also requires that you re-add all of the above distributions
so the package manager can figure out dependencies and install
whatever other bits are needed.

### Required Media

 * MIPSpro C compiler 7.4 (812-0707-010)
 * MIPSpro C++ compiler 7.4 (812-0400-010)
 * IRIX Development Foundation 1.3 (812-0757-004)
 * IRIX 6.5 Development Libraries (Feb 2002) (812-0766-003)

### Installation

Note I have only done an install with the C compiler.
I have not yet done one with the C++ compiler as well.

 * Begin with Development Foundation 1.3 - run inst or the swmgr
   GUI application.  Install from that (/CDROM/dist)
 * Add the others - MIPSPro C compiler, Development Libraries - (/CDROM/dist)
 * Add 6.5.22 Overlay 1, 2 and 3 - (/CDROM/dist)
 * Add 6.5 Foundation 1 and 2 - (/CDROM/dist)

To do the installation:

```
keep *
install installable
go
```

This will take a long time.

### Conflicts

There were some conflicts - likely stuff I could solve with adding another
disk image or three.  It wasn't anything that prevented the toolchain and
libraries from being installed.  I'll need to do this again on a fresh
install and figure out / document exactly what's missing.

### Licensing

(TBD - it's all flexlm and SGI won't ever issue licences again, sigh)




