;;; -*- Mode: LISP; Syntax: Common-lisp; Package: USER; Base: 10 -*-


(in-package "USER")


(def$flavor mini-constraint-processor
	((trace nil))
	(basic-constraint-processor)
  :gettable-instance-variables
  :settable-instance-variables
  :initable-instance-variables
  (:required-instance-variables meta-processor)
  (:documentation " Version des Constraint-Prozessors der Trace unterstuetzt"))


(def$method (mini-constraint-processor :trace-status) ()
  (if trace
      (format nil (getentry trace-on-fstr  babylon-io-table) "Consat")
      (format nil (getentry trace-off-fstr babylon-io-table) "Consat")))



#+:FLAVORS(compile-$flavor-$methods mini-constraint-processor)


;;; eof

