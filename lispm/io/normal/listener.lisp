;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: User; Base: 10 -*-

(in-package "USER")

;;           Copyright   1987   BY
;;           G M D 
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG

;; DATE:     August 1987
;; AUTHOR:   E. Gross

;; This file depends on:  common>
;;                        commands&menus>multiple-menu-mixin
;;                      
                         

;; Contents: a mixin for the selection and execution of operations via menu.
;;           the presentation of the menu is triggered by the method :activate-kb
;;          
;;          keywords as result a selection are interpreted as selectors for kb
;;          to return a keyword or a list with a keyword as head.
;;          the keywords are interpreted as method selectors of the kb
;;          the rest of the list is used as argument list for the method.
;;          the arguments are not evaluated.


;;;;;  babylon command menus fuer symbolics
;;;;;  menu entries werden in symb-cmd-table verwaltet


(def$flavor menu-listener
	()
	(menu-item-handler)
  (:required-methods :choose-from-menu :babylon-format :kb-name)
  (:documentation "Contents: a mixin for the selection and execution of operations via menu
                   with dynamically changing entries.
                   the presentation of the menu is triggered by the method :activate-kb.
                   keywords as result of a selection are interpreted as selectors for kb
                   to return a keyword or a list with a keyword as head.
                   the keywords are interpreted as method selectors of the kb
                   the rest of the list is used as argument list for the method.
                   the arguments are not evaluated."))



;;---------------------------------------------------------------------
;;                      activation
;;---------------------------------------------------------------------

(def$method (menu-listener :run) ()
  "dummy method."
  t)


(def$method (menu-listener :get-operation) ()
  "requests the menu manager for an operation."

  (let ((result ($send cmd-menu :choose-from-menu current-item-list)))
    (cond ((and (consp result)
		(keywordp (first result))) result)
	  ((keywordp result) (list result))
	  (t nil))))


(def$method (menu-listener :execute-operation) (operation-spec)
  "executes operation if it is supported
otherwise a unknown-operation message is displayed to the user."
  
  (cond ((null operation-spec))
	(($send self :operation-handled-p (first operation-spec))
	 (lexpr-$send self operation-spec))
	(t ($send self :babylon-format
		 (getentry unknown-operation-fstr babylon-io-table)
		 (first operation-spec)
		 ($send self :kb-name)))))


(def$method (menu-listener :activate-kb) (source)
  "presents a menu and executes the selected operation.
source is normally a window.
if operation is :exit, :exit will be returned,
if it is a operation for window manipulation like :clear, :bury, etc, it will
  be sent to the corresponding window declared by source.
if it is a menu manipulation operation like :open-menu it will be executed
  and :activate-kb will be reentered.
a normal kb-operation will simply be executed."
  
  (let ((operation-spec ($send self :get-operation))
	(result nil))
    ($send self :select-kb)
    (cond ((eq (first operation-spec) :exit) :exit)
	  ((eq (first operation-spec) :to-caller)
	   (lexpr-send source (rest operation-spec)))
	  (t (setf result
		   ($send self :execute-operation operation-spec))
	     (if (eq result :activate)
		 ($send self :activate-kb source))))))

;;; eof

