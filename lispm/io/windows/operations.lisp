;;; -*- Mode: LISP; Syntax: Common-Lisp; Base: 10 -*-


(in-package "USER")

;;           Copyright   1987   BY
;;           G M D 
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG

;; DATE:     August 1987
;; AUTHOR:   K. Wittur, E. Gross

;; This file depends on:  basics>common-fns
                         

;; Contents: some standard window-operations




(defflavor window-operations-mixin
	((default-edges nil)
	 (previous-edges nil))
	()
  ::settable-instance-variables
  (:required-flavors tv:essential-set-edges)
  (:documentation "a handler for window manipulation operations."))


(defaction (window-operations-mixin :after :init) (&rest ignore)
  "Sets a default shape."
  
  (multiple-value-bind (cleft ctop cright cbottom)
      (send self :edges)
    (if (null default-edges)
	(setf default-edges (list cleft ctop cright cbottom)))
    (setf previous-edges (list cleft ctop cright cbottom))))


;;---------------------------------------------------------------------------------
;;       implementation of some standard window-operations
;;---------------------------------------------------------------------------------

(defaction (window-operations-mixin :move)
	   (&optional to-x to-y)
  "Moves the window to <to-x> <to-y> if given
otherwise takes the mouse to specify the position."
  
  (multiple-value-bind (cleft ctop cright cbottom)
      (send self :edges)
    (setf previous-edges (list cleft ctop cright cbottom)))
  (if (and (integerp to-x) (integerp to-y))
      (send self :set-position to-x to-y)
      (without-interrupts (tv:mouse-set-window-position self))))

;;---------------------------------------------------------------------------------

(defaction (window-operations-mixin :reshape)
	   (&optional new-x new-y new-width new-height)
  "Reshapes the window as specified if given otherwise takes the mouse."
  
  (multiple-value-bind (cleft ctop cright cbottom)
      (send self :edges)
    (setf previous-edges (list cleft ctop cright cbottom))) 
  (if (and (integerp new-x) (integerp new-y) (integerp new-width) (integerp new-height))
      (send self :set-edges new-x new-y (+ new-x new-width) (+ new-y new-height))
      (without-interrupts (tv:mouse-set-window-size self))))

;;---------------------------------------------------------------------------------

(defaction (window-operations-mixin :shrink) ()
  "Reshapes the window to the label-region."
  
  (multiple-value-bind (cleft ctop cright cbottom)
      (send self :edges)   
    (multiple-value-bind (label-width ignore) (send self :label-size)
      (let ((new-height (+ (send self :top-margin-size)
			   (send self :bottom-margin-size)))
	    (new-width (+ label-width
			  (send self :left-margin-size)
			  (send self :right-margin-size)
			  10)))
	(unless (= (send self :height) new-height)
	  (send self :set-size new-width new-height)
	  (send self :move))))
    (setf previous-edges (list cleft ctop cright cbottom))))

;;---------------------------------------------------------------------------------

(defaction (window-operations-mixin :toggle) ()
  "Restores the previous shape and position."
  
  (multiple-value-bind (cleft ctop cright cbottom)
      (send self :edges)
    (lexpr-send self :set-edges previous-edges)
    (setf previous-edges (list cleft ctop cright cbottom))))

;;---------------------------------------------------------------------------------

;
;(defaction (window-operations-mixin :blow-up) ()
;  "Expands the window to maximal size
;which is provided by :babylon-sheet-edges."
;  
;  (multiple-value-bind (cleft ctop cright cbottom)
;      (send self :edges)    
;    (setf previous-edges (list cleft ctop cright cbottom)))
;  (multiple-value-bind (nleft ntop nright nbottom)
;      (get-max-window-edges self)
;    (lexpr-send self :set-edges (list nleft ntop nright nbottom))))



(defaction (window-operations-mixin :expand) ()
  "Expands the window to maximal size."
  
  (multiple-value-bind (cleft ctop cright cbottom)
      (send self :edges)    
    (setf previous-edges (list cleft ctop cright cbottom)))
  (multiple-value-bind (nleft ntop nright nbottom)
      (send Tv:main-screen :inside-edges)
    (lexpr-send self :set-edges (list nleft ntop nright nbottom))))

;;---------------------------------------------------------------------------------

(defaction (window-operations-mixin :home) ()
  "Returns to the default shape."
  
  (multiple-value-bind (cleft ctop cright cbottom)
      (send self :edges)    
    (setf previous-edges (list cleft ctop cright cbottom))) 
  (lexpr-send self :set-edges default-edges))

;;---------------------------------------------------------------------------------

(defaction (window-operations-mixin :freeze) ()
  "Freezes the current shape as default shape."
  
  (multiple-value-bind (cleft ctop cright cbottom)
      (send self :edges)    
    (setf default-edges (list cleft ctop cright cbottom))))


;;---------------------------------------------------------------------------------
;;          less important operations 
;;---------------------------------------------------------------------------------

(defaction (window-operations-mixin :half) ()
  "shortens the window by cutting the lower half of the window."
  
  (multiple-value-bind (cleft ctop cright cbottom)
      (send self :edges)    
    (setf default-edges (list cleft ctop cright cbottom))) 
  (send self :set-size tv:width (round tv:height 2)))

;;---------------------------------------------------------------------------------

(defaction (window-operations-mixin :align-below) (window)
  (multiple-value-bind (cleft ctop cright cbottom)
      (send self :edges)    
    (setf previous-edges (list cleft ctop cright cbottom)))
  (multiple-value-bind (wleft wtop wright wbottom) (send window :edges)
    (send self :bury)
    (send self :set-size (- wright wleft ) (- wbottom wtop))
    (send self :expose-near `(:rectangle ,wleft 0 ,wright ,wbottom))))

  
(defun splitting-edges (window &optional (x-frac 0) (y-frac 0)) 
  (multiple-value-bind (wleft wtop wright wbottom) (send window :edges)
    (values (+ wleft (round (* x-frac (- wright wleft))))
	    (+ wtop (round (* y-frac (- wbottom wtop))))
	    wleft wtop wright wbottom)))

;;; eof

