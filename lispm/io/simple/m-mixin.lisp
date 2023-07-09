;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: USER; Base: 10 -*-

(in-package "USER")

;;           Copyright   1987   BY
;;           G M D 
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG

;; DATE:     August 1987
;; AUTHOR:   E. Gross


;; CONTENTS: a basic interface mixin.
;; depends on  adapt;flavors
;;             basic-interface;b-mixin
;;             basic-interface; b-mloop

;;-------------------------------------------------------------------------------


(def$flavor mini-interface-mixin
	((source-files nil))
	(menu-loop basic-interface-mixin)
  :settable-instance-variables
  (:required-instance-variables language)
  (:documentation "interface-mixin reading and writing to the stream
                   bound to *default-dialog-stream*
                   and providing a menu loop mechanism"))


(def$method (mini-interface-mixin  :set-up-commands) ()
  "generates the command table for all possible menu entries of the configuration
and creates the list of items for the start-up menu"
  
  (let ((table (get 'cmd-table language)))
    ($send self :add-operations
	   :top (gethash 'kb-commands table))
    ($send self :add-operations
	   :top (list (gethash 'suspend-entry table)))
    ($send self :add-operations
	   :top (list (gethash 'exit-entry table)))
    ($send self :send-if-handles :set-up-frame-cmds)
    ($send self :send-if-handles :set-up-constraint-cmds)  
    ($send self :send-if-handles :set-up-rule-cmds)
    ($send self :send-if-handles :set-up-prolog-cmds)    
    ($send self :add-operations
	   :top (gethash 'submenu-entry table))
    ($send self :make-menus-current :top)))


(def$method (mini-interface-mixin :loaded) (file-name)
  (unless (member file-name source-files :test #'equal)
    (setf source-files
	  (append source-files  (list file-name)))))

;;; eof

