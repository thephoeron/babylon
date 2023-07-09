;;; -*- Mode: Lisp; Syntax: Common-Lisp; Base: 10; Package: User -*-

(in-package "USER")

;;           Copyright   1989    BY
;;           G M D  
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG



;;  AUTHOR:  E. Gross
;;  DATE:    January 1989

;;-----------------------------------------------------------------
;;              system dependencies
;;-----------------------------------------------------------------

(defmacro baberror (fstr &rest args)
 `(error ,fstr ,@args))


(defun babpprint (object &optional stream)
  (pprint object stream))

;;-----------------------------------------------------------------

(defun ignore (x) x)

(defun get-prompt-string ()
  "> ")

(defun load-user-babylon-init-file ()
  (load (merge-pathnames "babinit.lisp" (user-homedir-pathname))
	:verbose nil :if-does-not-exist nil))

(defun get-babylon-default-pathname (&optional (type 'system))
  (cond ((eq type 'system)
	 (transform-pathstring "babhome/samples>foo" 'source))
	((eq type 'user)
	 (merge-pathnames "foo.lisp" (user-homedir-pathname)))))


(defun merge-babylon-pathnames (name default)
  (merge-pathnames name default))


;;-----------------------------------------------------------------

(defun get-stream-for-dialog ()
  *standard-output*)

;;; eof

