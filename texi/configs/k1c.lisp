;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: BABYLON; Base: 10 -*-

(in-package "BABYLON")


(eval-when (:execute :compile-toplevel :load-toplevel)
  (bab-require 'textrans))

(def-kb-configuration k1c
  (:procs normal-frame-mixin normal-rule-mixin
	  lisp-mixin free-text-mixin)
  (:interface normal-interface-mixin)
  (:special import-export-mixin))


;;; eof

