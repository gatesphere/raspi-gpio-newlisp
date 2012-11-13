; rpi-gpio.lsp
; newlisp raspi gpio library
; Jacob Peck
; 20121113

; This code is licensed under the WTFPLv2:
;
;             DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
;                    Version 2, December 2004
;
; Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>
;
; Everyone is permitted to copy and distribute verbatim or modified
; copies of this license document, and changing it is allowed as long
; as the name is changed.
;
;            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
;   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
;
;  0. You just DO WHAT THE FUCK YOU WANT TO.


(context 'GPIO)
(set 'dir "/sys/class/gpio")
(set 'in "in")
(set 'out "out")
(set 'high "1")
(set 'low "0")

(define (enable-pin pin)
  (write-file (string dir "/" "export") (string pin)))

(define (disable-pin pin)
  (write-file (string dir "/" "unexport") (string pin)))

(define (pin-mode pin mode)
  (write-file (string dir "/" "gpio" pin "/" "direction") (string mode)))

(define (digital-write pin value)
  (write-file (string dir "/" "gpio" pin "/" "value") (string value)))

(define (digital-read pin)
  (trim (read-file (string dir "/" "gpio" pin "/" "value")) "\n"))

(context MAIN)
