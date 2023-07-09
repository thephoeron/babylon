;;;  -*-  Mode: Lisp; Syntax: Common-Lisp; Base: 10. ;Package: User -*-

(in-package "USER")

;;------------------------------------------------------------------------
;;          deutsche kommandos
;;------------------------------------------------------------------------


(defbabylon-table cmd-table german :size 100)

;;------------------------------------------------------------------------


(defbabylon-entry shape-commands  cmd-table german
  '(("  shrink   " :value (:to-caller :shrink) 
     :documentation "verkleinert das Fenster.")
    ("   move    " :value (:to-caller :move)
     :documentation "verschiebt das Fenster.")
    ("  reshape  " :value (:to-caller :reshape)
     :documentation "gibt dem Fenster neue Gestalt.")
    ("  expand  " :value (:to-caller :expand)
     :documentation "vergroessert das Fenster.")
    ("  freeze  " :value (:to-caller :freeze)
     :documentation "haelt die momentane Gestalt als Standard fest.")
    ("  home  " :value (:to-caller :home)
     :documentation "kehrt zur Ausgangsgestalt zurueck.")
    ("  toggle  " :value (:to-caller :toggle) 
     :documentation "kehrt zur letzten Gestalt zurueck.")))


(defbabylon-entry clear&bury-commands cmd-table german 
   '(("   clear   " :value :clear
      :documentation "clear the window.")
     ("   bury    " :value :bury 
      :documentation "bury the window.")))

;;------------------------------------------------------------------------

(defbabylon-entry clear&bury-all-commands cmd-table german 
  '((" clear all "  :value :clear-kb
     :documentation "clear all KB windows.")
    (" bury all  "  :value :bury-kb
     :documentation "bury all KB windows.")))


(defbabylon-entry expose-dia cmd-table german 
  '( " expose dialog window " :value :expose-dia))

(defbabylon-entry expose-stw cmd-table german 
  '( " expose system trace " :value :expose-stw))

(defbabylon-entry expose-rtw cmd-table german 
  '( " expose rule trace " :value :expose-rtw))

(defbabylon-entry expose-ptw cmd-table german 
  '( " expose prolog trace " :value :expose-ptw))

(defbabylon-entry expose-exw cmd-table german 
  '( " expose explanation " :value :expose-exw))

(defbabylon-entry expose-rted cmd-table german 
  '( " expose rule ted " :value :expose-rule-ted))

;;; eof

