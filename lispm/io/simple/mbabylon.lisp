;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: User; Base: 10 -*-

(in-package "USER")

;;           Copyright   1987    BY
;;           G M D  
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG


;;  AUTHOR:  E. Gross




(def$flavor mini-babylon
	()
	(select-mixin menu-loop lispm-dialog-mixin system-core))

 
(def$method (mini-babylon :after :init) (&rest ignore)
  (setf select-string (or select-string "BABYLON"))
  (setf select-key    (or select-key #+:SYMBOLICS #\B  #+:TI #\W))
  ($send self :make-selectable))


;;----------------------------------------------------------------------

(def$method (mini-babylon :set-up-windows) ()
  t)


;;------------------------------------------------------------ 


(def$method (mini-babylon :set-up-commands) ()
  (let ((table (get 'cmd-table language)))
    ($send self :add-operations
		  :top (gethash 'system-commands table))
    (when ($send self :operation-handled-p :explore-any-kb)
      ($send self :add-operations
	:top `(,(gethash 'explore-any-command table))))
    ($send self :add-operations
		  :top `(,(gethash 'exit-entry table)))
    ($send self :make-menus-current :top)))



(compile-$flavor-$methods mini-babylon) 

;;; eof

