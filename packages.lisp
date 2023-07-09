(in-package :cl-user)

(defpackage fmcs
  (:nicknames flavors-metaclass-system flavors)
  (:use cl)
  (:shadow #:defclass
           #:defmethod
           #:make-instance
           #:slot-value
           #:standard-object
           #:standard-class
           #:self
           #:call-next-method)
  (:export #:*redefine-warnings*
           #:self
           #:$slot 
           #:def$flavor
           #:def$method
           #:undef$method 
           #:def$frame
           #:def$behavior
           #:trace$method
           #:untrace$method
           #:is-traced$method
           #:compile-$flavor-$methods 
           #:defwhopper
           #:continue-whopper 
           #:$send
           #:lexpr-$send
           #:flavorp
           #:flavor-instancep
           #:flavor-typep
           #:flavor-type-of
           #:get-flavor-instance-slots
           #:symbol-value-in-$instance 
           #:make-$instance
           #:make-window-or-instance
           #:mcs-trace
           #:mcs-untrace
           #:mcs-is-traced))

(defpackage babylon
  (:nicknames baby)
  (:use cl fmcs) 
  ;;; COMMON-LISP       - /= < <= = > >= AND OR NOT ATOM INTEGER READ FORMAT WRITE
  ;;; CCL               CUT TRUE FALSE
  (:export ;; symbols
           #:yes
           #:no
           #:unknown
           #:help 
           ;; knowledge base
           #:*babylon-version*
           #:*current-knowledge-base*
           #:send-kb
           #:send-current-knowledge-base
           #:self
           #:$send
           #:lexpr-$send
           #:cc-load
           #:german
           #:english
           #:def-kb-configuration
           #:def-kb-instance
           #:instructions
           #:meta-processor-core
           #:kb-processor-core
           #:lisp-mixin
           #:free-text-mixin
           ;; input/output interface
           #:basic-interface-mixin
           #:mini-interface-mixin
           #:normal-interface-mixin
           #:say
           ;; frame processor
           #:basic-frame-mixin
           #:mini-frame-mixin
           #:normal-frame-mixin
           #:defframe
           #:definstance
           #:defbehavior
           #:<--
           #:<-
           #:$value
           #:$eval
           #:define-possible-values-behavior
           #:supers
           #:slots
           #:active-value
           #:with
           #:of
           #:-
           #:=
           #:>
           #:>=
           #:<
           #:<= 
           #:one-of
           #:all-of
           #:between
           #:is-frame
           #:is-instance 
           #:get-instance
           #:get-instance-list
           #:get-all-instances
           #:set-instance-pointer 
           #:get-supers
           #:get-all-supers
           #:get-subframes
           #:get-all-subframes
           ;; rule processor
           #:basic-rule-mixin
           #:mini-rule-mixin
           #:normal-rule-mixin
           #:defrule-set
           #:send-rule
           #:$and
           #:?and
           #:and
           #:$or
           #:?or
           #:or
           #:$true
           #:$false
           #:$conclude
           #:$execute
           #:$ask
           #:find-implications
           ;; prolog processor
           #:basic-prolog-mixin
           #:mini-prolog-mixin
           #:normal-prolog-mixin
           #:defrelations
           #:defclauses
           #:defaxiom-set
           #:cut
           #:true
           #:false
           #:call
           #:callpred 
           ;;; AND OR already exported
           #:not
           #:once
           #:repeat
           #:bagof
           #:asserta
           #:assertz
           #:clause
           #:retract
           #:abolish
           ;;; = < > >=
           #:/=
           #:==
           #:/==
           #:=.=
           #:=/=
           #:=<
           #:var
           #:atom
           #:integer
           #:atomic 
           #:read
           #:write
           #:format
           #:lisp
           #:is
           #:form
           #:vars
           #:bound
           #:status 
           #:frame
           #:frame-def
           #:has-super
           #:instance
           #:instance-def
           #:has-slot
           #:has-property
           #:rule-set
           #:rule-set-def
           #:has-rule 
           #:free-text
           ;; constraint processor
           #:basic-constraint-mixin
           #:mini-constraint-mixin
           #:normal-constraint-mixin
           #:defconstraint
           #:defrestriction
           #:primitive
           #:compound
           #:satisfied-p
           #:constrained-p
           #:unconstrained
           #:satisfy))
