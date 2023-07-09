;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: User; Base: 10 -*-




(def-kb-configuration adderc
  (:procs mini-constraint-mixin lisp-mixin)
  (:interface normal-interface-mixin))


#+:FLAVORS(compile-$flavor-$methods adderc)

;;; eof

