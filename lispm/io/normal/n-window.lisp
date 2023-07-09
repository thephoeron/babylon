;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: USER; Base: 10 -*-

(in-package "USER")

;;           Copyright   1987   BY
;;           G M D 
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG

;; DATE:     August 1987
;; AUTHOR:   E. Gross

;;----------------------------------------------------------------------

(def$flavor normal-window-mixin
	()
	(menu-listener)
  (:required-instance-variables dialog-stream language)
  :settable-instance-variables
  (:documentation "a component to build interface mixins spezializing interface-core.
                  the flavor provides methods to expose, bury, clear and kill
                  a system trace window, a rule trace window, a prolog trace window
                  and an explanation window. not all of these windows must
                  actually be available."))


(def$method (normal-window-mixin :after :init) (&rest ignore)
  "initializes i/o-system."
  ($send self :send-if-handles :set-up-windows)
  ($send self :send-if-handles :set-up-window-operations))

;;----------------------------------------------------------------------

(def$method (normal-window-mixin  :get-windows) ()
  "returns a list of windows (not streams !) which are provided by the kb."

  (do ((selectors '(:explanation-window
		     :prolog-trace-window
		     :rule-trace-window
		     :consat-trace-window
		     :system-trace-window)
		  (rest selectors))
       (window nil)
       (windows nil))
      ((null selectors) windows)
    (setf window ($send self :send-if-handles (first selectors)))
    (unless (or (null window) (member window windows))
      (push window windows))))



(def$method (normal-window-mixin :expose-dia) ()
  "exposes dialog window."
  (send dialog-stream :expose))

(def$method (normal-window-mixin :expose-stw) ()
  "exposes system trace window if available."
  ($send self :send-if-handles :send-system-trace-window :expose))

(def$method (normal-window-mixin :expose-rtw) ()
  "exposes rule trace window if available."
  ($send self :send-if-handles :send-rule-trace-window :expose))

(def$method (normal-window-mixin :expose-ptw) ()
  "exposes prolog trace window if available."
  ($send self :send-if-handles :send-prolog-trace-window :expose))

(def$method (normal-window-mixin :expose-ctw) ()
  "exposes prolog trace window if available."
  ($send self :send-if-handles :send-consat-trace-window :expose))

(def$method (normal-window-mixin :expose-exw) ()
  "exposes explaination window if available."
  ($send self :send-if-handles :send-explanation-window :expose))

(def$method (normal-window-mixin :before :clear-kb) ()
  "clears all windows provided by the kb."
  ($send self :send-if-handles :send-system-trace-window :clear)
  ($send self :send-if-handles :send-rule-trace-window   :clear)
  ($send self :send-if-handles :send-prolog-trace-window :clear)
  ($send self :send-if-handles :send-consat-trace-window :clear)
  ($send self :send-if-handles :send-explanation-window  :clear))


(def$method (normal-window-mixin :before :bury-kb) ()  
  "buries all windows provided by the kb."
  ($send self :send-if-handles :send-system-trace-window :bury)
  ($send self :send-if-handles :send-rule-trace-window   :bury)
  ($send self :send-if-handles :send-prolog-trace-window :bury)
  ($send self :send-if-handles :send-consat-trace-window :bury)
  ($send self :send-if-handles :send-explanation-window  :bury))


(def$method (normal-window-mixin :before :kill-kb) ()
  "kills all windows provided by the kb."
  ($send self :send-if-handles :send-system-trace-window :kill)
  ($send self :send-if-handles :send-rule-trace-window   :kill)
  ($send self :send-if-handles :send-prolog-trace-window :kill)
  ($send self :send-if-handles :send-consat-trace-window :kill)
  ($send self :send-if-handles :send-explanation-window  :kill))

;;; eof

