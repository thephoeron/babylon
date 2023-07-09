place folder 
  lispm and
  ti-binary 
into the Babylon folder.

modify file lispm:load-babylon.lisp by setting

(setf *recompile* nil)        ; if you do not have all the sources
(setf *bab-home* "lm:sc80:")  ; to name the host:file-system you placed your babylon folder

then evaluate file lispm:load-babylon.lisp
to load babylon on your microExplorer

;;; eof

