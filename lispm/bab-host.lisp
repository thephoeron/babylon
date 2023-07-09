;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: User; Base: 10 -*-

(in-package "USER")

(unless (and (boundp '*bab-host*) *bab-host*)
  (format *query-io* "~%Enter Babylon Host: ")
  (setq *bab-host* (read *query-io*)))

(fs:set-logical-pathname-host "bab-host"
			      
  :physical-host (string *bab-host*)
			      
  :translations '(("babylon;**;*"   ">babylon>**>*")))


;;; eof


