;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: User; Base: 10 -*-



(def-kb-configuration urlaubc
  (:procs normal-frame-mixin normal-rule-mixin normal-prolog-mixin
	  lisp-mixin free-text-mixin)
  (:interface normal-interface-mixin))


#+:FLAVORS(compile-$flavor-$methods urlaubc)

;;; eof

