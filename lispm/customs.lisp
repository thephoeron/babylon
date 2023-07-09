;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: User; Base:10 -*-

(in-package "USER")

(setf *default-procs*
      '(mini-frame-mixin mini-rule-mixin mini-prolog-mixin free-text-mixin lisp-mixin))

(setf *default-interface* '(normal-interface-mixin))

(setf *default-kb-configuration* 'globalc)

(setf *default-dialog-stream* (get-stream-for-dialog))

(setf *help-key* #\?)

(setf *c-help-key* #\c-?)

(setf *end-key* #\end)

#+:ti(PROCLAIM '(CHARACTER *help-key* *c-help-key* *end-key*))

(defun include-kb-file (file &rest options)
  (declare (ignore options))
  (multiple-value-bind (file-loaded source-file)
      (cc-load file :recompile nil)
    (if file-loaded (send-kb :send-if-handles :loaded source-file))))


(load-user-babylon-init-file)

;;; eof

