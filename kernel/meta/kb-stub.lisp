;;  -*- Mode: Lisp; Syntax: Common-Lisp; Package: User; Base: 10. -*-

(in-package "USER")

;;           Copyright   1986, 1985 and 1984    BY
;;           G M D  
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG



;; AUTHORS:  Franco di Primio, Eckehard Gross, Juergen Walther


(def$flavor kb-stub
	   ((meta-processor nil))
	   ()
  #+:FLAVORS(:default-handler kb-stub-handler)
  :settable-instance-variables
  (:documentation "flavor allowing the free-text-processor to play
the role of meta-processor."))


(def$method (kb-stub :eval) (goal mode source &rest args)
  "asks the user via free-text-processor to evaluate a request."
  (declare (ignore source))
  (let ((method (get 'free-text mode)))
    (cond ((null method)
	   (baberror (getentry unknown-eval-mode-error-fstr io-table)
		     mode
		     'free-text
		     goal))
	  (t (lexpr-$send *current-knowledge-base* method goal mode args)))))

#+:FLAVORS(defun kb-stub-handler (self ignore selector &rest args)
	  (lexpr-$send ($send self :meta-processor) selector args))

#+:MCF(def$method (kb-stub :default-handler) (message)
	(lexpr-$send meta-processor (first message) (rest message)))