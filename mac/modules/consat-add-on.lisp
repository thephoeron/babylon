;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: User; Base: 10  -*-

(in-package "USER")

;;           Copyright   1987, 1986, 1985 and 1984    BY
;;           G M D  
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG

;;  AUTHOR:  Juergen Walther
;;           display constraint

#+(and :CCL (not :MCL)) (cc-load "mac^tools>consat-add-on")
#+:MCL (cc-load "mac^tools>consat-add-on-clos")

(provide 'consat-add-on)

;;; eof

