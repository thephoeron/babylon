;;; -*- Mode: Lisp; Syntax: Common-Lisp; Base: 10; Package: User -*-

(in-package "USER")

;;;           Copyright   1989 1988
;;;           G M D  
;;;           Postfach 1240
;;;           D-5205 St. Augustin
;;;           FRG

;;;  AUTHOR:  E. Gross

;;;  system module: iocore : iocore

(cc-load "lispmio^common>lm-menu")
(cc-load "lispmio^common>mitem")
(cc-load "lispmio^common>l-dialog")
(cc-load "lispmio^common>sys-core")
(cc-load "lispmio^common>select")

(cc-load "lispmio^cmds>common-e")
(cc-load "lispmio^cmds>frame-e")
(cc-load "lispmio^cmds>consat-e")
(cc-load "lispmio^cmds>rule-e")
(cc-load "lispmio^cmds>prolog-e")

(cc-load "lispmio^cmds>common-g")
(cc-load "lispmio^cmds>frame-g")
(cc-load "lispmio^cmds>consat-g")
(cc-load "lispmio^cmds>rule-g")
(cc-load "lispmio^cmds>prolog-g")


(provide 'iocore)

;;; eof

