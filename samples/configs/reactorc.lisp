;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: User; Base: 10 -*-




(def-kb-configuration reactorc
  (:procs normal-frame-mixin normal-rule-mixin lisp-mixin free-text-mixin)
  (:interface normal-interface-mixin))


#+:FLAVORS(compile-$flavor-$methods reactorc)

;;; eof

