---
layout: default
title: Commodore SX-64 Repair Notes
---

# Commodore SX-64 repair notes

Title: SX-64 diagnosis and repair article
From: Raymond Carlsen
Date: May 22, 1999
Group: comp.sys.cbm

To all:
Here is some info I wished I had when I opened up my first SX.

DIAGNOSIS AND REPAIR OF THE COMMODORE SX-64

The SX-64 is a very complex device. It is a computer with keyboard,
disk drive and monitor all compacted into a small space, which makes
diagnosis and repair more difficult than with "stand-alone" devices.
However, with the information presented here, you should be able to figure
out what the problem is and possibly repair your SX. You need to pay
attention to (sometimes subtle) symptoms... what works and what doesn't,
how it failed, checks with external devices, etc. Since most of the SX-64
computer and drive electronics are virtually identical with a standard C64
and 1541 drive, you can use those diagnostic repair articles for further
information. Most electrical parts such as the major IC chips will
substitute as well. The major differences are board and component
locations.

When you are checking the SX, be aware that it will work with an
external monitor and disk drive, just like a C64 does. It has a 6 pin
DIN serial port, and an 8 pin DIN A/V connector which puts out S-video
as well as composite. If an external drive is connected, it should be
set up as something other than device 8 (the default for the SX internal
1541), unless you disable the internal drive.

DISASSEMBLY:

The cabinet consists of the front panel, rear panel, and two
half-shells, top and bottom. You will need a medium size Phillips
screwdriver. Hint: set the screws and cabinet parts in a place where
they will not be disturbed after removal. Clear a space large enough
beforehand. If parts are placed in order of removal, you can easily
reassemble the cabinet in reverse order of disassembly. To remove the
cabinet for servicing: remove four small screws in the rear right and
left sides (two on each side). Those screws hold the plastic strips
along each side... those strips will now slide rearward and out of
their slots. Next, remove six small screws (three on each side) and two
large screws in the rear top right and left sides. Lift the top
half-shell up and off.

Most of the boards and chips are accessible from the top. Boards
are held in place with tiny black plastic "plug and socket" fasteners.
When the plug is removed, the underlying fastener will come out of the
hole. Use a knife edge carefully to get under the "cap" (or press on it
from the back side) and lift it up and out, then remove the fastener.
The boards sit in slots at the bottom of the computer... no fasteners
there, but to completely remove a board, you need to unplug all the
connectors first. Mark each connector as you remove it to prevent
mistakes when you put them back again. In the SX, the plugs are not
marked, but the sockets all have reference numbers. If you have a
camcorder, it wouldn't hurt to set it up on a tripod and tape what
you're doing. That way, if you're not sure about something, you can
always play the tape back and see what you did. Add narration to help
with the difficult or hard-to-see areas. If the camcorder is plugged
into the TV, you can see what the camera is recording.
If you need access to the bottom of the computer, the bottom half
shell is removed in same manner as the top, with a few exceptions. You
need to also remove four bottom screws that hold the rubber feet, and
in addition, one screw accessible from the inside. Facing the front of
the computer, that screw is located just behind the drive left rear
side. The one next to it holds the wire bundle in place... no need to
remove that one.

Note that with both top and bottom half-shells removed, there is
nothing to hold the rear panel (power supply section) in place. Rather
than let it flop around hanging by it's wiring, install one small screw
in each side to hold it in place. Of course if you need access to the
power supply, you can just fold the rear panel down for servicing. You
will need to remove connector plugs from the other boards that the
power supply feeds and cut one tiewrap to free the cable bundle.

Careful you don't cut any wires!

The disk drive assembly (along with the "glovebox" above it) can
be easily removed from the chassis by removing four screws, two on each
side of the drive. Move the cartridge port connector (two screws) to
get it out of the way. Free the wire bundle from the retainer at the
left rear of the drive. Slide the drive assembly back as far as it will
go, tip up the front of it and lift it out. Don't snag the wires
attached to the right side (CPU) board. The drive wires are long enough
to work on the drive as it sits on top of the computer, but don't
damage the speaker or short anything out with the drive case. If you
need to work on the drive, slip a piece of cardboard under it to
protect the computer. The "glovebox" is fastened to the drive assembly
with two screws. That box, by the way, is normally used to store the
power cord and keyboard cable, but can be used to store disks, if
desired. The rumor that disks will be damaged by heat or magnetic
fields while in that box is false.

You can remove the internal monitor "package" by removing four
screws, one in each corner of that assembly. It can then be lifted
straight up and out, but is held back by by it's wires at the rear. You
can get a bit more length out of those cable bundles by releasing them
from their retainers. If you set the computer on it's left side, the
monitor package can be turned to just about any position for servicing.
It's helpful to elevate it by setting it on a small cardboard box or
other platform about 4" high. Some controls (like horizontal hold) are
only accessible with the monitor in this "service" position. Note: it's
easier to reinstall the monitor if you rock it back and forth to allow
the wire retainers in the back to slide past the rough surface of the
back of the FDD board. IMPORTANT: Make sure you don't pinch any wires
under the metal mounting feet of the monitor package when you're
reinstalling it. A pinched wire can cause a short that's -very- hard to
find and it could cause major damage.

The keyboard comes apart for cleaning by pressing in on the four
plastic snaps on the front edge while separating front and rear panels
with fingers. The two center ones are easy... just press in and up on
the brown plastic top panel and it will bend upward. The two side snaps
need a bit of pressure... use a small flat tool like a screwdriver
blade inserted into the slots to make them release. With the top off,
the keyboard is visible as several rows of keys over a conductive
rubber bladder, which in turn is mounted over a PC board. Each key
plunger assembly can be removed for cleaning if one or more are sticky
from a spill. They would -all- have to be removed to gain access to the
PC board under the bladder. That shouldn't normally be necessary. None
of the keyboard parts are interchangeable with a C64. Note that the
shift-lock key is not a latching switch, but a momentary contact
pushbutton like all the rest. A circuit in the SX forms the "latching"
device and an LED on the keyboard key comes on when ShiftLock is on.

PROBLEMS, TIPS AND HINTS...

Users have reported problems with the Expansion Port in the SX.
Some cartridges do not fit or seat properly, and marginal contact with
the connector results. Those carts therefore may not work reliably or
don't work at all, although they may work fine in a C64. The "cure" in
some cases is to trim off the excess plastic from the cart to make it
fit. If a cart seems to fit, but is intermittant or doesn't work, you
might try lightly cleaning the cart edge connector with a pencil
eraser. Clean off any debris before inserting it in the computer.
One problem with the User Port (rear panel) is caused by a slight
electrical difference of the SX vs a C64: one of the 9VAC lines is
grounded! Both lines are "floating" in the C64. Use of the
Jason-Ranheim Prominade C1 Eprom Programmer unit in an unmodified SX
can damage the computer. A minor modification to the computer will fix
the problem. It involves cutting a foil bridge between two pins (19 and
20) of connector P7 on the underside of the rear panel connector board.
Interestingly enough, the connection between those pins is from the
factory but is not on the Commodore schematic! Jason-Ranheim's
information sheet is incomplete as to how to do the modification. I was
confused by their instructions until I figured out the exact trace to
be cut.

There is no cassette port in the SX, so the version of the Kernal
used does not include the code for it. Note that there is a slightly
different startup screen, and an added feature of SHIFT-RUN/STOP which
will load and run the first program on a disk as if you had typed:

LOAD":*",8:RUN <RETURN>

There is no RF modulator in the SX. If you need to feed a TV set
and it doesn't have video and audio inputs, you can run the A/V outputs
of the SX into your VCR audio and video inputs for conversion to RF for
the TV. Since the A/V 8 pin DIN also has S-video, you can feed that
output to an S-monitor if desired. If there is a lot of detail in the
picture, it's hard to see on the little 5" internal monitor, so an
external monitor helps quite a bit.

Problems with the cabinet handle can usually be traced to loose
screws. In addition to the two small screws in the handle itself, the
large screws (1 on each side) that fasten the handle to the case can
work loose over time and make the handle "wobbly". To get to the large
screws, slowly and carefully peel off the blue plastic covers. They are
held on with double sided tape, so when you peel the covers off, you
will need to glue them back on. I use a small amount of silicon rubber
sealer as glue. If applied to the old tape, it allows the cover to be
removed again later if necessary. Don't get any glue on the screwtop...
it's fixed in relation to the moveable handle.

There is no system reset switch on the SX-64 except for the reset
button inside the front panel door which resets the drive only. The
only way to reset the computer is to turn it off and back on again. If
you want to add a reset switch, connect one end of the added switch to
ground and the other end to the junction of IC UG7 (LM555) pin 2,
resistor R23 (1 Megohm), and capacitor C45 (0.1uF). Since the other
side of that capacitor is grounded, the switch will be connected
electrically across it. The switch should be a normally open (N.O.)
momentary contact pushbutton. Mount the switch on a convenient place on
the cabinet and run the wires to the CPU board. The IC and other
components listed are on the lower edge of the CPU board toward the
front of the computer, so the board must be removed to see how the
connections are to be made. Since the I/O board plugs into the CPU
board, they must both be loosened and separated and the power supply
panel must be pulled back. Remove the three connectors (wire bundles
from the power supply, rear connector panel, and the monitor) from the
CPU board and pull it for inspection and soldering. The layout looks
something like this:

top of CPU board--------------------------------------

This is the right side of the computer
______________________________________________________
| metal ______________________________
part of | panel / \
handle | | opening in panel |
_________|_ | |
| | CPU pc board |
| | 1 2 3 4 |
-----------' | > | <--- IC UG7 |
\____8_7_6_5_____________________/

bottom of CPU board-----------------------------------

*********************************************************

TROUBLESHOOTING THE COMPUTER...

COMPUTER CHIPS... the following is a list of the major chips in the C64
portion of the assembly, and the likely symptoms when a chip fails.
Most computer chips in the SX are interchangeable with IC's from a C64.
Exceptions such as the Kernal ROM will work, but has a slightly
different "program". Before you change any chip, try reseating it in
the socket (assuming it is socketed). Pull up slightly at each end and
then press the chip back down and try it again. Make sure no pins are
bent. Note that the following computer chips are located on two
different boards, namely the CPU and I/O boards.

UA4 THRU UA7 & UB4 THRU UB7 8 RAM CHIPS (4164) on CPU board.

Blank screen, no border. Shorted chips will get warmer than the
other RAM chips. Partial failure can produce screen or program "freeze"
or garbage screen. An abnormal number of bytes free or "out of memory"
error on startup screen is a RAM problem.

UB2 906108-02 (6526) CIA on I/O board.

Startup screen normal. No serial or user port access. "File not
found" error when drive accessed. Cartridge works. Characters sometimes
will show as blocks on startup screen.

UB3 906108-02 (6526) CIA on I/O board.

Startup screen normal, but no cursor. No keyboard or joyport
access. Partial failure: some keys or joystick positions don't work.
Cartridge works.

UC1 4066 QUAD "SWITCH" IC on I/O board.

Proportional mouse or graphics tablet doesn't work. Check also
SID chip UE3 on CPU board.

UD1 901225-01 CHARACTER ROM on CPU board.

Blank screen w/ border. "Garbage" characters where startup page
info should be. Cartridge works.

UD2 7406 LOGIC on I/O board.

No (or intermittant) serial (drive or printer) access.

UD3 251104-01 KERNAL ROM on CPU board.

Blank screen, no border. Cartridge works.

UD4 901226-01 BASIC ROM on CPU board.

Blank screen with border. Cartridge works.

UD7 906107-01 (6510) MPU on CPU board.

Blank screen, no border. Cartridge doesn't work.

UE3 906112-01 (6581) SID on CPU board.

Normal screen. No sound or garbled sound. Mouse or graphics tablet
pointer stuck or jitters (check also UC1 on I/O board). If IC shorted,
can cause blank or "garbage" screen. Runs very hot normally. Should be
heat sinked! NOTE: computer will work without a SID plugged in, but
with no sound.

UE3 556 (LM556) DUAL TIMER on I/O board.

RESTORE key doesn't work. SHIFT-LOCK key doesn't work or
appears "stuck down" (keyboard LED on). Check also UE2 on I/O board.

UE4 906114-01 (82S100PLA) PLA on CPU board.

Blank screen, no border. Sometimes will produce colored screen or
flashing garbage on screen, or cause intermittant screen freeze after
warmup. This chip normally runs hot! Most common chip to fail. Should
be heat sinked!

UE7 2114 SRAM COLOR RAM on CPU board.

No color in graphic screen images.

UF4 906109-04 (6567) VIC (has heat sink attached) on CPU board.
Blank white screen, no border. Sometimes will produce garbage or
"checkerboard" screen, or screen that lacks contrast. If screen is
blank or garbled from bad VIC, "blind" disk commands from keyboard
-may- still work.

DRIVE CHIPS... the following is a list of major chips used in the 1541
drive built into the SX-64, and the possible symptoms displayed if a
chip fails. Drive chips are interchangable with those from a
stand-alone 1541. The following components are all on the FDD (floppy
drive) board.

UA1 TMM2016AP-10 16K RAM
TMM2116AP-15 or MB8128-15

When drive powered up, spindle motor runs continuously and red
LED flashes about once every two seconds.

UA3 901229-05 DOS ROM 2 (may be earlier -03 version)

When drive powered up, red LED stays on and spindle motor runs
continuously. This DOS ROM is a common failure. Check also UBC4, UC2,
UB2, UD3, UDC5, UE2, and UH5.

UA4 325302-01 DOS ROM 1

When drive powered up, red LED flashes 3 times repeatedly.

UB2 74LS04 LOGIC

When drive powered up, red LED stays on and spindle motor runs
continuously. Check also UA3, UBC4, UC2, UD3, UDC5, UE2, and UH5.

UBC3 901437-01 (6522) VIA (SERIAL INTERFACE)

Drive powers up and resets normally. When LOAD is attempted,
screen indicates "SEARCHING FOR ...", but no motors run and red LED
does not light. External 1541 will still work (as drive 9, etc.) if
internal drive has not "locked up" the serial bus.

UBC4 901435-02 (6502) MPU

When drive powered up, red LED stays on and spindle motor runs
continuously. Check also UA3, UC2, UB2, UD3, UDC5, UE2, and UH5.

UC2 74LS00 LOGIC

When drive powered up, red LED stays on and spindle motor runs
continuously. Check also UA3, UBC4, UB2, UD3, UDC5, UE2, and UH5.

UD2 74LS42 LOGIC

When drive powered up, spindle motor runs continuously. Red LED
may stay on, or flash three times and go out.

UD3 74LS86 LOGIC

When drive powered up, red LED stays on and spindle motor runs
continuously. Check also UA3, UBC4, UC2, UB2, UDC5, UE2, and UH5.

UDC5 901437-01 (6522) VIA (MOTOR CONTROL INTERFACE)

When drive powered up, red LED stays on and spindle motor runs
continuously. Check also UA3, UBC4, UC2, UB2, UD3, UE2, and UH5.

UE2 74LS14 LOGIC

When drive powered up, red LED stays on and spindle motor runs
continuously. Check also UA3, UBC4, UC2, UB2, UD3, UDC5, and UH5.
Partical failure can affect write protect.

UE3 7406 LOGIC

Drive does not respond to computer... no reset or disk access.
If drive accessed, "DEVICE NOT PRESENT" error. External drive may work
if internal drive problem has not "locked up" serial bus.

UF2 M54532P TRANSISTOR ARRAY IC (STEPPER DRIVERS)
SUB: MITSUBISHI ULN2064

No stepper action or head assembly barely moves. Check also UF3.

UF3 7404 LOGIC

No stepper action or head assembly barely moves. Check also
UF2.

UF5 325572-01 MOTOR CONTROLLER (PLA)

When drive powered up or reset, red LED comes on and goes out,
but spindle motor does not turn. When LOAD attempted, spindle does not
turn, red LED flickers, screen displays "FILE NOT FOUND" and red LED
flashes.

UG4 7407 (7417) LOGIC (R/W CONTROL BUFFER)

When drive is powered up or reset from computer, red LED comes
on and goes out, but spindle motor does not turn. When LOAD is
attempted, stepper moves slightly, spindle doesn't turn, and error
message on screen is "FILE NOT FOUND" with flashing red LED. Partial
failure can produce write errors or no write.

UG5 74LS193 LOGIC (COUNTER)

Drive powers up and resets normally, but when LOAD is
attempted, screen indicates "SEARCHING FOR ..." red LED does not light
and spindle runs continuously.

UH1 NE592N (LM592) READ PREAMP

Drive powers up and resets normally. Spindle motor runs, stepper
moves slightly, but "FILE NOT FOUND" error and red LED flashes. Check
also UJ1 and UK4.

UH4 9602 (74123) LOGIC (MMV)

Drive powers up and resets normally, but when LOAD is attempted,
screen indicates "SEARCHING FOR ..." red LED does not light and spindle
runs continuously. Check also UE6.

UH5 74LS197 (74177) LOGIC (TIMER)

When drive powered up, red LED stays on and spindle motor runs
continuously. Check also UA3, UBC4, UC2, UD2, UD3, UDC5, and UE2.

UJ1 NE592N (LM592) READ AMPLIFIER

Drive powers up and resets normally. Spindle motor runs, stepper
moves slightly, but "FILE NOT FOUND" error and red LED flashes. Check
also UH1 and UK4.

UK4 LM311 COMPARITOR (READ AMPL)

Drive powers up and resets normally. Spindle motor runs, stepper
moves slightly, but "FILE NOT FOUND" error, and red LED flashes. Check
also UH1 and UJ1.


DISK DRIVE DIAGNOSTICS: WHAT TO LOOK FOR...

When you are troubleshooting a drive, it is important to observe
it closely for symptoms. For example, note how the stepper, spindle
motor and indicator LED functions when the computer is powered up, when
the drive is reset, and when it is accessed by the computer. When the
drive is instructed to LOAD a program, note whether the stepper moves,
how much it moves, and if it "chatters". Try various functions like
Initialize and observe the results. Sometimes the clues to a
malfunction are subtle. Because many chips can cause the same symptom,
it's important to know which ones are most likely to cause a particular
failure.

One shortcoming of the 1541 is the head getting "lost" past the
directory track. Some disk errors can do that. If your drive suddenly
goes "dead" and you can't read disks without "?FILE NOT FOUND" errors,
try the Initialize command:

OPEN15,8,15:PRINT#15,"I0":CLOSE15 <RETURN> assuming drive is device 8.

This command (or formatting a disk) should return the heads to track
zero (with chattering sound) and may bring the drive "back to life".

To properly diagnose a potential problem, you have to know exactly
how the drive should respond when it's working correctly.

COMPUTER POWER UP: red drive LED should come on and the spindle motor
should spin, then LED should go out and motor should stop within about
two seconds. This indicates completion of the DOS startup sequence.

DRIVE RESET: the drive should reset when the button inside the
control door is pressed. The drive should react the same as when
powering up the computer. NOTE: this reset button is unique to the SX
and the C128DCR. It resets only the drive, not the computer or
peripherals.

READ DIRECTORY: Insert a known good disk (it is preferable to try
more than one) and type: LOAD"$",8 and hit the RETURN key. The disk
should spin and the head should move to track 18 (if it is not over it
already) and read the directory. The screen will show: SEARCHING FOR $.
If it finds it, the screen will say READY and the drive motor will
stop. Type LIST and hit the RETURN key. The screen should list the
contents of the disk directory. (Exception: some commercial (game)
programs will not have a visible directory to list.)

If the drive "sees" data on the disk, but there are any problems
reading it, DOS will try several times before "giving up". You will
hear the drive chatter as it steps back to track zero in an attempt to
establish the correct position over the directory track. If it fails,
it will produce the error message: "?FILE NOT FOUND" and the drive red
LED will flash, the same as you would get if you tried to load a file
that didn't exist on the disk. One very important difference: if the
drive simply cannot find a file, but is otherwise reading the disk
correctly, it will -not- chatter.

If the disk read fails for any mechanical reason (drive door open,
unformatted or bad disk, bad chip in the drive, etc.), you may hear the
head stepping back and forth (4 clicks) looking for track 18. The drive
red light will flash repeatedly and an error message: "?FILE NOT FOUND"
will appear. If you read the disk error channel, it will say: 74, DRIVE
NOT READY,00,00. That means the drive never saw good data on the disk.
If the drive tries, but the error message "SEARCHING FOR xxx" is
displayed and nothing else happens, it indicates a serial interface
problem between computer and drive. A "?DEVICE NOT PRESENT" error means
that the drive is "invisible" to the computer. In the SX, that's
usually a chip failure or open connection in the computer - drive
serial interface. Of course, if you try to access a non-existant drive
(drive 9 for example), you will get that error. Note that sometimes
just reseating socketed chips or connectors will fix a problem. It's a
good place to start when you're troubleshooting.

INITIALIZE: This command from the computer should move the head from
wherever it is to track 18 (directory) and the disk should spin. The
head will not move (but the spindle motor will turn) if it is already
over track 18. If there is no disk in the drive, or you insert an
unformatted disk, or if the drive door is open, it should cause the
spindle motor to run and the head to seek track 18 (directory)
anyway. When it tries and fails, it will pull the head back to track
zero and "chatter" as it hits the head stop, then advance to where
track 18 should have been. The red light will flash because of the
drive read error. No error message will be shown on the screen, but if
you read the disk error channel, it will say: 21,READ ERROR,18,00.
FORMAT OR DISK "NEW": When you format a disk, the spindle motor will
turn and the red light will come on. The drive will pull the head back
to track zero and "chatter", then the stepper will advance to each
track as it writes from track 1 to track 35. When it finishes the
format (about 1 minute 25 seconds on an unmodified drive), the head
will return to track 18 (directory). The format will first attempt to
write to track 1, then do a read, and if the read fails, the format
will terminate, and the head will not move from track 1. If it advances
a few tracks and stops, suspect a bad disk, an intermittant connection
to the head, dirty head, missing or worn pressure pad, etc.

If a format fails, the red drive light will flash, but there will
be no error message on the screen. If you read the drive error channel,
it will say: 21,READ ERROR,00,00. Format failures can be caused by
write protect, drive door open, bad disk, bad or clogged head, or bad
chips in the drive. It could be as simple as a write-protect tab
getting stuck in the drive or dust in the sensor. If the drive will
read OK but fails to format a disk, check IC's that are used for the
"write" function and of course the sensor. The read/write head may test
good with an ohmmeter and read OK, but may still be defective and fail
to format a disk. You can temporarily swap out drive mechanics to check
the head. Substituting a Newtronics for the original ALPS drive may
present a problem as a permanent fix because the twist type of door
lever sticks out about 5/8" and hits the keys when the keyboard is
installed for transport.

As mentioned above, it is sometimes helpful to read the disk drive
error channel when the drive red light is flashing. If you have
JiffyDOS installed, just type @ and hit RETURN. If not, here is a small
BASIC program to do it. It reads the channel, displays the error
message, and turns the drive light off. All of the possible drive error
messages are listed in the back of the operators manual.

10 OPEN 15,8,15
20 INPUT#15,EN,EM$,ET,ES
30 PRINT EN,EM$,ET,ES
40 CLOSE 15

Suspect a drive alignment problem if the drive can read it's own
recently formatted disks, but other (commercial) disks fail to work. A
slightly misaligned drive will chatter when loading programs as it
encounters disk read errors, and it will fail to load if severely
misaligned. Note that some commercial programs have intentional errors
(copy protection) on the disk(s) that will make a normal drive chatter
and flash the red LED while loading.

The SX drive doesn't suffer from the heat related alignment
problems that a stand alone 1541 does, but it can be "sluggish" and
look like it's out of alignment. That's usually caused by sticky head
rails. Any 1541 drive can become sluggish if it sits for a long time
without being used. The head assembly should slide back and forth
easily (drive turned off, of course). If rails are sticky, the head has
trouble finding the correct track quickly enough and you end up with
intermittant read errors, especially when the drive is cold.

Disabling the internal drive can be used as a diagnostic check
(example: when you're not sure what is "locking up" the serial port).
To disconnect the internal drive (and make it "invisible" to the
computer) so an external drive can be used as device 8, unplug P19, a
(six wire: five white and one black) cable on the FDD board, or the
other end at P11 on the I/O board.

If you simply want to change the device number of the internal
drive, there is a set of jumpers on the FDD board, just as you would
find inside a 1541. They are located near P22, the 2 wire connector for
the drive reset switch.

FDD board top edge--||------------------||||||----------
|| ||||||
P22 [||] (2) (1) [||||||] P19
drive select
jumpers

As in the 1541, the SX drive has both jumpers closed from the factory,
so the drive is device #8. The jumpers, by the way, are the two tiny
silver half-circles with a bar in between them. To open a jumper, cut
the bar between the half-circles with an Xacto knife. To close an open
jumper, apply a blob of solder to reconnect the half-circles. To change
the drive to device #9, cut jumper 1. For device 10, cut jumper 2, and
for device 11, cut both jumpers. If you want to add a drive select
switch, each wire of the added switch will go to one side of the cut
jumper. If the PC pads are damaged, you can wire around the jumpers.
Jumper 1 grounds pin 15 of IC UBC3 VIA on the FDD board and jumper 2
grounds pin 16 of that chip.

POWER SUPPLY...

Fortunately, power supply problems are rare, unless the supply is
overloaded by adding power-hungry accessories like modified RAM
expanders or hacking a second drive into the SX. The supply consists
of a +5 volt switcher (3.15 Amps), a +12 volt switcher (2.8 Amps), and
a transformer to generate the 9VAC (0.2 Amps) for the User Port. Note
that the TOD clocks do not run off the 60Hz power line frequency as in
a C64. In the SX, there is a crystal oscillator (UA1) on the I/O board
that feeds a 60Hz signal to the two CIA chips UB2 and UB3. The large
and heavy metal rear panel is the heat sink for the power supply. Air
should be allowed to circulate around it when the computer is turned
on.

The internal monitor gets it power from the +12 volt supply. Most
of the computer chips use the +5v source for power, but a few like the
SID and VIC also need +12 volts, as does the internal 1541. Loss of
only the 5 volts would make the computer appear dead. The monitor would
still have power but of course would have no picture. The dim orange
glow of the filaments in the picture tube neck (under the speaker) is
an indication that the monitor is running and probably has high voltage
since the heater current is "scan-derived" directly off the flyback
transformer. Since the +5 volt supply is "stepped down" from the +12
volt supply, loss of 12 volts would kill power to everything. There is
only one fast-blow fuse. It's located on the rear panel, is wired in
series with the power line, and is rated at 3.15 Amps. Power supply
problems should really be left to a technician. Switching power
supplies are tough to diagnose and repair even for the experts.

Ray Carlsen CET

CARLSEN ELECTRONICS... a leader in trailing-edge technology.
Email: rr...@u.washington.edu or rcar...@i-link-2.net
Questions and feedback is always welcome, especially if you spot an
error here. Thanks!
