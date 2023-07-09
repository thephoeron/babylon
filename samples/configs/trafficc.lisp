;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: User; Base: 10 -*-



(def-kb-configuration trafficc
  (:procs normal-frame-mixin normal-rule-mixin normal-constraint-mixin
	  lisp-mixin normal-prolog-mixin free-text-mixin)
  (:interface normal-interface-mixin))


#+:FLAVORS(compile-$flavor-$methods trafficc)

;;; eof

