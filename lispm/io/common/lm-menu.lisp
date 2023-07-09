;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: User; Base: 10 -*-

(in-package "USER")

;;           Copyright   1987   BY
;;           G M D  
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG


;; DATE:    August 1987
;; AUTHOR:  E. Gross



;; Diese Datei enthaelt Definitionen fuer die abstrakte Schnittstelle zum Window-System.
;; 


(def$flavor lispm-menu-mixin
       () ()
  (:required-instance-variables language)
  (:documentation "provides different types of pop up menus"))



;;   choose-from-menu (tv:menu-choose)
;;   ----------------------------------

(def$method (lispm-menu-mixin :choose-from-menu) (item-list &optional header &rest args)
   "pops up a menu allowing a single choice."
  #+:SYMBOLICS (apply #'tv:menu-choose item-list header args)
  #+:TI (apply #'w:menu-choose item-list :label header args)
  )


;;   mult-choose-from-menu
;;   ----------------------

(def$method (lispm-menu-mixin :mult-choose-from-menu)
	   (mult-choose-item-list &optional header)
  "pops up a menu allowing multiple choices."
  (let ((choices (tv:multiple-choose
		   (or header
		       (getentry mult-choose-header-str babylon-io-table)) 
		   mult-choose-item-list 
		   '((t "     ")))))
    (if choices
	(mapcan #'(lambda (a-choice)
		    (if (eq t (second a-choice))
			`(,(first a-choice))))
		choices))))

;;


(def$method (lispm-menu-mixin :make-comment-item-list) (list)
  "produces an item-list of non-selectable items out of the elements of list."
  (mapcar #'(lambda (element)
	      `(,(string element) :no-select t))
	  list))

(def$method (lispm-menu-mixin  :notify) (&rest comments)
  "generates a follow-the-mouse-menu in which only the first element is selectable."
  (let ((item-list (cons `(,(first comments) :value :ok)
			 ($send self :make-comment-item-list (rest comments))))
	(label (getentry select-to-continue-str babylon-io-table)))
    (do ((answer #+:SYMBOLICS (tv:menu-choose item-list label)
		 #+:TI (w:menu-choose item-list :label label)
		 #+:SYMBOLICS (tv:menu-choose item-list label)
		 #+:TI (w:menu-choose item-list :label label)
		 ))
	((eql answer :ok) :ok))))

(def$method (lispm-menu-mixin  :confirm) (&rest comments)
  "generates a normal pop-up menu in which only the first element is selectable."
  (let ((item-list (cons `(,(first comments) :value :yes)
			   ($send self :make-comment-item-list (rest comments))))
	(label (getentry select-to-confirm-str babylon-io-table)))
    (if (eql #+:SYMBOLICS (tv:menu-choose  item-list label)
	     #+:TI (w:menu-choose item-list :label label)
	     :yes)
	:yes)))

;;; eof

