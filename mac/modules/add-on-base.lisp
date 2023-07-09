;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: User; Base: 10  -*-

;;           Copyright   1987, 1986, 1985 and 1984    BY
;;           G M D  
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG

;;  AUTHOR:  Juergen Walther
;;           add on base

(cc-load "mac^tools>filter")
#+(and :CCL (not :MCL))(cc-load "mac^tools>dialogs")
#+:MCL(cc-load "mac^tools>dialogs-clos")
#+(and :CCL (not :MCL))(cc-load "mac^tools>options")
#+:MCL(cc-load "mac^tools>options-clos")

(provide 'add-on-base)

;;; eof

