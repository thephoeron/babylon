;;; -*- Mode: Lisp; Syntax: Common-Lisp; Base: 10 -*-

;;           Copyright   1987, 1986, 1985 and 1984    BY
;;           G M D  
;;           Postfach 1240
;;           D-5205 St. Augustin
;;           FRG

;;  AUTHOR:  Juergen Walther

;;  FILE:    babylon^mac-make-CCL.lisp

;;           This is the make file for making a Babylon Image
;;           on an Apple Macintosh using Macintosh Allegro Common Lisp (Coral)

;;           use file babylon^mac-make-MCL.lisp if you have Macintosh Common Lisp 2.0

;;; need version 1.2 or later to make images

(if (member :MCL *features*)
  (progn (message-dialog "Load file mac-make-mcl, to make BABYLON!")
         (quit))
  (if     (string= (lisp-implementation-version) "Version 1.1")
    (progn (message-dialog "Sorry! Babylon needs at least Version 1.2 of Allegro CL")
           (quit))))

;;; *********************************************************************************
(setf *recompile* t)               ; nil = load only 
;;; *********************************************************************************

(proclaim '(optimize (speed 3)(safety 1)))
(proclaim '(ignore ignore))

(setq *load-verbose* t           ; default nil
      *verbose-eval-selection* t ; default nil
      *warn-if-redefine* t       ; default t
      *break-on-warnings* nil    ; default nil
      *break-on-errors* t        ; default t
      *backtrace-on-break* nil   ; default nil
      *fast-eval* nil            ; default nil
      *compiler-warnings* t
      ccl::*fasl-compiler-warnings* t
      *paste-with-styles* nil
      *print-case* :upcase
      *print-array* nil
      *emacs-mode* nil
      ccl::*line-width* 80
      *save-fred-window-positions* nil
      )

(defun development-options ()
  (setq *compile-definitions* nil
        *record-source-file* t 
        *save-doc-strings* t 
        *save-definitions* t 
        *save-local-symbols* t
        *fasl-save-local-symbols* t))
      
(defun runtime-options ()
  (setq *compile-definitions* t
        *record-source-file* nil
        *save-doc-strings* nil 
        *save-definitions* nil 
        *save-local-symbols* nil
        *fasl-save-local-symbols* nil))

(runtime-options)

;; adapt to different screen sizes for MAC SE or II

(defvar  *fred-window-position* nil)
(defvar  *fred-window-size* nil)

(defun babylon-default-sizes () T)  ;;; do that in your customizations

#|
(defun babylon-default-sizes ()
  (setf *fred-window-position*
        (make-point 4. (+ *menubar-bottom* 4))
        
        *fred-window-size*
        (make-point (- *screen-width* 80) 
                    (floor (- *screen-height* *menubar-bottom* 8.) 2.))
        
        *LISTENER-WINDOW-POSITION*
        (make-point 4. (+ 24. 
                          (point-v *fred-window-position*)
                          (point-v *fred-window-size*)))
        
        *LISTENER-WINDOW-SIZE*
        (make-point (point-h *fred-window-size*)
                    (- (point-v *fred-window-size*) 24))))
|#  

(babylon-default-sizes)
  
(format t ";Loading Babylon ...~%")
  
(ask *top-listener*
     (set-window-position *listener-window-position*)
     (set-window-size *listener-window-size*))

(def-logical-pathname "babylon;" "home;")

(defvar *babylon-kbs*  "babylon;samples:kbs:")
(defvar *babylon-axs*  "babylon;samples:axsets:")

(defvar *bab-host* "")

(load "babylon;kernel:require")
(load "babylon;kernel:babtrans"))
  
(defun make-local-pathname (bab-path host type)
  (declare (ignore host))
  (let ((true-type (case type
                     (source "lisp")
                     #-:MCL(bin    "fasl") 
                     #+:MCL(bin    "xfasl")
                     (t      (string-downcase type)))))
    (merge-pathnames (substitute #\: #\> bab-path)
                     (concatenate 'string "foo." true-type))))
  
(setf *trans-path-fkt*  #'make-local-pathname)
  
(defbabylon-translation "babhome^" "babylon;")
(defbabylon-translation "kernel^"  "babhome^kernel>"          "babhome^mac-binary>kernel>")
(defbabylon-translation "modules^" "babhome^kernel>modules>"  "babhome^mac-binary>kernel>modules>")
(defbabylon-translation "configs^" "babhome^samples>configs>") ; "babhome^mac-binary>samples>configs>")
(defbabylon-translation "mcs^"     "babhome^mcs>"             "babhome^mac-binary>mcs>")
(defbabylon-translation "mac^"     "babhome^mac>"             "babhome^mac-binary>mac>")

(defbabylon-translation "tty^"     "babhome^tty>")    ; use same folder for binaries
(defbabylon-translation "basic-interface-mixin" "b-interf")
(defbabylon-translation "mini-interface-mixin"  "m-interf")
(defbabylon-translation "mini-babylon" "m-interf")
  
(setf *babylon-module-search-path*
      '("mac^modules>" "tty^modules>" "modules^" "configs^"))
  
(cc-load "mac^extens")
  
(bab-require 'mcs)     ; meta class system (flavor oriented)
(bab-require 'common)
(bab-require 'meta)

;;; alternatively

;(bab-require 'normal-interface-mixin)
 
;;; or
(bab-require 'mini-interface-mixin)
(def$flavor normal-interface-mixin () (mini-interface-mixin))

#|
(bab-require 'freetext)
(bab-require 'normal-frame-mixin)
(bab-require 'normal-rule-mixin)
(bab-require 'normal-prolog-mixin)
(bab-require 'normal-constraint-mixin)
|#

;;; -----------------------------------------------------------------------
 
(defun clear-babylon ()
  (dolist (file (append (directory "Babylon;mac-binary:**:*.fasl")
                        (directory "Babylon;tty:**:*.fasl")
                        (directory "Babylon;samples:**:*.fasl"))
                'done)
    (delete-file file)))

(defvar *BABYLON-MENUBAR-INSTALLED* nil)
(defvar *BABYLON-MENUBAR* nil) 
(defvar *ALLEGRO-MENUBAR* nil)
(defvar *BOTH-MENUBAR* nil) 

(defvar toggle-menubar-item
  (oneof *menu-item*
         :menu-item-title "Toggle Menubar"
         :command-key #\T
         :menu-item-action 
         '(progn 
            (if (null *babylon-menubar-installed*) 
              (set-menubar *babylon-menubar*)
              (set-menubar *allegro-menubar*))
            (setf *babylon-menubar-installed* 
                  (not *babylon-menubar-installed*)))))

(let ((*windows* (find-menu "Windows")))
  (setf *allegro-menubar* (append (menubar) (list babylon-menu)))
  (setf *babylon-menubar* 
        (list *apple-menu* *file-menu* *edit-menu* *windows* 
              babylon-menu frame-menu rule-menu prolog-menu consat-menu))
  (setf *both-menubar* 
        (append *default-menubar* 
                (list babylon-menu frame-menu rule-menu prolog-menu consat-menu))))
  

(defun babylon-default-menubar ()
  (if (> *screen-width* 512)
    (set-menubar *both-menubar*)
    (progn (unless (ask babylon-menu (find-menu-item "Toggle Menubar"))
             (ask babylon-menu (add-menu-items toggle-menubar-item)))
           (set-menubar *babylon-menubar*)))
  (setf *babylon-menubar-installed* t))

(defun babylon-hallo ()
  (format t ";Welcome to Babylon Release ~A on the Macintosh!~%" *babylon-version*))

(defun babylon-initialize-image ()
  (cc-load "babhome^patches")                      ; loading patches
  (if (or (probe-file "babylon;babylon-init.lisp") ; and  your babylon init file
          (probe-file "babylon;babylon-init.fasl"))              
    (load "babylon;babylon-init"))
  (if (or (probe-file "ccl;init.lisp")             ; and  your allegro init file
          (probe-file "ccl;init.fasl"))              
    (load "ccl;init"))
  (setf *default-choose-file-directory* "home;"))

(defvar *babylon-configure-dialog* ())
    
(defun deallocate-babylon-configure-dialog ()
  (ask *babylon-configure-dialog* (window-close)))
    
(defvar *f-to-c* nil "flavors to compile")

(defun allocate-babylon-configure-dialog ()
  (setf *babylon-configure-dialog*
        (oneof *dialog*
               :window-title "Configure"
               :window-position 
               (make-point (ash (- *screen-width* 420) -1)
                           *menubar-bottom*)
               :window-size #@(420 285)
               :window-type :double-edge-box
               :window-show nil))
  
  (ask *babylon-configure-dialog*
    (add-dialog-items
     (oneof *static-text-dialog-item*
            :dialog-item-text "Include"
            :dialog-item-position #@(8 8)
            :dialog-item-size #@(53 16))
     (have 'free-text
           (oneof *check-box-dialog-item*
                  :dialog-item-text "free-text-mixin"
                  :dialog-item-position #@(210 5)
                  :dialog-item-size #@(155 15)
                  :check-box-checked-p t))
     (oneof *static-text-dialog-item*
            :dialog-item-text "Frame Interpreter"
            :dialog-item-position #@(30 25)
            :dialog-item-size #@(155 15))
     (have 'bfm
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "basic-frame-mixin"
                  :dialog-item-position #@(210 25)
                  :dialog-item-size #@(155 15)
                  :radio-button-pushed-p nil
                  :radio-button-cluster '0))
     (have 'fm
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "no"
                  :dialog-item-position #@(50 40)
                  :dialog-item-size #@(100 15)
                  :radio-button-pushed-p nil
                  :radio-button-cluster '0))
     (have 'mfm
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "mini-frame-mixin"
                  :dialog-item-position #@(210 40)
                  :dialog-item-size #@(155 15)
                  :radio-button-pushed-p nil
                  :radio-button-cluster '0))
     (have 'nfm
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "normal-frame-mixin"
                  :dialog-item-position #@(210 55)
                  :dialog-item-size #@(155 15)
                  :radio-button-pushed-p t
                  :radio-button-cluster '0))
     (oneof *static-text-dialog-item*
            :dialog-item-text "Rule Interpreter"
            :dialog-item-position #@(30 70)
            :dialog-item-size #@(155 15))
     (have 'brm
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "basic-rule-mixin"
                  :dialog-item-position #@(210 70)
                  :dialog-item-size #@(155 15)
                  :radio-button-pushed-p nil
                  :radio-button-cluster '1))
     (have 'rm
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "no"
                  :dialog-item-position #@(50 85)
                  :dialog-item-size #@(100 15)
                  :radio-button-pushed-p nil
                  :radio-button-cluster '1))
     (have 'mrm
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "mini-rule-mixin"
                  :dialog-item-position #@(210 85)
                  :dialog-item-size #@(155 15)
                  :radio-button-pushed-p nil
                  :radio-button-cluster '1))
     (have 'nrm
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "normal-rule-mixin"
                  :dialog-item-position #@(210 100)
                  :dialog-item-size #@(155 15)
                  :radio-button-pushed-p t
                  :radio-button-cluster '1))
     (oneof *static-text-dialog-item*
            :dialog-item-text "Prolog Interpreter"
            :dialog-item-position #@(30 125)
            :dialog-item-size #@(155 15))
     (have 'bpm
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "basic-prolog-mixin"
                  :dialog-item-position #@(210 125)
                  :dialog-item-size #@(155 15)
                  :radio-button-pushed-p nil
                  :radio-button-cluster '3))
     (have 'pm
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "no"
                  :dialog-item-position #@(50 140)
                  :dialog-item-size #@(100 15)
                  :radio-button-pushed-p nil
                  :radio-button-cluster '3))
     (have 'mpm
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "mini-prolog-mixin"
                  :dialog-item-position #@(210 140)
                  :dialog-item-size #@(155 15)
                  :radio-button-pushed-p nil
                  :radio-button-cluster '3))
     (have 'npm
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "normal-prolog-mixin"
                  :dialog-item-position #@(210 155)
                  :dialog-item-size #@(155 15)
                  :radio-button-pushed-p t
                  :radio-button-cluster '3))
     (oneof *static-text-dialog-item*
            :dialog-item-text "Constraint Interpreter"
            :dialog-item-position #@(30 180)
            :dialog-item-size #@(155 15))
     (have 'bcm
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "basic-constraint-mixin"
                  :dialog-item-position #@(210 180)
                  :dialog-item-size #@(185 15)
                  :radio-button-pushed-p nil
                  :radio-button-cluster '4))
     (have 'cm
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "no"
                  :dialog-item-position #@(50 195)
                  :dialog-item-size #@(100 15)
                  :radio-button-pushed-p nil
                  :radio-button-cluster '4))
     (have 'mcm
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "mini-constraint-mixin"
                  :dialog-item-position #@(210 195)
                  :dialog-item-size #@(185 15)
                  :radio-button-pushed-p nil
                  :radio-button-cluster '4))
     (have 'ncm
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "normal-constraint-mixin"
                  :dialog-item-position #@(210 210)
                  :dialog-item-size #@(185 15)
                  :radio-button-pushed-p t
                  :radio-button-cluster '4))
     (have 'development
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "Development Version"
                  :dialog-item-position #@(11 230)
                  :radio-button-pushed-p nil
                  :radio-button-cluster '5))
     (have 'runtime
           (oneof *radio-button-dialog-item*
                  :dialog-item-text "Run Time Version"
                  :dialog-item-position #@(210 230)
                  :radio-button-pushed-p t
                  :radio-button-cluster '5))
     (oneof *static-text-dialog-item*
            :dialog-item-text "Create Image:"
            :dialog-item-position #@(11 250)
            :dialog-item-size #@(102 18))
     (have 'compress
           (oneof *check-box-dialog-item*
                  :dialog-item-text "compressed"
                  :dialog-item-position #@(122 250)
                  :dialog-item-size #@(102 19)
                  :check-box-checked-p nil))
     (have 'save
           (oneof *button-dialog-item*
                  :dialog-item-text "Save As ..."
                  :dialog-item-position #@(245 250)
                  :dialog-item-size #@(85 20)
                  :dialog-item-action
                  '(lambda ()
                     (let ((file (catch :cancel 
                                   (choose-new-file-dialog :directory "home;Babylon"))))
                       (if (not (eql :cancel file))
                         (return-from-modal-dialog 
                          (ask my-dialog
                            (if (ask development (radio-button-pushed-p))
                                              (eval-enqueue '(eval `(development-options)))
                                              (eval-enqueue '(eval `(runtime-options))))
                            (if (ask free-text (check-box-checked-p))
                              (eval-enqueue '(bab-require 'free-text-mixin)))
                            (if (not (ask fm (radio-button-pushed-p)))
                              (if (ask nfm (radio-button-pushed-p))
                                (eval-enqueue '(prog1 (bab-require 'normal-frame-mixin)
                                                 (push 'normal-frame-processor *f-to-c*)))
                                (if (ask mfm (radio-button-pushed-p))
                                  (eval-enqueue '(prog1 (bab-require 'mini-frame-mixin)
                                                   (push 'mini-frame-processor *f-to-c*)))
                                  (eval-enqueue '(prog1 (bab-require 'basic-frame-mixin)
                                                   (push 'basic-frame-processor *f-to-c*))))))
                            (if (not (ask rm (radio-button-pushed-p)))
                              (if (ask nrm (radio-button-pushed-p))
                                (eval-enqueue '(prog1 (bab-require 'normal-rule-mixin)
                                                 (push 'normal-rule-processor *f-to-c*)))
                                (if (ask mrm (radio-button-pushed-p))
                                  (eval-enqueue '(prog1 (bab-require 'mini-rule-mixin)
                                                   (push 'mini-rule-processor *f-to-c*)))
                                  (eval-enqueue '(prog1 (bab-require 'basic-rule-mixin)
                                                   (push 'basic-rule-processor *f-to-c*))))))
                            (if (not (ask pm (radio-button-pushed-p)))
                              (if (ask npm (radio-button-pushed-p))
                                (eval-enqueue '(prog1 (bab-require 'normal-prolog-mixin)
                                                 (push 'normal-prolog-processor *f-to-c*)
                                                 (push 'mini-goalbox *f-to-c*)))
                                (if (ask mpm (radio-button-pushed-p))
                                  (eval-enqueue '(prog1 (bab-require 'mini-prolog-mixin)
                                                   (push 'mini-prolog-processor *f-to-c*)
                                                   (push 'mini-goalbox *f-to-c*)))
                                  (eval-enqueue '(prog1 (bab-require 'basic-prolog-mixin)
                                                   (push 'basic-prolog-processor *f-to-c*)
                                                   (push 'basic-goalbox *f-to-c*))))))
                            (if (not (ask cm (radio-button-pushed-p)))
                              (if (ask ncm (radio-button-pushed-p))
                                (eval-enqueue '(prog1 (bab-require 'normal-frame-mixin)
                                                 (bab-require 'normal-constraint-mixin)
                                                 (pushnew 'normal-frame-processor *f-to-c*)
                                                 (push 'normal-constraint-processor *f-to-c*)))
                                (if (ask mcm (radio-button-pushed-p))
                                  (eval-enqueue '(prog1 (bab-require 'mini-constraint-mixin)
                                                   (push 'mini-constraint-processor *f-to-c*)))
                                  (eval-enqueue '(prog1 (bab-require 'basic-constraint-mixin)
                                                   (push 'basic-constraint-processor *f-to-c*))))))
                            (eval-enqueue '(cc-load "mac^customs"))
                            (ask babylon-menu (remove-menu-items (find-menu-item "Configure Image")))
                            (ask babylon-load-command (menu-item-enable))
                            (eval-enqueue `(dumplisp
                                            ',file
                                            :compress
                                            ,(ask compress (check-box-checked-p)))))))))))
     (oneof *button-dialog-item*
            :dialog-item-text "Cancel"
            :dialog-item-position #@(340 246)
            :dialog-item-size #@(71 27)
            :dialog-item-action 
            #'(lambda () 
                (return-from-modal-dialog :cancel)))
     )))
    
(progn
  (push (symbol-function 'deallocate-babylon-configure-dialog) 
        *save-exit-functions*)
  (setf *restore-lisp-functions*
        (append *restore-lisp-functions*
                (list (symbol-function 'allocate-babylon-configure-dialog)
                      (symbol-function 'babylon-default-sizes)
                      (symbol-function 'babylon-default-menubar)
                      (symbol-function 'babylon-initialize-image)
                      (symbol-function 'babylon-hallo))))
  (babylon-default-menubar)
  (allocate-babylon-configure-dialog)
  (if (eql :cancel (catch :cancel
                     (modal-dialog *babylon-configure-dialog* nil)))
    (progn (ask babylon-load-command (menu-item-disable))
           (ask babylon-menu 
             (add-menu-items 
              (oneof *menu-item*
                     :menu-item-title "Configure Image"
                     :menu-item-action 
                     '(modal-dialog *babylon-configure-dialog* nil)))))))

;;; eof

