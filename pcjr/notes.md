---
layout: default
title: IBM PCjr Notes
---

# IBM PCjr notes

Here are some notes on my work restoring and working with
an old IBM PCjr.

 * [IBM PCjr Colorpaint](colorpaint)

## Keyboard issues

Some programs don't do well with the IBM PCjr keyboard and how it
handles / signals key presses via INT 0x9.  This TSR/SYS driver
will correctly compensate for this.  Without this the EDIT/QBASIC
programs with later DOS versions don't run correctly, and apparently
neither does QUICKBASIC.

 * [INT9JR.zip](INT9JR.zip) - INT9 workaround TSR and SYS driver

