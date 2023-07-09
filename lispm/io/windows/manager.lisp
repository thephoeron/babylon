;;; -*- Mode: LISP; Syntax: Common-Lisp; Base: 10 -*-

(in-package "USER")

;;           Copyright   1987   BY
;;           G M D 
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG

;; DATE:     January 1987
;; AUTHOR:   Karl Wittur

;; This file depends on:  babylon>io>windows>normal-headline

;; Contents: a mixin for windows  that allows
;;           1. to invoke window specific operations by menu-selection
;;              the menu appears after mouse-r-1-click in the headline-region of the window.
;;              the headline is automatically produced by this mixin.
;;           2. to activate an object associated with the window
;;              the object receives the message :activate-kb with argument self
;;              after mouse-m-1-click somewhere in the window.

;;--------------------------------------------------------------------------------------
;;                          NORMAL-WINDOW-MANAGER-MIXIN
;;--------------------------------------------------------------------------------------

(defflavor normal-window-manager-mixin
	((menu-selectable-window-operations nil)
	 (object nil))
	(normal-headline-mixin)
  :settable-instance-variables
  (:documentation "a mixin for windows  that allows
                   1. to invoke window specific operations by menu-selection
                      the menu appears after mouse-r-1-click in the headline-region
                      of the window.
                      the headline is automatically produced by this mixin.
                   2. to activate an object associated with the window
                      the object receives the message :activate-kb with argument self
                      after mouse-m-1-click somewhere in the window.

                   MENU-SELECTABLE-WINDOW-OPERATIONS should contain a list of menu
                   entries which are used as items for the pop-up-menu invoked by
                   mouse-r-1-click in the headline-region of the window. The value
                   returned by the selection should be the name of a message
                   which is send to the window. the MENU-SELECTABLE-WINDOW-OPERATIONS can
                   change dynamically (a dynamic menu is used)
                   OBJECT should be the instance which receives the message :activate-kb self
                   after mouse-m-1-click somewhere in the window."))

;;--------------------------------------------------------------------------------------


(defaction (normal-window-manager-mixin :add-selectable-operation)
	   (menu-entry-for-operation)
  "method for updating menu-selectable-window-operations."
  
  (setf menu-selectable-window-operations
	`(,menu-entry-for-operation ,@menu-selectable-window-operations)))

;;--------------------------------------------------------------------------------------


(defaction (normal-window-manager-mixin :mouse-click)
	   (buttons x y)
  "recognizes if a mouse-r-1-click appears in the headline-region
and if so, starts the window-managing-process."

  (cond ((and object
	      #+:3600 (eq buttons #\mouse-m-1)
	      #+:TI (char-equal buttons #\mouse-m-1))
	 (progn (process-run-function '(:name "window manager" :priority 10.)
	       #'funcall object :activate-kb self)) t)
	((and menu-selectable-window-operations
	      #+:3600 (eq buttons #\mouse-r-1)
	      #+:TI (char-equal buttons #\mouse-r-1)
	      (send self :is-headline-point x y))
	 (progn (process-run-function '(:name "window manager" :priority 10.)
	       #'funcall self :execute-window-managing)) t)))


;;--------------------------------------------------------------------------------------


(defaction (normal-window-manager-mixin :execute-window-managing)
	   ()
  "this implements the window-managing-process.
a menu is built with the specified entries and the value of the selection
is taken as message-name which is send to the window."

  (let ((selected-window-operation (send self :get-window-operation)))
    (if selected-window-operation
	(send self :execute-window-operation selected-window-operation))))

;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -



(defaction (normal-window-manager-mixin :get-window-operation)
	   ()
  "default-method for getting the window-operation."
  
  (using-resource (menu normal-window-manager-menu tv:mouse-sheet)
    (send menu :set-item-list-pointer
	  `(send ,self :menu-selectable-window-operations))
    (catch-error-restart ((error) "Exit menu") (send menu :choose))))

;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


(defaction (normal-window-manager-mixin :execute-window-operation)
	   (selected-window-operation)
  "default-method for executing the seleted operation."
  
  (cond ((send self :operation-handled-p selected-window-operation)
	 (send self selected-window-operation))
	((and object
	      (send object :operation-handled-p selected-window-operation))
	 (send object selected-window-operation))))

;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

;; the menu is implemented as a resource


(tv:defwindow-resource normal-window-manager-menu ()
		   :make-window
		   (tv:dynamic-momentary-window-hacking-menu
		     #+:symbolics :default-character-style #+:symbolics '(:dutch :roman :small)))

(defvar normal-window-manager-menu)


;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


(defaction (normal-window-manager-mixin :change-menu-resource) (selector &rest args)
  (using-resource (menu basic-window-manager-menu tv:mouse-sheet)
    (lexpr-send menu selector args)))

;;; eof

