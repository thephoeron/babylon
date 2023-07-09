;;; -*- Mode: LISP; Syntax: Common-lisp; Package: USER; Base: 10 -*-


(in-package "USER")


;
;		Evaluierung primitiver Constraints
;
;
;  3.6. 1987  Anpassung an GENERA 7; R. Lopatta
; 

;
;	PRIMITIVES CONSTRAINT
;
;
;	Flavor mit folgenden Variablen 
;		interface:  	list( <variables> )
;		relation:	<relation>
;		condition:	<lisp-expr>
;

(def$flavor constraint

	((interface nil)
	 (relation nil)
	 (condition t)
	 (compiled-condition-flag nil))
	()
  
  :gettable-instance-variables
  :settable-instance-variables
;  :initable-instance-variables
  )


(def$method (constraint :print) (name stream)
  
  ;;;	Ausgabe des Constraints
  
  (princ " " stream)
  (terpri stream)
  (babpprint
    `(defconstraint ,name
       (:type primitive)
       (:interface . ,interface)
       (:relation . ,relation)
       (:condition ,(if compiled-condition-flag
			:or condition)))
    stream)
  (terpri stream))


;
;	EVALUATION
;


(def$method (constraint :activate) (new-value-ass
				     &optional
				     init-option
				     (consistency-level 'local-consistency)
				     (number-of-results nil))
  
  ;;; Eingabe:	Zuweisung von Wertemengen an die Constraint-Variablen
  ;;;
  ;;; Ausgabe:  neue Wertemengenzuweisung,
  ;;;           falls consistency-level = local-consistency;
  ;;;           Liste von Zuweisungen, die den Variablen einzelne Werte
  ;;;           zuordnen, falls consistency-level = global-consistency
  ;;;
  ;;; falls fuer eine Wertebelegung die activation-Bedingung
  ;;; nicht erfuellt ist, wird die alte Wertebelegung als Ergebnis
  ;;; zurueckgeliefert (bei local-consistency) bzw. die Liste aller
  ;;; moeglichen Einzelwertzuweisungen (bei global-consistency)
  ;;;
  ;;; der Parameter init-option ist ohne Bedeutung, muss wegen
  ;;; des Compilers jedoch mindestens einmal benutzt werden:
  
  init-option
  
  (catch 'error
    (let* ((multiple-value-ass (adjust-value-ass
				 interface
				 new-value-ass))
	   (list-of-value-ass (split-variable-alist
				multiple-value-ass)))
      
      (case consistency-level
	
	((local-consistency global-consistency-if-single-valued)	 
	 (if (activation-p condition list-of-value-ass)
	     (combine-variable-alists
	       (multiple-evaluation relation interface list-of-value-ass)
	       interface)
	     multiple-value-ass))
	
	(global-consistency
	  (select-some-value-ass
	    (if (activation-p condition list-of-value-ass)
		(multiple-evaluation relation interface
				     list-of-value-ass)
		(mapcar #'convert-simple-to-multiple
			list-of-value-ass))
	    number-of-results))))))
	  

(def$method (constraint :evaluate-expression)
	    (constraint-expr global-net-spec &rest ignore)
  
  ;;; fuehrt Umsetzung globaler in lokale Variablen durch
  ;;; und umgekehrt
  
  (local-to-global-subst
    
    constraint-expr
    ($send self
	   :activate
	   (global-to-local-subst
	     constraint-expr
	     global-net-spec))))


(defun multiple-evaluation (relation variables list-of-value-ass)
  
  ;;; falls keine einwertige Variablenbelegung existiert,
  ;;; wird die leere Liste geliefert;
  ;;;
  ;;; ansonsten wird fuer jede Wertebelegung die Relation
  ;;; evaluiert

  (if (null list-of-value-ass)
      nil
      (append
	(evaluate-relation relation
			   variables
			   (first list-of-value-ass))
	(multiple-evaluation relation
			     variables
			     (rest list-of-value-ass)))))


(defun activation-p (condition list-of-value-ass)

  ;;; ueberprueft die Bedingung fuer jede Wertebelegung in
  ;;; list-of-value-ass und bildet die Konjunktion der
  ;;; Ergebnisse

  (or (null list-of-value-ass)
      (and (evaluate-condition condition
			       (first list-of-value-ass))
	   (activation-p condition
			 (rest list-of-value-ass)))))


(defun evaluate-relation (relation variables simple-val-ass)

  ;;; Eingabe:	eine Liste von Relationenelemente,
  ;;;		eine Liste der Variablen,
  ;;;		eine Wertzuweisung
  ;;;
  ;;; Ausgabe:	neue (multiple) Wertezuweisung, in der im Vergleich zu
  ;;;		simple-val-ass uneingeschraenkte Variablen einen oder
  ;;;		mehrere neue Werte erhalten haben

  (if (null relation)
      nil
      (cons-if-not-nil
	(evaluate-relation-element (first relation)
				   variables
				   simple-val-ass)
	(evaluate-relation (rest relation)
			   variables
			   simple-val-ass))))


(defun evaluate-relation-element (rel-element variables simple-val-ass)
  
  ;;; Eingabe:	ein Relationenelement,
  ;;;		eine Liste der Variablen,
  ;;;		eine Wertzuweisung
  ;;;
  ;;; Ausgabe:	nil, falls simple-val-ass inkonsistent ist,
  ;;;		oder neue (multiple) Wertezuweisung, sonst
  
  (declare (list rel-element variables))
  (case (get-keyword rel-element)
    (:tuple (evaluate-tupel (get-tupel rel-element)
			    variables
			    simple-val-ass))
    (:pattern (if (or (= (length rel-element) 2)
		      (evaluate-condition (get-condition rel-element)
					  simple-val-ass))
		  (evaluate-pattern (get-expressions rel-element)
				     variables
				     simple-val-ass)
		  nil))))


(defun evaluate-tupel (tupel variables simple-val-ass
		       &optional (new-val-ass nil))

  ;;; Eingabe:	eine Liste von Konstanten,
  ;;;		eine Liste von Variablen und eine Wertzuweisung an diese Variablen
  ;;;
  ;;; Ausgabe:  nil, falls einer der Werte aus tupel nicht mit dem Wert der
  ;;;		    entsprechenden Variable in simple-val-ass vertraeglich ist
  ;;;		neue Wertzuweisung, sonst

  (cond ((null tupel) new-val-ass)
        ((compatible-value-p (first tupel)
			     (first variables)
			     simple-val-ass)
	 (evaluate-tupel (rest tupel)
			 (rest variables)
			 simple-val-ass
			 (cons (new-association
				 (first variables)
				 (first tupel))
			       new-val-ass)))
	(t nil)))


(defun evaluate-pattern (pattern variables simple-val-ass
			 &optional (new-val-ass nil))

  ;;; Eingabe:	eine Liste von Lisp-Ausdruecken,
  ;;;		eine Liste von Variablen und eine Wertzuweisung an diese Variablen
  ;;;
  ;;; Ausgabe:	es werden nacheinander alle Lisp-Ausdruecke in der Umgebung
  ;;;		simple-val-ass evaluiert;
  ;;;		falls dabei ein Wert ermittelt wird, der mit der Wertebelegung
  ;;;		der entsprechenden Variablen in simple-val-ass nicht
  ;;;		uebereinstimmt, wird mit nil abgebrochen;
  ;;;		ansonsten wird eine neue Wertebelgung ermittelt

  (if (null pattern)
      (reverse new-val-ass)
      (let ((new-value (evaluate-funcall (first pattern)
			 simple-val-ass)))
	(if (compatible-value-p new-value
				(first variables)
				simple-val-ass)
	    (evaluate-pattern (rest pattern)
			      (rest variables)
			      simple-val-ass
			      (cons (new-association
				      (first variables)
				      new-value)
				    new-val-ass))
	    nil))))


;
;	TEST
;


(defun constrained-p (&rest variables)

  ;;; Eingabe:	Liste von Variablen der aktuellen Lisp-Umgebung
  ;;;
  ;;; Ausgabe:	T, falls keine der Variablen den Wert 'unconstrained
  ;;;		besitzt

  (cond ((null variables))
	((eq (car variables)
	     'unconstrained)
	 nil)
	(t (apply (function constrained-p)
		  (cdr variables)))))


(defun unconstrained-p (&rest variables)

  ;;; Eingabe:	Liste von Variablen der aktuellen Lisp-Umgebung
  ;;;
  ;;; Ausgabe:	T, falls keine der Variablen den Wert 'constrained
  ;;;		besitzt

  (cond ((null variables))
	((not (eq (car variables)
		  'unconstrained))
	 nil)
	(t (apply (function unconstrained-p)
		  (cdr variables)))))
