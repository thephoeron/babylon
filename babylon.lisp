(in-package :babylon)

;;------------------------------------------------------------------------

(defun babylon-hello ()
  (format *terminal-io*
	  "Welcome to Babylon Release ~A~%" *babylon-version*))

;;; later on you may dumplisp an image here

(defun after-image-load ()
  (progn
    (load-user-babylon-init-file)
    (babylon-hello)))

(defun make-babylon-image ()
  #+:EXCL (progn (excl:gc)
		 (excl:dumplisp :name "babylon"
				:checkpoint nil
				:restart-function #'after-image-load))

  #+:CLISP(progn t			; (gc)
		 (LISP:SAVEINITMEM "babylon.mem"
				   :quiet t
				   :init-function #'after-image-load))

  #+:CMU(extensions:save-lisp "babylon.core"
			      :print-herald t
			      :init-function #'after-image-load)

  #+:AKCL(SI:SAVE-SYSTEM "babylon.kcl")

  )

;; Restore the standard readtable for SBCL

#+sbcl
(named-readtables:in-readtable :standard)
