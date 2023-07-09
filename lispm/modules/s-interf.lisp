;;; -*- Mode: Lisp; Syntax: Common-Lisp; Base: 10; Package: User -*-

(in-package "USER")

;;;           Copyright   1989, 1988    BY
;;;           G M D  
;;;           Postfach 1240
;;;           D-5205 St. Augustin
;;;           FRG

;;;  AUTHOR:  E. Gross

;;;  system module: basic-interface-mixin : b-interf

(bab-require 'iocore)

(cc-load "lispmio^windows>b-txscw")
(cc-load "lispmio^simple>b-mixin")

(cc-load "lispmio^simple>mloop")
(cc-load "lispmio^simple>m-mixin")
(cc-load "lispmio^simple>mbabylon")

(provide 'basic-interface-mixin)
(provide 'mini-interface-mixin)

;;; eof

