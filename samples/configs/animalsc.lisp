;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: User; Base: 10 -*-



(def-kb-configuration animalsc
  (:procs normal-rule-mixin lisp-mixin free-text-mixin)
  (:interface normal-interface-mixin))


#+:FLAVORS(compile-$flavor-$methods animalsc)

;;; eof

