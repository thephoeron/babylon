;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: User; Base: 10 -*-

(in-package "USER")

;;           Copyright   1987   BY
;;           G M D 
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG

;; DATE:     August 1987
;; AUTHOR:   E. Gross

;; This file depends on:  common>*
                         

;; Contents: a mixin to make an application selectable via system menu
;;           or select key.
;;           if selected the application receives the message :select-kb


(def$flavor select-mixin
	((select-string nil)
	 (mouse-doc "")
	 (select-key nil))
	()
  :settable-instance-variables
  (:required-methods :select-kb)
  (:documentation "a mixin to make an application selectable via system or select key.
select-string contains the string to be displayed in the system menu, mouse-doc
the string for the mouse documentation line. "))

;;-------------------------------------------------------------------

(def$method (select-mixin :after :init) (&rest ignore)
  ($send self :make-selectable))

;;-------------------------------------------------------------------


(def$flavor dummy
	    () ())


#+:SYMBOLICS (def$method (select-mixin :add-to-system-menu) ()
	       (tv:add-to-system-menu-programs-column
		 select-string 
		 `(process-run-function '(:name "babylon manager" :priority 10.)
		    #'funcall ,self :select-kb) 
		 mouse-doc))


#+:TI (def$method (select-mixin :add-to-system-menu) ()
	(w:add-to-system-menu-column
	  :programs
	  select-string 
	  `(process-run-function '(:name "babylon manager" :priority 10.)
	     #'funcall ,self :select-kb) 
	  mouse-doc))


(def$method (select-mixin :add-select-key) ()
  (#+SYMBOLICS tv:add-select-key #+TI tv:add-system-key
   select-key 
   'dummy
   select-string
   `(process-run-function '(:name "babylon manager" :priority 10.)
	       #'funcall ,self :select-kb)))



;;-------------------------------------------------------------------


(def$method (select-mixin :make-selectable) ()
  (when select-string
    ($send self :add-to-system-menu)
    (when select-key
      ($send self :add-select-key)))
  t)

;;-------------------------------------------------------------------

(defun find-entry-in-system-menu (string)
  (assoc string tv:*system-menu-programs-column* :test #'equal))

(def$method (select-mixin :remove-from-system-menu) ()
  (setq  tv:*system-menu-programs-column*
	 (remove (find-entry-in-system-menu select-string)
		 tv:*system-menu-programs-column*))
  t)

#+SYMBOLICS (def$method (select-mixin :remove-select-key) ()
	      (let* ((up-char (char-upcase select-key))
		     (existing (assoc up-char TV:*SELECT-KEYS*)))
		(if existing
		    (setq TV:*SELECT-KEYS* (delete existing TV:*SELECT-KEYS*)))))

#+TI (def$method (select-mixin :remove-select-key) ()
       (tv:remove-system-key select-key))


(def$method (select-mixin :make-unselectable) ()
  (if select-string
      ($send self :remove-from-system-menu))
  (if select-key
      ($send self :remove-select-key)))


(def$method (select-mixin :before :kill-kb) ()
  ($send self :make-unselectable))

;;; eof

