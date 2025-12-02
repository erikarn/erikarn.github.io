---
layout: default
title: SGI Indy
---

# The Silicon Graphics / SGI Indy

(TBD)

## Overview

(TBD)

## Indy Report

This is originally from https://www.employees.org/~drich/SGI/SiliconSurf/products/Indy/Indy_Report.book.html .

It contains a lot of useful information and architecture diagrams about
the Indy.

### The chapters

 * [IndyReport/indy_report_toc.pdf](IndyReport/indy_report_toc.pdf) - TOC

 * [IndyReport/Indy_Report.ch1.pdf](IndyReport/Indy_Report.ch1.pdf) - Overview

 * [IndyReport/Indy_Report.ch2.pdf](IndyReport/Indy_Report.ch2.pdf) - Configurations

 * [IndyReport/Indy_Report.ch3.pdf](IndyReport/Indy_Report.ch3.pdf) - System Boards

 * [IndyReport/Indy_Report.ch4.pdf](IndyReport/Indy_Report.ch4.pdf) - XL / Newport Graphics

 * [IndyReport/Indy_Report.ch5.pdf](IndyReport/Indy_Report.ch5.pdf) - XZ / Express Graphics

 * [IndyReport/Indy_Report.ch6.pdf](IndyReport/Indy_Report.ch6.pdf) - Video

 * [IndyReport/Indy_Report.ch7.pdf](IndyReport/Indy_Report.ch7.pdf) - Software Environment

### The diagrams


 * [IndyReport/Indyreport_fig1.pdf](IndyReport/Indyreport_fig1.pdf)
 * [IndyReport/Indyreport_fig2.pdf](IndyReport/Indyreport_fig2.pdf)
 * [IndyReport/Indyreport_fig3.pdf](IndyReport/Indyreport_fig3.pdf)
 * [IndyReport/Indyreport_fig4.pdf](IndyReport/Indyreport_fig4.pdf)
 * [IndyReport/Indyreport_fig5.pdf](IndyReport/Indyreport_fig5.pdf)
 * [IndyReport/Indyreport_fig6.pdf](IndyReport/Indyreport_fig6.pdf)
 * [IndyReport/Indyreport_fig7.pdf](IndyReport/Indyreport_fig7.pdf)
 * [IndyReport/Indyreport_fig8.pdf](IndyReport/Indyreport_fig8.pdf)
 * [IndyReport/Indyreport_fig9.pdf](IndyReport/Indyreport_fig9.pdf)
 * [IndyReport/Indyreport_fig10.pdf](IndyReport/Indyreport_fig10.pdf)
 * [IndyReport/Indyreport_fig11.pdf](IndyReport/Indyreport_fig11.pdf)
 * [IndyReport/Indyreport_fig12.pdf](IndyReport/Indyreport_fig12.pdf)
 * [IndyReport/Indyreport_fig13.pdf](IndyReport/Indyreport_fig13.pdf)
 * [IndyReport/Indyreport_fig16.pdf](IndyReport/Indyreport_fig16.pdf)

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

 * [datasheets/bt445_ramdac.pdf](datasheets/bt445_ramdac.pdf) - the BT445
   RAMDAC which handles RGB DAC output, final stage gamma correction,
   overlay/cursor colour support and importantly the Pixel Clock generation
   used by the rest of the Newport ASICs.

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

### Monitor Detection and Programming

 * [monitor_detection](monitor_detection) - notes on how the SGI Indy and
   Indigo 2 firmware detects the monitor and programs in various bits and
   pieces.

## Miscellaneous

