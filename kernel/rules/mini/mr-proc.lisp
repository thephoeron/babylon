;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: User; Base: 10 -*-

(in-package "USER")

;;           Copyright   1988    BY
;;           G M D  
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG


;; AUTHORS:  E. Gross
;; DATE:     December 1988
;;        

;; contents: a flavor combining basic-rule-processor with a component
;;           which provides trace facilities.

;;-----------------------------------------------------------------------------
;;                   FLAVOR MINI-RULE-PROCESSOR 
;;-----------------------------------------------------------------------------

(def$flavor mini-rule-processor
	    ()
  (rule-trace-mixin basic-rule-processor))


#+:flavors(compile-$flavor-$methods mini-rule-processor)
