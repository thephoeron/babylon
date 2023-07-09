;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: User; Base: 10 -*-


(unless (find-translation "texi^" 'source)
  (defbabylon-translation "texi^" "babhome^texi>"))

(pushnew "texi^configs>" *babylon-module-search-path* :test #'string-equal)

(bab-require 'k1)

(cc-load "texi^configs>k3dummyc")
(cc-load "texi^configs>k3c")
(cc-load "texi^configs>k3-misc")
(cc-load "texi^configs>k3-print")
(provide 'k3-misc)
(provide 'k3-print)

(cc-load "texi^k3>k3-kb") ; :recompile nil)

(provide 'k3)

;;; eof
