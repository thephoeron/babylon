;;; -*- Mode: Lisp; Syntax: Common-Lisp; Base: 10; Package: User -*-

(in-package "USER")

;;           Copyright   1986, 1985 and 1984    BY
;;           G M D  
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG



;;  AUTHOR:  E. Gross

;;-----------------------------------------------------------------
;;              system dependencies
;;-----------------------------------------------------------------


#+:SYMBOLICS(defun make-symb-pathname (bab-path host type)
	      (let ((true-type (case type
				 (source "lisp")
				 (bin    #+:3600 "bin" #+imach "ibin")
				 (t      (string-downcase type)))))
		(merge-pathnames bab-path
				 (concatenate 'string (string host) ":>foo." true-type))))

	
#+:TI(defun make-ti-pathname (bab-path host type)
       (let ((true-type (case type
			  (source "lisp")
			  (bin    "xld")
			  (t      (string-downcase type)))))
	 (merge-pathnames (substitute #\: #\> bab-path)
			  (concatenate 'string host "foo." true-type))))

(setf *trans-path-fkt*
      #+:SYMBOLICS #'make-symb-pathname
      #+:TI #'make-ti-pathname)


(defbabylon-translation "lispm^"    "babhome^lispm>")
(defbabylon-translation "lispmio^"  "lispm^io>")

(defbabylon-translation "basic-interface-mixin"  "s-interf")
(defbabylon-translation "mini-interface-mixin"   "s-interf")
(defbabylon-translation "mini-babylon" "s-interf")


(defbabylon-translation "normal-interface-mixin" "n-interf")
(defbabylon-translation "normal-babylon" "n-interf")


(setq *babylon-module-search-path*
      '("configs^" "lispm^modules>" "modules^"))

;;-----------------------------------------------------------------


(defmacro baberror (fstr &rest args)
 `(error ,fstr ,@args))


(defun babpprint (object &optional stream)
  (pprint object stream))

;;-----------------------------------------------------------------

#+:TI(defmethod (tv:minimum-window :clear-window) ()
       (send self :clear-screen))


(defun get-prompt-string ()
  #+:SYMBOLICS si:*cp-prompt*
  #+:TI "> ")

(defun load-user-babylon-init-file ()
  (load (merge-pathnames "babinit.lisp" (user-homedir-pathname))
	:verbose nil :if-does-not-exist nil))



;;-----------------------------------------------------------------

#+:SYMBOLICS(defun get-stream-for-dialog ()
	      (cond ((typep tv:selected-window 'tv::lisp-listener)
		     tv:selected-window)
		    ((typep tv:selected-window 'dw::dynamic-lisp-listener)
		     tv:selected-window)
		    (t (or (tv:find-window-of-flavor 'tv::lisp-listener)
			   (tv:find-window-of-flavor 'dw::dynamic-lisp-listener)))))

#+:TI(defun get-stream-for-dialog ()
       (cond ((typep tv:selected-window 'w::lisp-listener)
	      tv:selected-window)
	     (t (tv:find-window-of-flavor 'w::lisp-listener))))


;;; eof

