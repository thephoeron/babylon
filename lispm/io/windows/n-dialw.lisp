;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: User; Base: 10 -*-

(in-package "USER")

;;           Copyright   1987, 1986, 1985 and 1984    BY
;;           G M D  
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG


;; AUTHOR:   J. Walther, E. Gross


;; This file depends on:  basics>common-fns
;;                        io>windows>inverted-headline-mixin
;;                        io>windows>bab-basic-window-mixin
;;                        io>windows>headline-trigger-mixin
;;



(defflavor lmbasic-dialog-window
	()
	(#+:TI tv:auto-scrolling-mixin
	 tv:window)
  :settable-instance-variables
  (:documentation "This is a basic flavor for the dialog window.
                   It provides a :format method to output strings like
                   using the format function and a :clear method to
                   empty the windows internal item list.")
  (:default-init-plist
   :borders 1
   :more-p t
   :blinker-p t
   :save-bits t
   :deexposed-typeout-action :permit
   ))

;;-----------------------------------------------------------------------------
;;           basic methods
;;-----------------------------------------------------------------------------

(defaction (lmbasic-dialog-window :babylon-format) (fstr &rest args)
  "Output to scroll window using format string and arguments like using format function."
    (apply 'format self fstr args))


(defaction (lmbasic-dialog-window :format) (fstr &rest args)
  "Output to scroll window using format string and arguments like using format function."
    (apply 'format self fstr args))


(defaction (lmbasic-dialog-window :babylon-read) (&optional special-keys)
  "reads input from dialog window.
   if special-keys occur as first character type-ahead input will be ignored."
  
  (let* ((char (peek-char nil self)))
    (cond ((member char special-keys :test 'char-equal)
	   (clear-input self)
	   char)
	  (t (read self)))))


(defaction (lmbasic-dialog-window :clear) ()
    (send self :clear-window))


;;-----------------------------------------------------------------------------
;;       dialog window with headline trigger
;;-----------------------------------------------------------------------------

(defflavor normal-dialog-window
	()
	(normal-window-manager-mixin
	 window-operations-mixin
	 lmbasic-dialog-window)
  (:documentation "a dialog window with headline trigger to pop up a menu
                   with window manipulation operations."))


;;-----------------------------------------------------------------------------
;;      dialog window with headline trigger and lisp-listener
;;-----------------------------------------------------------------------------

(defflavor normal-lisp-listener
	  ()
  (normal-dialog-window tv:lisp-listener)
  (:documentation "a dialog  window with headline trigger to pop up a menu
                   with window manipulation operations and a lisp-listener functionality."))


;;-----------------------------------------------------------------------------
;;      dialog window with headline trigger and dynamic lisp-listener
;;-----------------------------------------------------------------------------

#+:SYMBOLICS (defflavor normal-dynamic-lisp-listener
			()
			(normal-dialog-window dw::dynamic-lisp-listener)
	       (:default-init-plist :margin-components
				    '((dw:margin-scroll-bar)
				      (dw:margin-label :string "")))
	       (:documentation "a dialog window with headline trigger to pop up a menu
                   with window manipulation operations and a dynamic
                   lisp-listener functionality."))

(compile-flavor-methods lmbasic-dialog-window normal-dialog-window normal-lisp-listener
			#+:SYMBOLICS normal-dynamic-lisp-listener
			)

;;; eof

