raspi-gpio-newlisp
===========

A Raspberry Pi GPIO library for newLISP

Intro
=====
This library is pretty self explanitory, use the source, Luke!

Usage
=====
Include the library at the top of your script with:

    (load "raspi-gpio.lsp")

From there on, use it similarly to how you'd use Arduino/Wiring,
with the exception that it's wrapped up inside the GPIO context:

    (GPIO:enable-pin 4)
    (GPIO:pin-mode 4 GPIO:out)
    (GPIO:digital-write 4 GPIO:high)
    (GPIO:disable-pin 4)

License
=======
WTFPLv2, embedded in the source.
