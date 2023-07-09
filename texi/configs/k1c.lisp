;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: User; Base: 10 -*-

(eval-when (eval compile load)
  (bab-require 'textrans))

(def-kb-configuration k1c
  (:procs normal-frame-mixin normal-rule-mixin
	  lisp-mixin free-text-mixin)
  (:interface normal-interface-mixin)
  (:special import-export-mixin))


#+:FLAVORS(compile-$flavor-$methods k1c)

;;; eof

