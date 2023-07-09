;;; -*- Mode: Lisp; Syntax: Common-Lisp; Base: 10; Package: User -*-

(in-package "USER")

;;;           Copyright   1988, 1987, 1986, 1985 and 1984    BY
;;;           G M D  
;;;           Postfach 1240
;;;           D-5205 St. Augustin
;;;           FRG

;;;  AUTHOR:  J. Walther

;;;  system module: normal-constraint-mixin : n-consat

(bab-require 'common)
(bab-require 'normal-frame-mixin)
(bab-require 'mini-constraint-mixin)

(cc-load "consat^normal>restrict")
(cc-load "consat^normal>rstreval")
(cc-load "consat^normal>rstrbase")
(cc-load "consat^normal>nc-proc")
(cc-load "consat^normal>nc-mixin")

(provide 'normal-constraint-mixin)

;;; eof

