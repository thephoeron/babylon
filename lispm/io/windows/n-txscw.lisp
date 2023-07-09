;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: User; Base: 10 -*-

(in-package "USER")

;;           Copyright   1987, 1986, 1985 and 1984    BY
;;           G M D  
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG


;; AUTHOR:   J. W A L T H E R


;; This file depends on:  basics>common-fns
;;                        io>windows>inverted-headline-mixin
;;                        io>windows>headline-trigger-mixin


(defflavor lmbasic-txsc-window
	()
	(#+:SYMBOLICS tv:flashy-scrolling-mixin
	 #+:TI w:scroll-bar-mixin	
	 tv:text-scroll-window
	 tv:window)
  :settable-instance-variables
  (:documentation "This is the basic flavor for all text scroll output windows.
                   It provides a format method to output strings like using the
                   format function and a clear method to empty the windows
                   internal item list.")
  (:default-init-plist
   :borders 1
   :more-p nil
   :blinker-p nil
   :save-bits t
   :deexposed-typeout-action :permit
   ))


;;---------------------------------------------------------------------------------
;;               aux methods for text scroll windows
;;---------------------------------------------------------------------------------

(defaction (lmbasic-txsc-window :print-item) (item &rest ignore)
  "Redefines the print method for lmbasic-txsc-window to strings only."
  (princ item self))

(defaction (lmbasic-txsc-window :string-item) (string)
  "Function to convert a string into a list of strings without carriage returns."
  
  (unless (string= string "")
    (prog ((from (if (eql (char string 0) #\cr) 1 0)) cr-pos result)
       A  (setq cr-pos (position #\cr string :start from :test #'char=))
	  ;(string-search-char #\cr string #+:3600 :start from))
	  (if (null cr-pos)
	      (return (nreverse (cons (subseq string from) result))))
	  (push (subseq string from cr-pos) result)
	  ;(substring string from cr-pos) result)
	  (setq from (1+ cr-pos))
	  (go A))))


(defaction (lmbasic-txsc-window :convert-sc-window-item) (args)
  "Function to convert an item for a mouse sensitive scroll window into a string."
  
  (apply #'concatenate 'string  (mapcar #'(lambda (item)
					    (second (member :string item)))
					args)))


;;--------------------------------------------------------------------------------
;;            basic methods for text scroll windows
;;---------------------------------------------------------------------------------

(defaction (lmbasic-txsc-window :format) (&rest args)
  "Output to scroll window using format string and arguments like using format function."
  
  (cond ((stringp (first args))
	 (let ((string (apply 'format nil (first args) (rest args))))
	   (dolist (a-string (send self :string-item string))
	     (send self :append-item a-string))))
	(t (let ((string (send self :convert-sc-window-item args)))
	     (send self :append-item string))))
  (send self :put-last-item-in-window))


(defaction (lmbasic-txsc-window :clear) (&rest ignore)
  "Clear the item list."
  (send self :set-items 100.))


;;-----------------------------------------------------------------------------
;;           text scroll window with headline trigger mixin
;;-----------------------------------------------------------------------------


(defflavor normal-txsc-window
	()
	(normal-window-manager-mixin
	 window-operations-mixin
	 lmbasic-txsc-window)
  (:documentation "a text-scroll window with headline trigger to pop up a menu
                   with window manipulation operations."))


;;-----------------------------------------------------------------------------

(compile-flavor-methods lmbasic-txsc-window normal-txsc-window)

  
;;; eof

