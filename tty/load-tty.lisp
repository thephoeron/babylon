;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: User; Base: 10 -*-

(in-package "USER")

 
(unless (and (boundp '*bab-host*) *bab-host*)
  (format *query-io* "~%Enter Babylon Host: ")
  (setq *bab-host* (read *query-io*)))


(load (format nil "~A:>babylon>kernel>require.lisp" *bab-host*))
(load (format nil "~A:>babylon>kernel>babtrans.lisp" *bab-host*))


;;------------------------------------------------------------------------ 

(defun make-symb-pathname (bab-path host type)
  (let ((true-type (case type
		     (source "lisp")
		     (bin    "bin")
		     (t      (string-downcase type)))))
    (merge-pathnames bab-path
		     (concatenate 'string (string host) ":>foo." true-type))))

(setf *trans-path-fkt*  #'make-symb-pathname)


(defbabylon-translation
  "babhome/" ">babylon>" ">babylon-work>symbin71>")
(defbabylon-translation
  "tty/"  ">babylon-ext>tty>" ">babylon-work>tty-symbin71>")
(defbabylon-translation
  "samples/" ">babylon>samples>" ">babylon-work>tty-symbin71>samples>")

(defbabylon-translation "basic-interface-mixin" "b-interf")
(defbabylon-translation "mini-interface-mixin"  "m-interf")
(defbabylon-translation "mini-babylon" "m-interf")

(setq *babylon-module-search-path*
      '("configs/" "tty/modules>" "modules/"))

;;------------------------------------------------------------------------ 

(cc-load "babhome/flavors>fls-map")
(cc-load "tty/extens")

(bab-require 'common)
(bab-require 'meta)

(bab-require 'mini-interface-mixin)

;;------------------------------------------------------------------------ 


;(bab-require 'free-text-mixin)
;(bab-require 'normal-frame-mixin)
;(bab-require 'normal-rule-mixin)
;;(bab-require 'normal-prolog-mixin)
;;(bab-require 'normal-constraint-mixin)
;

(cc-load "tty/customs.lisp")

(format *terminal-io*
	"Welcome to Babylon Release ~A on Symbolics!~%" *babylon-version*)


;;; eof

  