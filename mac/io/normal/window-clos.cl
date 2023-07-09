;;; -*- Mode: Lisp; Syntax: Common-Lisp; Base: 10; Package: BABYLON -*-

(in-package "BABYLON")

;;           Copyright   1987, 1986, 1985 and 1984    BY
;;           G M D  
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG

;;  AUTHOR:  Juergen Walther

;;; windows (CLOS version)


(defclass kb-window (fred-window) ())

(defun is-known-window (file type)
  (map-windows #'(lambda (w)
                   (if (equal (slot-value w 'ccl::my-file-name) file)
                     (return-from is-known-window w)))
               :class type))

(def$flavor mac-window
  ((mw-title "Untitled")
   (mw-filename nil)
   (mw-position  *fred-window-position*)
   (mw-size  *fred-window-size*)
   (mw-show-p t)
   (mw-font '("monaco" 9))
   (mw-layer 0)
   (mw-scratch-p nil)
   (stream nil))
  ()
  :settable-instance-variables
  (:documentation "This is the basic flavor for all text scroll output windows.")
  )

(def$method (mac-window :after :init) (&rest plist)
  "Generate the window using features of the Mac Allegro Common Lisp."
  (declare (ignore plist))
  (setf stream (make-instance 'kb-window 
                              :filename mw-filename
                              :window-show mw-show-p
                              :window-title mw-title
                              :view-position mw-position
                              :view-size mw-size
                              :view-font mw-font
                              :close-box-p nil
                              ;:scratch-p mw-scratch-p
                              )))

(defmethod scroll-cursor-to-bottom ((w kb-window))
  (let* ((frec (frec w))
         (bpos (buffer-position (fred-buffer w)))
         (lines (- (ccl::frec-full-lines frec) 2)))
    ; (context (next-screen-context-lines lines)))
    (set-mark (fred-display-start-mark w)
              (ccl::frec-screen-line-start frec bpos (- lines)))
    (fred-update w)))

(def$method (mac-window :format) (&rest args)
  "Output to scroll window using fstring and args like using format function
or an item list intended for mouse sensitive scroll windows."
  (ccl::ed-end-of-buffer stream)
  (terpri stream)
  (if (stringp (first args))
    (apply #'format stream (first args) (rest args))
    (format stream "~A" (apply #'string-append 
                               (mapcar #'(lambda (item)
                                           (second (member :string item)))
                                       args))))
  (scroll-cursor-to-bottom stream))

(def$method (mac-window :expose) ()
  (window-select stream))

(def$method (mac-window :bury) ()
  (set-window-layer stream (1+ (window-layer stream))))

(def$method (mac-window :clear) ()
  (select-all stream) 
  (ccl::ed-rubout-char stream))

(def$method (mac-window :kill) ()
  (if (wptr stream) (window-close stream)))   ; don't close if already closed

;;; eof

