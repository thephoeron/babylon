;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: USER; Base: 10 -*-

(in-package "USER")

;;           Copyright   1987   BY
;;           G M D 
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG

;; DATE:     August 1987
;; AUTHOR:   E. Gross


;;         
;;------------------------------------------------------------------------
;;                  basic flavor
;;------------------------------------------------------------------------

(def$flavor normal-interface-mixin
	((source-files nil))
	(normal-window-mixin lispm-dialog-mixin)
  :settable-instance-variables
  (:required-instance-variables kb-name language)
  (:documentation "an interface-mixin generating:
                   a dialog window 
                   a common trace window for system, rule and prolog
                   an explanation window
                   the dialog window is placed in the lower half of the screen,
                   the trace window and the explanation window are placed in the
                   upper half of the sreen.
                   the windows used contain the headline-trigger-mixin."))


;;------------------------------------------------------------------------
;;         initialisierung der windows
;;------------------------------------------------------------------------


(def$method (normal-interface-mixin :gen-dialog-window) ()
  "generates a non-scrollable window using the lower half screen."
  
  (multiple-value-bind (cleft ctop cright cbottom)
      (send tv:main-screen :inside-edges)
    (let ((nht (round (* 0.5 (- cbottom ctop)))))
      (tv:make-window 'normal-dialog-window
		      :edges `(,cleft ,(+ ctop nht) ,cright ,cbottom)
		      :object self
		      :label kb-name))))


(def$method (normal-interface-mixin :gen-txsc-window) (name label)
  "generates a text-scroll window using the upper half screen."
  
  (multiple-value-bind (cleft ctop cright cbottom)
      (send tv:main-screen :inside-edges)
     ; (get-max-window-edges)  
    (let ((nht (round (* 0.5 (- cbottom ctop)))))
      (tv:make-window 'normal-txsc-window
		      :name name
		      :edges `(,cleft ,ctop ,cright ,(+ ctop nht))
		   ;;   `(,cleft ,(+ ctop nht) ,cright ,cbottom) 
		      :object self

		      :label label))))


(def$method (normal-interface-mixin :set-up-windows) ()
  "creates all necessary windows for the application.
these are a non-scrollable dialog window, a text-scroll window
onto which all trace output is directed, and a text-scroll window
as explanation window."
  
  (setf dialog-stream ($send self :gen-dialog-window))  
  (let ((stw ($send self :gen-txsc-window
		    'trace-window
		    (format nil "~a-Trace" kb-name))))
    ($send self :set-system-trace-window stw)
    ($send self :send-if-handles :set-rule-trace-window stw)
    ($send self :send-if-handles :set-prolog-trace-window stw)
    ($send self :send-if-handles :set-consat-trace-window stw)
    (when ($send self :operation-handled-p :explanation-window)
      ($send self :set-explanation-window
	     ($send self :gen-txsc-window
		    'explanation-window
		    (format nil "~a-Explanations" kb-name))))))

;;------------------------------------------------------------------------


(def$method (normal-interface-mixin :set-up-window-operations) ()
  "generates item-lists for window manipulation for the servarel windows."

  (let* ((table (get 'cmd-table language))
	 (stw ($send self :system-trace-window))
	 (exw ($send self :send-if-handles :explanation-window))
	 (common-operations
	   (append (gethash 'clear&bury-all-commands table)
		   (gethash 'clear&bury-commands table)
		   '(("   " :no-select t))
		   (gethash 'shape-commands table))))   
    (send dialog-stream :set-menu-selectable-window-operations
	  (cons (gethash 'expose-stw table)
		(if exw
		    (cons (gethash 'expose-exw table)
			  (copy-list common-operations))
		    (copy-list common-operations))))
    (send stw :set-menu-selectable-window-operations
	  (cons (gethash 'expose-dia table)
		(if exw
		    (cons (gethash 'expose-exw table)
			  (copy-list common-operations))
		    (copy-list common-operations))))
    (if exw
	(send exw :set-menu-selectable-window-operations
	      (cons (gethash 'expose-dia table)
		    (cons (gethash 'expose-stw table)
			  (copy-list common-operations)))))))

;;------------------------------------------------------------------------
(def$method (normal-interface-mixin :set-up-commands) ()
  "generates the command table for all possible menu entries of the configuration
and creates the list of items for the start-up menu"

  (let ((table (get 'cmd-table language)))
    ($send self :add-operations
	   :top (gethash 'kb-commands table))
    (when ($send self :operation-handled-p :explore-kb)
      ($send self :add-operations
	     :top `(,(gethash 'explore-current-command table))))
    ($send self :send-if-handles :set-up-frame-cmds)
    ($send self :send-if-handles :set-up-constraint-cmds)
    ($send self :send-if-handles :set-up-rule-cmds)
    ($send self :send-if-handles :set-up-prolog-cmds)    
    ($send self :add-operations
	   :top (gethash 'submenu-entry table))
    ($send self :make-menus-current :top)))


;;------------------------------------------------------------------------


(def$method (normal-interface-mixin :before :select-kb ) ()
  "clears input buffer of dialog window and selects it if it isn`t yet."

  (send dialog-stream :clear-input)
  (unless (eq (send dialog-stream :status) :selected)
    (send dialog-stream :select))
  t)

(def$method (normal-interface-mixin :before :kill-kb) ()
  "kills dialog stream of the application when the application is killed."
  (send dialog-stream :kill))


(def$method (normal-interface-mixin :loaded) (file-name)
  (unless (member file-name source-files :test #'equal)
    (setf source-files
	  (append source-files  (list file-name)))))

;;; eof

