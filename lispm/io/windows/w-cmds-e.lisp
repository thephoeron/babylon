;;;  -*-  Mode: Lisp; Syntax: Common-Lisp; Base: 10. ;Package: User -*-

(in-package "USER")

;;------------------------------------------------------------------------
;;          englische kommandos
;;------------------------------------------------------------------------

(defbabylon-table cmd-table english :size 100)

;;------------------------------------------------------------------------


(defbabylon-entry shape-commands cmd-table english 
  '(("  shrink   " :value :shrink  
     :documentation "shrinkes the window.")
    ("   move    " :value :move 
     :documentation "moves the window.")
    ("  reshape  " :value :reshape 
     :documentation "reshapes the window.")
    ("  expand  " :value :expand 
     :documentation "expands the window.")   
    ("  freeze  " :value :freeze 
     :documentation "freezes the current shape as default shape.")
    ("  home  " :value :home 
     :documentation "returns to default shape.")
    ("  toggle  " :value :toggle  
     :documentation "returns to previous shape.")))

(defbabylon-entry clear&bury-commands cmd-table english
   '(("   clear   " :value :clear
      :documentation "clear the window.")
     ("   bury    " :value :bury 
      :documentation "bury the window.")))

;;------------------------------------------------------------------------

(defbabylon-entry clear&bury-all-commands cmd-table english
  '((" clear all "  :value :clear-kb
     :documentation "clear all KB windows.")
    (" bury all  "  :value :bury-kb
     :documentation "bury all KB windows.")))


(defbabylon-entry expose-dia cmd-table english
  '( " expose dialog window " :value :expose-dia))

(defbabylon-entry expose-stw cmd-table english
  '( " expose system trace " :value :expose-stw
    :documentation "expose system trace window"))

(defbabylon-entry expose-rtw cmd-table english
  '( " expose rule trace " :value :expose-rtw))

(defbabylon-entry expose-ptw cmd-table english
  '( " expose prolog trace " :value :expose-ptw))

(defbabylon-entry expose-exw cmd-table english
  '( " expose explanation " :value :expose-exw))

(defbabylon-entry expose-rted cmd-table english
  '( " expose rule ted " :value :expose-rule-ted))


;;; eof

