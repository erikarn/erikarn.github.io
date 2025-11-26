---
layout: default
title: SGI Indy
---

# The Silicon Graphics / SGI Indy

(TBD)

## Overview

(TBD)

## Indy Report

(TBD)

This is originally from https://www.employees.org/~drich/SGI/SiliconSurf/products/Indy/Indy_Report.book.html .

## Chipset Documentation

Here's all of the chipset documentation I can find about the SGI Indy hardware.
It turns out there was an effort to get this documentation opened up as
part of the Linux MIPS project circa 2000.  A huge shout out and thank
you to everyone involved.

### Base Platform

 * [datasheets/sgi_indy_dmux1.pdf](datasheets/sgi_indy_dmux1.pdf) - The
   MUX gate array which connects the CPU bus to the internal memory and
   GIO64 bus.  This handles the memory interleaving and bus timing differences
   between GIO64, RAM and CPU busses.

 * [datasheets/sgi_indy_mc.pdf](datasheets/sgi_indy_mc.pdf) - The memory
   controller ASIC which implements the data flow between CPU, GIO and memory.
   It implements memory remapping (eg for EISA cards for Indigo 2 systems),
   bus arbitration grant configuration, and the virtual DMA engine used
   for accelerating graphics engine work.  (See the VDMA pdf for
   further information.)

 * [datasheets/sgi_indy_gio64.pdf](datasheets/sgi_indy_gio64.pdf) - The
   description of the GIO32/GIO64 bus.

 * [datasheets/sgi_indy_hpc3.pdf](datasheets/sgi_indy_hpc3.pdf) - The HPC3
   ASIC is a peripheral controller implementing a GIO32 bus interface,
   multiple DMA channels and then specific chip bus awareness for
   SCSI, ethernet and audio functions.

 * [datasheets/sgi_indy_ioc.pdf](datasheets/sgi_indy_ioc.pdf) - the IOC ASIC
   is a combination of peripheral ICs such as the keyboard/mouse controller
   and serial UARTs.

 * [datasheets/sgi_indy_vdma.pdf](datasheets/sgi_indy_vdma.pdf) - the VDMA
   datasheet describes the virtual DMA implementation used to accelerate
   access between user processes and the graphics subsystem.
   (Yes, its virtualised - as in, it uses the system page tables.
   It's a fun read.)

### VINO (video input no output)

This is the video input ASIC and timing diagrams.  This handles
the composite video input and IndyCam data input and DMAing it
into memory.

 * [datasheets/sgi_indy_vino.pdf](datasheets/sgi_indy_vino.pdf) - the top
   level datasheet

 * [datasheets/sgi_indy_vino.01.pdf](datasheets/sgi_indy_vino.01.pdf)
 * [datasheets/sgi_indy_vino.02.pdf](datasheets/sgi_indy_vino.02.pdf)
 * [datasheets/sgi_indy_vino.03.pdf](datasheets/sgi_indy_vino.03.pdf)
 * [datasheets/sgi_indy_vino.04.pdf](datasheets/sgi_indy_vino.04.pdf)
 * [datasheets/sgi_indy_vino.05.pdf](datasheets/sgi_indy_vino.05.pdf)
 * [datasheets/sgi_indy_vino.06.pdf](datasheets/sgi_indy_vino.06.pdf)


### Newport Graphics

 * [datasheets/sgi_indy_rex3.pdf](datasheets/sgi_indy_rex3.pdf) - the REX3
   Rendering Engine and top level description of the Newport Graphics Engine.

 * [datasheets/sgi_indy_rb2.pdf](datasheets/sgi_indy_rb2.pdf) - the RAM
   buffer translating between the pixel format / operations between the REX3
   and the VRAM ICs.  (For example the actual bitblt operations on memory
   are performed here.)

 * [datasheets/sgi_indy_ro1.pdf](datasheets/sgi_indy_ro1.pdf) - the
   ReOrganiser ASIC handles pixel overlay and scale/rotating data
   between the VRAM ICs and the XMAP3.

 * [datasheets/sgi_indy_vc2.pdf](datasheets/sgi_indy_vc2.pdf) - the
   VC2 ASIC handles the video timing generation, cursor generation and
   pixel format generation on a scanline+offset basis to inform the XMAP2
   ASICs how to interpret framebuffer data.

 * [datasheets/sgi_indy_xmap9.pdf](datasheets/sgi_indy_xmap9.pdf) - The
   XMAP9 ASICs which takes the framebuffer and video timing information,
   determines how to display it, and shuffles it over to the CMAP for
   colour table selection.

 * [datasheets/MS622424.PDF](datasheets/MS622424.PDF) - the MS622424.PDF (CMAP)
   chipset which takes the 24 bit RGB / 8 or 12 bit colour index map data
   and RGB colourmap selector and maps that to the RAMDAC for output.

## Miscellaneous

