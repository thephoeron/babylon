;;; -*- Mode: Lisp; Syntax: Common-Lisp; Base: 10; Package: User -*-

;;; mcs

;;; META CLASS SYSTEM
;;; copy this file into one of your modules folders
;;; _______________________________________________________________________

(eval-when (eval compile load)
  (or (find-package "MCS")
      (make-package "MCS")))

(shadow '(DEFCLASS DEFMETHOD MAKE-INSTANCE SLOT-VALUE
           STANDARD-OBJECT STANDARD-CLASS SELF)
        "MCS")

(unintern 'SELF "USER")
(use-package "MCS" "USER")

(proclaim '(optimize (speed 3)(safety 1)))

(cc-load "mcs^mcs-core")
(cc-load "mcs^mcs-root")
(cc-load "mcs^mcs-meth")
(cc-load "mcs^mcs-util")
(cc-load "mcs^mcs-map")    ; mapping babylon flavor primitives to mcs

(proclaim '(optimize (speed 3)(safety 1)))

(pushnew :MCS *features*)

;;; mcs does not allow slot access by name
;;; you must use slot-value 

;;; eof

