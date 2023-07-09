;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: User; Base: 10 -*-

(in-package "USER")

;;           Copyright   1987    BY
;;           G M D  
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG


;;  AUTHOR:  Eckehard Gross


;;------------------------------------------------------------
;;      test configuration
;;------------------------------------------------------------



(def$flavor normal-babylon
	()
	(select-mixin menu-listener lispm-dialog-mixin system-core)
  :settable-instance-variables)

 
(def$method (normal-babylon :after :init) (&rest ignore)
  ($send self :set-up-windows)
  ($send self :set-up-window-operations)
  (setf select-string (or select-string "BABYLON"))
  (setf select-key    (or select-key #+:SYMBOLICS #\B  #+:TI #\W))
  ($send self :make-selectable)
  (setf *default-dialog-stream* dialog-stream))


;;------------------------------------------------------------


(def$method (normal-babylon :set-up-windows) ()
  (setf dialog-stream ($send self :gen-dialog-window)))


(def$method (normal-babylon :gen-dialog-window) ()
  (multiple-value-bind (cleft ctop cright cbottom)
      (send tv:main-screen :inside-edges)
    (let ((nht (round (* 0.5 (- cbottom ctop)))))
      (tv:make-window #+:SYMBOLICS 'normal-dynamic-lisp-listener
		      #+:TI 'normal-lisp-listener
		      :label "BABYLON" 
		      :edges `(,cleft ,ctop ,cright ,(+ ctop nht))
		   ;;   `(,cleft ,(+ ctop nht) ,cright ,cbottom) 
		      :object self
		      :more-p nil
		      :blinker-p t))))

;;----------------------------------------------------------------------------

(def$method (normal-babylon :set-up-window-operations) ()
  (let* ((table (get 'cmd-table language)))
    (send dialog-stream :set-menu-selectable-window-operations
	  (append (gethash 'clear&bury-commands table)
		  (copy-list (gethash 'shape-commands table))))))

;;----------------------------------------------------------------------------

(def$method (normal-babylon :set-up-commands) ()
  (let ((table (get 'cmd-table language)))
    ($send self :add-operations
	  :top (gethash 'system-commands table))
    (when ($send self :operation-handled-p :explore-any-kb)
      ($send self :add-operations
	:top `(,(gethash 'explore-any-command table))))
    ($send self :make-menus-current :top)))

;;---------------------------------------------------------------------------- 

(def$method (normal-babylon  :run) ()
  (multiple-value-bind (ignore y)
      (send dialog-stream :read-cursorpos)
    (send dialog-stream :set-cursorpos 0 y)
    (send dialog-stream :delete-line)
    (format dialog-stream "~A" (get-prompt-string))
    :exit))

;;---------------------------------------------------------------------------- 



(def$method (normal-babylon :notify) (&rest comments)
  "writes comments to dialog-stream.
comments are printed without slashification."
  (format dialog-stream "~%~A ~A " *bab-prompt* (first comments))
  (if (rest comments)
      (dolist (string (rest comments))
	(format dialog-stream "~%     ~A " string)))
  (terpri dialog-stream))

(def$method (normal-babylon :type-end-to-continue) (string)
  "writes string to dialog-stream and waits till *end-key* is entered.
returns :ok."
  (format dialog-stream "~%~A ~@? " *bab-prompt* string *end-key*)
  (do ((char (read-char dialog-stream)
	     (read-char dialog-stream)))
      ((eql char *end-key*) :ok)))


(def$method (normal-babylon  :prompt-for-input) (comment)
  "reads in a line from dialog-stream and returns the line as string.
comment is used as prompt."
  (prog2
    (format dialog-stream "~%~A ~A " *bab-prompt* comment)
    (read-line dialog-stream)
    (terpri dialog-stream)))

;;----------------------------------------------------------------------------


(def$method (normal-babylon :before :select-kb ) ()
  "clears input buffer of dialog window and selects it if it isn`t yet."

  (send dialog-stream :clear-input)
  (unless (eq (send dialog-stream :status) :selected)
    (send dialog-stream :select))
  t)
 

(def$method (normal-babylon :before :kill-kb) ()
  (send dialog-stream :kill))

(compile-$flavor-$methods normal-babylon)

;;; eof

