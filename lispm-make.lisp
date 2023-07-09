;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: User; Base: 10 -*-

(in-package "USER")

(PROCLAIM '(optimize (speed 3)(space 1)(safety 1)(compilation-speed 0)))

(setq *recompile* t)
#|
Change lm:SC80: by whatever host:volume: you use
|#

(setq *bab-host* "lm:IHD:")
 
(unless (and (boundp '*bab-host*) *bab-host*)
  (format *query-io* "~%Enter Babylon Host:Volume: ")
  (setq *bab-host* (read *query-io*)))


(load (format nil "~ABabylon:kernel:require" *bab-host*))
(load (format nil "~ABabylon:kernel:babtrans" *bab-host*))
(load (format nil "~ABabylon:lispm:extens" *bab-host*))

(defbabylon-translation "babhome^" ">babylon>" ">babylon>ti-binary>")

;(defbabylon-translation "tty^"                  ">babylon>tty>")
;(defbabylon-translation "basic-interface-mixin" "b-interf")
;(defbabylon-translation "mini-interface-mixin"  "m-interf")
;(defbabylon-translation "mini-babylon"          "m-interf")
  
(setq *babylon-module-search-path*
;      '("configs^" "lispm^modules>" "tty^modules" "modules^"))
      '("configs^" "lispm^modules>" "modules^"))

;;------------------------------------------------------------------------

(cc-load "babhome^fls>fls-map")

(bab-require 'common)
(bab-require 'meta)
(bab-require 'iocore)
;(bab-require 'mini-interface-mixin)

(defun choose-components ()
  (let ((choices
	  (tv:multiple-choose
	    "Select Components to be loaded"
	    '((free-text-mixin "Freetext" ((load t)))
	      (normal-frame-mixin "Frames" ((load t)))
	      (normal-rule-mixin "Rules" ((load t)))
	      (normal-prolog-mixin "Prolog" (load))
	      (normal-constraint-mixin "Constraints" (load))
	      (normal-interface-mixin "Standard Interface" ((load t)))
	      (mini-interface-mixin "Simple Interface" (load)))
	    '((load "     ")))))
    (if choices
	(mapcan #'(lambda (a-choice)
		    (if (eq 'load (second a-choice))
			`(,(first a-choice))))
		choices))))

(let ((components
	(if (and (boundp '*all*) *all*)
	    '(free-text-mixin normal-frame-mixin normal-rule-mixin
			      normal-prolog-mixin normal-constraint-mixin
			      normal-interface-mixin mini-interface-mixin)
	    (choose-components))))
  (dolist (module components)
    (bab-require module)))

;;------------------------------------------------------------------------ 

(cc-load "lispm^customs")

(format *terminal-io*
	#+:SYMBOLICS "~%Welcome to Babylon Release ~A on Symbolics!~%" 
	#+:TI "~%Welcome to Babylon Release ~A on Texas Instruments!~%" 
	*babylon-version*)

(make-babylon 'normal-babylon)

;;; eof





