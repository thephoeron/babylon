;;; -*- Mode: Lisp; Syntax: Common-Lisp; Base: 10; Package: User -*-

(in-package "USER")

;;           Copyright   1986, 1985 and 1984    BY
;;           G M D  
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG



;;  AUTHOR:  E. Gross, J.Walther

;;; the sabn feature signals allowing slot access by name within method bodies
;;; SABN = Slot Access By Name

(eval-when (compile load eval)
  (unless (member :flavors *features*)
    (push :FLAVORS *features*))
  (push :SABN *features*))

;;---------------------------------------------------------------------
;; mapping to the flavor system used on symbolics and texas instruments
;;---------------------------------------------------------------------

(defmacro def$flavor (name instance-vars components &rest options)
  `(defflavor ,name ,instance-vars ,components ,@options))

#+:SYMBOLICS(defun flavorp (flavor-name)
	      (flavor:find-flavor flavor-name nil))

#+:TI(defun flavorp (flavor-name)
       (typecase flavor-name
         (symbol (get flavor-name 'si:flavor))
         (si:flavor flavor-name)))

(defmacro def$frame (name instance-vars components &rest options)
  `(defflavor ,name ,instance-vars ,components ,@options))

;;-----------------------------------------------------------------

#+:SYMBOLICS(defun transform-spez (method-spez)
	      (if (or (eq (second method-spez) :after)
		      (eq (second method-spez) :before))
		  `(,(third method-spez) ,(first method-spez) ,(second  method-spez))
		  `(,(second method-spez) ,(first method-spez))))

#+:SYMBOLICS(defmacro def$method (method-spez varlist . body)
	      `(defmethod ,(transform-spez method-spez) ,varlist ,@body))

#+:SYMBOLICS(defmacro defaction (method-spez varlist . body)
	      `(defmethod ,(transform-spez method-spez) ,varlist ,@body))


#+:SYMBOLICS (defmacro def$behavior (method-spez varlist . body)
	       `(defmethod ,(transform-spez method-spez) ,varlist ,@body))

#+:TI(defmacro def$method ((flav-name . type&selector) varlist . body)
       `(defmethod (,flav-name  ,@type&selector) ,varlist  ,@body))

#+:TI(defmacro defaction ((flav-name . type&selector) varlist . body)
       `(defmethod (,flav-name  ,@type&selector) ,varlist  ,@body))

#+:TI(defmacro def$behavior ((flav-name . type&selector) varlist . body)
       `(defmethod (,flav-name  ,@type&selector) ,varlist  ,@body))


(defmacro compile-$flavor-$methods (&rest flavors)
  `(compile-flavor-methods ,@flavors))


;;-----------------------------------------------------------------


#+:SYMBOLICS(defmacro symbol-value-in-$instance (instance slot-name)
	      `(symbol-value-in-instance ,instance ,slot-name))


#+:TI(defmacro symbol-value-in-$instance (instance slot-name)
       `(symeval-in-instance ,instance ,slot-name))


#+:SYMBOLICS(defun get-flavor-instance-slots (instance)
	      (flavor:flavor-all-instance-variables (sys:%instance-flavor instance)))

#+:TI(defun get-flavor-instance-slots (instance)
       (si:flavor-all-instance-variables (si:instance-flavor instance)))

#+:SYMBOLICS(defun is-component (component flavor)
	      (member component (flavor:get-all-flavor-components flavor)))

#+:SYMBOLICS(defmacro make-window-or-instance (flavor &rest init-plist)
	      `(cond ((or (is-component 'tv:window ,flavor)
			  (is-component 'tv:basic-frame ,flavor))
		      (tv:make-window ,flavor ,@init-plist))
		     (t (make-instance ,flavor ,@init-plist))))

#+:TI(defmacro make-window-or-instance (flavor &rest init-plist)
       `(make-instance ,flavor ,@init-plist))

(defmacro make-$instance (flavor &rest init-plist)
  `(make-instance ,flavor ,@init-plist))


;;-----------------------------------------------------------------

(defmacro $send (instance selector &rest args)
  `(send ,instance ,selector ,@args))

(defmacro lexpr-$send (instance selector &rest args)
  `(lexpr-send ,instance ,selector ,@args))

(defmacro send-message (instance selector &rest args)
  `(send ,instance ,selector ,@args))

(defmacro lexpr-send-message (instance selector &rest args)
  `(lexpr-send ,instance ,selector ,@args))


;;-----------------------------------------------------------------

(defmacro flavor-typep (instance flavor)
  `(typep ,instance ,flavor))

(defmacro flavor-type-of (instance)
  `(type-of ,instance))

;;------------------------------------------------------------------------
;;             aux stuff for developing
;;------------------------------------------------------------------------

#+:SYMBOLICS(defmacro undef$method (method-spez) 
	      `(fundefine '(flavor:method . ,(transform-spez method-spez))))

#+:TI (defmacro undef$method ((flav-name . type&selector))
	`(undefmethod (,flav-name . ,type&selector)))

#+:SYMBOLICS (defmacro trace$method (method-spez)
	       "traces a method on *trace-output*"  
	       `(trace (function (flavor:method ,@(transform-spez method-spez)))))

#+:SYMBOLICS (defmacro untrace$method (method-spez)
	       "traces a method on *trace-output*"  
	       `(untrace (function (flavor:method ,@(transform-spez method-spez)))))

#+:TI(defmacro trace$method ((flav-name . type&selector))
       "traces a method on *trace-output*"
       `(trace (:function (:method ,flav-name . ,type&selector))))

#+:TI(defmacro untrace$method ((flav-name . type&selector))
       "untraces a method"
       `(untrace (:method ,flav-name . ,type&selector)))

;;; eof

