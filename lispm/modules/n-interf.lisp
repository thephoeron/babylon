;;; -*- Mode: Lisp; Syntax: Common-Lisp; Base: 10; Package: User -*-

(in-package "USER")

;;;           Copyright   1988, 1987, 1986, 1985 and 1984    BY
;;;           G M D  
;;;           Postfach 1240
;;;           D-5205 St. Augustin
;;;           FRG

;;;  AUTHOR:  J. Walther

;;;  system module: normal-interface-mixin : n-interf

(bab-require 'iocore)

(cc-load "lispmio^windows>operations")
(cc-load "lispmio^windows>headline")
(cc-load "lispmio^windows>manager")
(cc-load "lispmio^windows>n-dialw")
(cc-load "lispmio^windows>n-txscw")
(cc-load "lispmio^windows>w-cmds-e")
(cc-load "lispmio^windows>w-cmds-g")

(cc-load "lispmio^normal>listener")
(cc-load "lispmio^normal>n-window")
(cc-load "lispmio^normal>n-mixin")
(cc-load "lispmio^normal>nbabylon")

(provide 'normal-interface-mixin)

;;; eof

