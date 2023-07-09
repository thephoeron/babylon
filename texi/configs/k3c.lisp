;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: User; Base: 10 -*-

(bab-require 'textrans)

(def-kb-configuration k3c
  (:procs normal-frame-mixin 
          normal-rule-mixin
	  normal-constraint-mixin 
          lisp-mixin free-text-mixin)
  (:interface normal-interface-mixin)
  (:special import-export-mixin))


#+:FLAVORS(compile-$flavor-$methods k3c)

;;; eof

