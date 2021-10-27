---
layout: default
title: IBM PCjr Colorpaint
---

# IBM PCjr Colorpaint notes

 * [TBD] I should go upload a 64k and 2x32k image here
 * It does some initial probing to see if there's a disk controller!
 * .. If it finds one then it installs itself as a DOS command ('g').
 * .. If it doesn't find one then it starts immediately.
 * DOS ROM extension commands only work with PC-DOS - so no, you can't
   use MS-DOS here!

It likely installs itself as a DOS extension command in order to use
DOS interrupts for the file IO.  Apparently this is a common thing done
by IBM PCjr cartridge software to avoid needing DOS in ROM.
(Although wouldn't DOS in ROM be actually quite useful?)

# What about a manual?

I haven't found a manual yet online!

So, some usage notes!

 * it runs in 640x200x4 colour mode
 * Right click the 4 colours to cycle through the hardware palette options
 * When drawing circles, squares, lines - you use left click to size,
   and right click to actually draw them!


