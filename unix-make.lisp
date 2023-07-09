;;; -*- Mode: LISP; Syntax: Common-Lisp; Base: 10 -*-

#+:EXCL(defpackage "COMMON-LISP-USER"
         (:nicknames "USER"))

(in-package "USER")

 
(defvar *bab-host* "")

(load "kernel/require.lisp")
(load "kernel/babtrans.lisp")

(setf *recompile* t)

;;------------------------------------------------------------------------ 

(defun make-local-pathname (bab-path host type)
  (let ((true-type (case type
                     (source "lisp")
                     (bin   #+:EXCL "fasl" #-:EXCL "bin" )
                     (t      (string-downcase type)))))
    (merge-pathnames (substitute #\/ #\> bab-path)
                     (concatenate 'string "/foo." true-type))))

(setf *trans-path-fkt*  #'make-local-pathname)


(defbabylon-translation "babhome^"              ">home>juergen>babylon>")
(defbabylon-translation "mcs^"                  "babhome^mcs>")
(defbabylon-translation "tty^"                  "babhome^tty>")

(defbabylon-translation "basic-interface-mixin" "b-interf")
(defbabylon-translation "mini-interface-mixin"  "m-interf")

(setq *babylon-module-search-path*
      '("tty^modules>" "modules^" "configs^"))

;;------------------------------------------------------------------------ 

(cc-load "tty^extens")

(bab-require 'mcs)
(bab-require 'common)
(bab-require 'meta)

(bab-require 'free-text-mixin)
(bab-require 'normal-frame-mixin)
(bab-require 'normal-rule-mixin)
(bab-require 'normal-prolog-mixin)
(bab-require 'normal-constraint-mixin)

;;; replace by your implementation of normal-interface-mixin later on

(bab-require 'mini-interface-mixin)
(def$flavor normal-interface-mixin () (mini-interface-mixin))

(cc-load "tty^customs.lisp")

;;------------------------------------------------------------------------ 

(format *terminal-io*
	"Welcome to Babylon Release ~A on SUN~%" *babylon-version*)

;;; later on you may dumplisp an image here

;;; eof

  