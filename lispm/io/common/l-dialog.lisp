;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: USER; Base: 10 -*-

(in-package "USER")

;;           Copyright   1987   BY
;;           G M D 
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG

;; DATE:     August 1987
;; AUTHOR:   Eckehard Gross



(def$flavor lispm-dialog-mixin
	((dialog-stream *default-dialog-stream*))
	(lispm-menu-mixin)
  :settable-instance-variables
  (:required-instance-variables language)
  (:documentation "a mixin which handels features for the dialog window.
                   there are methods for selecting, exposing, clearing and
                   burying the dialog window. further more there are methods
                   which are used by the processors for i/o."))


;;----------------------------------------------------------------------------


(def$method (lispm-dialog-mixin :expose-kb) ()
  "exposes dialog window."
  (send dialog-stream :expose))    


(def$method (lispm-dialog-mixin :clear-kb) ()
  "clears dialog window and its input buffer."  
  (send dialog-stream :clear-input)
  (send dialog-stream :clear-window)
  t)


(def$method (lispm-dialog-mixin :bury-kb) ()
  "buries dialog window."
  (send dialog-stream :bury))


;;----------------------------------------------------------------------------
;;          methods to be used by the processors
;;----------------------------------------------------------------------------


(def$method (lispm-dialog-mixin :babylon-format) (fstr &rest args)
  "write method used by the processors."
  (apply #'format dialog-stream fstr args))

(def$method (lispm-dialog-mixin :format) (fstr &rest args)
  "same as :babylon-format."
  (apply #'format dialog-stream fstr args))

;;-----------------------------------------------------------------------------


(defun is-mouse-button (blip type window)
  (and (listp blip)
       (or (eq (first blip) :mouse-button)
	   (eq (first blip) :mouse-click))
       #+:SYMBOLICS (eq (second blip) type)
       #+:TI (char-equal (second blip) type)
       (eq (third blip) window)))

(defun is-any-mouse-button (blip)
  (and (listp blip)
       (or (eq (first blip) :mouse-button)
	   (eq (first blip) :mouse-click))))

(defun coerce-char-eql (char1 char2)
  (eql (character char1) (character char2)))

(def$method (lispm-dialog-mixin :babylon-read) (&optional special-keys)
  (let ((blip (send dialog-stream :any-tyi)))
    (cond ((and #+:SYMBOLICS (characterp blip)
		#+:TI (numberp blip)
		(first (member blip special-keys :test #'coerce-char-eql))))
	  ((not (is-any-mouse-button blip))
	   (send dialog-stream :untyi blip)
	   (read dialog-stream))
	  ((and (is-mouse-button blip #\mouse-l-2 dialog-stream)
		(member *c-help-key* special-keys :test #'eql))
	   *c-help-key*)
	  ((and (is-mouse-button blip #\mouse-m-2 dialog-stream)
		(member *help-key* special-keys :test #'eql))
	   *help-key*)
	  (t (send dialog-stream :clear-input)
	     ($send self :babylon-read special-keys)))))

;;-----------------------------------------------------------------------------

(def$method (lispm-dialog-mixin  :type-end-to-continue) (string)
  "writes string to dialog-stream and waits till *end-key* is entered.
returns :ok."

  (format dialog-stream "~%~A ~@? " *bab-prompt* string *end-key*)
  (multiple-value-bind (x y)
      (send dialog-stream :read-cursorpos)
    (declare (ignore x))
    (do ((char (read-char dialog-stream)
	       (read-char dialog-stream)))
	((eql char *end-key*)
	 (send dialog-stream :set-cursorpos 0 y)
	 (send dialog-stream :delete-line)
	 :ok))))


(def$method (lispm-dialog-mixin :prompt-for-input) (comment)
  "opens a small window for user input.
   comment is used as headline. the string which is inputed by
   the user will be returnd as result of the method."
 
  (zwei:typein-line-readline-near-window dialog-stream comment))

 
;;; eof

