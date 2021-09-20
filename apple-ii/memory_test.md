---
layout: default
title: Apple II - Memory Test
---

# Apple II - Monitor memory test

I'm still building my rev0 and it's behaving weirdly in applesoft
BASIC.  So, step 0 is "is RAM ok?"

I found this article: [https://www.applefritter.com/content/apple-ii-bad-memoryrom](https://www.applefritter.com/content/apple-ii-bad-memoryrom) which includes a type-in to the monitor
ROM.

The contents are here:

--

Hello,

First, I suggest you try this simple 48K RAM test (thanks to Jim Sather and his precious book "Understanding the Apple II") :
 * Go to the monitor (CALL -151)
 * Type in the following code (don't forget to add a space after 34:14 before pressing Return) (Adrian's addition - don't include the quotation marks; they are there to show the space at the end)

"C050 C053 C054 C057 N 265:FF N 266<265.BFFEM 266<265.BFFEV 265:0 N 266<265.BFFEM 266<265.BFFEV 34:14 "(Return)

The Apple II will go to HGR mode and display white and dark graphic screen along with question marks and inverse @ characters at the bottom of the screen.
If some RAM chips are bad, faulty addresses will be printed on the bottom of the screen.

Just tell me what does this produce.

--
