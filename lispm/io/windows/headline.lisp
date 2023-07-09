;;; -*- Mode: LISP ; Syntax: Common-Lisp; Base: 10; Package: User -*-

(in-package "USER")

;;           Copyright   1987   BY
;;           G M D 
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG

;; DATE:     January 1987
;; AUTHOR:   Karl Wittur

;; This file depends on: 

;; Contents: a mixin which produces a headline-region where the label occurs
;;           this is the version for release-7
;;
;;             
;;  !!!!!!!!!!!!!!!!!!!!!!  SYMBOLICS ONLY  !!!!!!!!!!!!!!!!!!!!!!!

;;--------------------------------------------------------------------------------
;;                        NORMAL HEADLINE MIXIN
;;--------------------------------------------------------------------------------


;; the necessary mixin which is a specialization of tv:top-label-mixin

#+:symbolics
(defflavor normal-headline-mixin
	((default-headline-style-or-font '(:dutch :bold :large)))
	; this style is taken if none is specified
	(tv:top-label-mixin tv:centered-label-mixin)
  (:documentation "this flavor simply defines an after demon for the	
                   method :draw-label in order to get an inverted region
                   around the label in top of a window"))

#+TI
(defflavor normal-headline-mixin
	()
	(tv:borders-mixin tv:top-box-label-mixin tv:centered-label-mixin))

;;_________________________________________________________________________


#+:symbolics
(defaction (normal-headline-mixin :get-character-height)
	   ()
  "a method for getting the char-height of current-label."
  
  (let* ((current-label (send self :label))
	 (style-or-font-spec (tv:label-style current-label)))			    
   
    (zl:font-char-height (si:get-font tv:display-device-type
				      si:*standard-character-set*
				      style-or-font-spec))))

;;_________________________________________________________________________


#+:symbolics
(defwhopper (:set-label normal-headline-mixin) 
	   (label-spec)
  "to use the default-headline-style if none is specified."
  
  (let ((init-style (if (consp label-spec)
			(or (member :style label-spec) (member :font label-spec)))))
    (if init-style
	(continue-whopper label-spec)
	(if (consp label-spec)
	    (continue-whopper
	      `(,@label-spec :style
		,default-headline-style-or-font))
	    (continue-whopper
	      `(:string ,label-spec :style
			,default-headline-style-or-font))))))


;;_________________________________________________________________________

#+:symbolics
(defaction (normal-headline-mixin :after :init)
	   (&rest init-plist)  
  ;;this method is for taking the default style if none is specified  
  (let* ((init-label-spec (locf (getf init-plist :label)))
	 (init-font (cond ((or (typep init-label-spec 'character-style)
			       (typep init-label-spec 'sys:font))
			   init-label-spec)
			  ((listp init-label-spec)
			   (second (or (member :style init-label-spec)
				       (member :font init-label-spec)))))))
    (if init-font 
	nil
	(send self :set-label
	      (progn (setf (tv:label-style tv:label)
			   default-headline-style-or-font)
		     tv:label)))))


;;--------------------------------------------------------------------------


;; you only have to draw an appropriate rectangle onto the window
;; which is done in this method

#+:3600
(defaction (normal-headline-mixin :after :draw-label)
	   (spec left top right bottom)  
  "this method draws the appropriate rectangle onto the window"  
  (send self :fill-headline spec left top right bottom tv:alu-xor))


;;__________________________________________________________________________


;; to ensure that :set-label and reshaping works correctly erase the
;; old label before the new one is drawn.

#+:3600
(defaction (normal-headline-mixin :before :draw-label)
	   (spec left top right bottom)  
  "this method erases the old headline"
  
  (send self :fill-headline spec left top right bottom tv:alu-andca))

;;__________________________________________________________________________

#+:3600
(defaction (normal-headline-mixin :fill-headline)
	   (spec left top right bottom alu)  
  "fills the appropriate region according alu"
  
  (multiple-value-bind (h-width h-height h-x h-y)
      (send self :compute-headline-region spec left top right bottom)
    (tv:sheet-force-access (self)
      (tv:sheet-draw-rectangle h-width h-height h-x h-y alu self))))

;;__________________________________________________________________________

#+:3600
(defaction (normal-headline-mixin :compute-headline-region)
	   (spec left top right bottom)  
  "computes the extend of the headline-region returns width, height, left and top"
  
  (declare (ignore spec bottom))
  (let ((margin-width (if (send self :operation-handled-p :border-margin-width)
			  (send self :border-margin-width)
			  0))
	(char-height (send self :get-character-height)))
    (multiple-value-bind (label-width label-height)
	(send self :label-size)
      (declare (ignore label-width))
      (values (+ (* 2 margin-width) (- right left))
	      (+ label-height
		 (* 2 (max 1 (round (truncate (float (abs (- label-height char-height)))
					      2.0)))))
	      (- left margin-width)
	      (- top margin-width)))))
		       


;;__________________________________________________________________________

#+:3600
(defaction  (normal-headline-mixin :draw-label)
	    (spec left top right bottom)
  ;; die neue draw-label methode. eric 21.04.87
  bottom
  (and spec
       (multiple-value-bind (label-width label-height)
	   (send self :label-size)
	 (declare (ignore label-width))
	 (do ((char-pos 0) (next-newline)
	      (char-height (send self :get-character-height))
	      (string (tv:label-string spec))
	      (slen (string-length (tv:label-string spec))))
	     ((or ( char-pos slen)
		  (> (+ top char-height) bottom)))
	   (setq next-newline (string-search-char #\newline string :start char-pos))
	   (with-character-style ((tv:label-style spec) self :bind-line-height t)
	     (let* ((next-line (substring string char-pos next-newline))
		    (wid (send self ':string-length next-line))
		    (left (max left
			       (if (tv:label-centered-p spec)
				   (+ left (truncate (- right left wid) 2))
				   -1))))
	       (send self ':string-out-explicit next-line left
		     (max 1 (round (truncate (float (abs (- label-height char-height))) 2.0)))
		     ;;top
		     right   tv:alu-xor) ;; tv:char-aluf tv:alu-xor)
	       (sys:return-array next-line)))
	   (setq char-pos (if next-newline (1+ next-newline) slen)
		 top (+ top char-height (or (tv:label-vsp spec) 2)))))))

;;___________________________________________________________________________


;; some useful operations

(defaction (normal-headline-mixin :is-headline-point)
	   (x y)       ;relative to the window
  "decides whether the point (x y) is in the headline region or not."
  
  (declare (ignore x))
  (<= y (fourth (send self :label))))


;;; eof

