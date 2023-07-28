;;; -*- Mode: Lisp; Syntax: Common-Lisp; Base: 10; Package: BABYLON -*-

(in-package "BABYLON")

;;           Copyright   1989    BY
;;           G M D
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG



;;  AUTHOR:  E. Gross
;;  DATE:    January 1989

;;------------------------------------------------------------------------

(defun make-local-pathname (bab-path host type)
  (declare (ignore host))
  (let ((true-type (case type
                     (source "lisp")
                     (bin   #+:EXCL "fasl"
			    #+:CMU  "cmu"
			    #+:AKCL "o"
			    #+:CLISP "fas"
			    #-(or :EXCL :CMU :AKCL :CLISP) "bin" )
                     (t      (string-downcase type)))))
    (merge-pathnames (substitute #\/ #\> bab-path)
                     (concatenate 'string "/foo." true-type))))

(setf *trans-path-fkt*  #'make-local-pathname)


(defbabylon-translation "babhome^"  (directory-namestring (asdf:system-source-directory :babylon)))
(defbabylon-translation "fmcs^"     "babhome^fmcs>")
(defbabylon-translation "tty^"      "babhome^tty>")

(defbabylon-translation "basic-interface-mixin" "b-interf")
(defbabylon-translation "mini-interface-mixin"  "m-interf")

(setq *babylon-module-search-path*
      '("tty^modules>" "modules^" "configs^"))

;;-----------------------------------------------------------------
;;              system dependencies
;;-----------------------------------------------------------------

(defmacro baberror (fstr &rest args)
 `(error ,fstr ,@args))


(defun babpprint (object &optional stream)
  (pprint object stream))

;;-----------------------------------------------------------------

; (defun ignore (x) x)      ;;; use (declare (ignore ...))

(defun get-prompt-string ()
  "> ")

(defun load-user-babylon-init-file ()
  (load (merge-pathnames ".babylon" (user-homedir-pathname))
	:verbose nil :if-does-not-exist nil))

(defun get-babylon-default-pathname (&optional (type 'system))
  (cond ((eq type 'system)
	 (transform-pathstring "babhome/samples>foo" 'source))
	((eq type 'user)
	 (merge-pathnames "foo.cl" (user-homedir-pathname)))))


(defun merge-babylon-pathnames (name default)
  (merge-pathnames name default))


;;-----------------------------------------------------------------

(defun get-stream-for-dialog ()
  *standard-output*)

;;; eof
