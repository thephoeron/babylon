;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: User; Base: 10 -*-

(in-package "USER")

;;;           Copyright   1989  BY
;;;           G M D  
;;;           Postfach 1240
;;;           D-5205 St. Augustin
;;;           FRG

;;;  AUTHOR:  E. Gross
;;;  DATE:    January 1989



(defsubsystem bab-core
    (:pretty-name "babylon-core"    
     :default-pathname "bab-host: babylon;kernel;")

  (:module-group meta
   (:serial ";meta; kb-core"
            ";meta; kb-stub"
	    ";meta; l-mixin"
	    ";meta; m-mixin"
	    ";meta; kb-tab-e"
	    ";meta; kb-tab-g")
   (:source-category :restricted))
 
  (:serial ";common; vars"
           ";common; c-fns"
	   ";common; p-core"
	   meta
	   (:parallel ";freetext; ft-tab-e"
	              ";freetext; ft-tab-g"
		      ";freetext; ft-proc")
	   ";freetext; ft-mixin")) 

;;--------------------------------------------------------------------------------

(defsubsystem bab-iocore
    (:pretty-name "babylon-interface-core"
     :default-pathname "bab-host: babylon;lispm;io;")

  (:parallel ";common; lm-menu" 
             ";common; mitem"
	     ";common; l-dialog"
	     ";common; sys-core"
             ";common; select"

             ";cmds; common-e"
             ";cmds; frame-e"
             ";cmds; consat-e"
	     ";cmds; rule-e"
	     ";cmds; prolog-e"
	     
	     ";cmds; common-g"
	     ";cmds; frame-g"
	     ";cmds; consat-g"
	     ";cmds; rule-g"
	     ";cmds; prolog-g"))


(defsubsystem bab-simple-io
    (:pretty-name "babylon-simple-interface"
     :default-pathname "bab-host: babylon;lispm;io;")
  
  (:serial ";windows; b-txscw"
           ";simple; b-mixin"
	   
	   ";simple; mloop"
	   ";simple; m-mixin"
	   ";simple; mbabylon"))

(defsubsystem bab-normal-io
    (:pretty-name "babylon-normal-interface"
     :default-pathname "bab-host: babylon;lispm;io;")

  (:serial ";windows; operations"
           ";windows; headline"
	   ";windows; manager"
	   ";windows; n-dialw"
	   ";windows; n-txscw"
	   ";windows; w-cmds-e"
	   ";windows; w-cmds-g"

	   ";normal; listener"
	   ";normal; n-window"
	   ";normal; n-mixin"
	   ";normal; nbabylon"))

;;--------------------------------------------------------------------------------

(defsubsystem bab-frames
    (:pretty-name "babylon-frames"
     :default-pathname "bab-host: babylon;kernel;frames;")

  (:module-group basic-frames
   (:serial ";basic; frames"
	    ";basic; fr-core"
	    ";basic; bf-inter"
	    ";basic; bf-proc"
	    ";basic; bf-mixin"))

  (:module-group mini-frames 
    (:serial ";mini; pos-vals"
             ";mini; ask-supp"
             ";mini; mf-proc"
	     ";mini; mf-mixin"))

  (:module-group normal-frames
   (:serial ";normal; act-vals"
            ";normal; nf-proc"
	    ";normal; nf-mixin"))

  (:serial ";basic; fp-tab-e"
           ";basic; fp-tab-g"
	   basic-frames
	   mini-frames 
	   normal-frames))

;;--------------------------------------------------------------------------------


(defsubsystem bab-consat
    (:pretty-name "babylon-consat"
     :default-pathname "bab-host: babylon;kernel;consat;"
     :source-category :restricted)

  (:module-group basic-consat
   (:serial ";basic; bc-fns"
            ";basic; primcstr"
	    ";basic; cstrnet"
	    ";basic; net-prop"
	    ";basic; cstrbase"
	    ";basic; bc-proc"
	    ";basic; bc-mixin"))

  (:module-group mini-consat
   (:serial ";mini; mc-trace"
            ";mini; mc-proc"
	    ";mini; mc-mixin"))

  (:module-group normal-consat
   (:serial ";normal; restrict"
            ";normal; rstreval"
	    ";normal; rstrbase"
	    ";normal; nc-proc"
	    ";normal; nc-mixin"))
  
  (:serial ";basic; cp-tab-e"
           ";basic; cp-tab-g"
           basic-consat
	   mini-consat
	   normal-consat))

;;--------------------------------------------------------------------------------

(defsubsystem bab-rules
    (:pretty-name "babylon-rules"     
     :default-pathname "bab-host: babylon;kernel;rules;")

  (:module-group basic-rules
   (:serial ";basic; rules"
            ";basic; data"
	    ";basic; br-inter"
	    ";basic; br-proc"
	    ";basic; br-mixin"))

  (:module-group mini-rules
   (:serial ";mini; mr-trace"
            ";mini; mr-proc"
	    ";mini; mr-mixin"))

  (:module-group normal-rules
   (:serial ";normal; nr-devel"
            ";normal; nr-expl"
	    ";normal; nr-proc"
	    ";normal; nr-mixin"))

  (:serial ";basic; rp-tab-e"
           ";basic; rp-tab-g"
           basic-rules
           mini-rules
           normal-rules))

;;--------------------------------------------------------------------------------

(defsubsystem bab-prolog
    (:pretty-name "babylon-prolog"
     :default-pathname "bab-host: babylon;kernel;prolog;")
  
  (:module-group basic-prolog
   (:serial ";basic; axioms"
            ";basic; ax-sc"
	    ";basic; bp-inter"
	    ";basic; bp-preds"
	    ";basic; bp-proc"
	    ";basic; bp-mixin"))

  (:module-group mini-prolog
   (:serial ";mini; mp-trace"
            ";mini; mp-preds"
	    ";mini; mp-proc"
	    ";mini; mp-mixin"))

  (:module-group normal-prolog
   (:serial ";normal; np-devel"
            ";normal; np-expl"
	    ";normal; np-proc"
	    ";normal; np-mixin"))
 
  (:serial ";basic; pp-tab-e"
           ";basic; pp-tab-g"	   
           basic-prolog
           mini-prolog
	   normal-prolog))

;;--------------------------------------------------------------------------------

(defsystem babylon
    (:default-pathname "bab-host: babylon;"
     :patchable t
     :journal-directory "bab-host: babylon;lispm;patches;"
     :initializations
     (progn
       (setf *bab-host*
	     (host-namestring (truename "bab-host:babylon;lispm.directory")))
       (defbabylon-translations
	 "babhome^"
	 (concatenate 'string
		      (directory-namestring (truename "bab-host:babylon;lispm.directory"))
		      ">"))
       (cc-load "lispm^customs")))

  (:module core   bab-core   (:type :system))
  (:module iocore bab-iocore (:type :system))

  (:module frames bab-frames (:type :system))
  (:module rules  bab-rules  (:type :system))
  (:module prolog bab-prolog (:type :system))
  (:module consat bab-consat (:type :system))

  (:module simple-io bab-simple-io (:type :system))
  (:module normal-io bab-normal-io (:type :system))

  (:module configs
          (";samples;configs; adderc"
	   ";samples;configs; animalsc"
	   ";samples;configs; globalc"
	   ";samples;configs; reactorc"
	   ";samples;configs; crossingc"
	   ";samples;configs; urlaubc"))

  (:module examples
          (";samples;axsets; cons-ax"
	   ";samples;axsets; set-ax"
	   ";samples;kbs; adder"
	   ";samples;kbs; animals"
	   ";samples;kbs; reactor"
	   ";samples;kbs; crossing"
	   ";samples;kbs; urlaub")
	  (:type :lisp-example))

  (:module modules
           (";kernel;modules; b-consat"
	    ";kernel;modules; b-frame"
	    ";kernel;modules; b-rule"
	    ";kernel;modules; b-prolog"
	    ";kernel;modules; common"
	    ";kernel;modules; meta"
	    ";kernel;modules; freetext"
	    ";kernel;modules; m-consat"
	    ";kernel;modules; m-frame"
	    ";kernel;modules; m-rule"
	    ";kernel;modules; m-prolog"
	    ";kernel;modules; m-consat"
	    ";kernel;modules; m-frame"
	    ";kernel;modules; m-rule"
	    ";kernel;modules  m-prolog"
	    ";lispm;modules; iocore"
	    ";lispm;modules; s-interf"
	    ";lispm;modules; n-interf")
	   (:type :lisp-example))

  (:module load
           (";lispm; load-babylon"
	    ";lispm; bab-host"
	    ";lispm; customs")
	   (:type :lisp-example))

  (:serial ";kernel; require"
           ";kernel; babtrans"
	   ";lispm; extens"
	   ";flavors; fls-map"
	   core
	   iocore
	   frames
	   rules
	   prolog
	   consat
	   simple-io
	   normal-io
	   configs
	   ))

;;; eof

