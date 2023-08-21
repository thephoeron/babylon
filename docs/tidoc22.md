# Babylon AI Workbench on the TI microExplorer

Place folders
- `lispm` and
- `ti-binary`

into the Babylon folder.

modify file `lispm:load-babylon.lisp` by setting

```lisp
; if you do not have all the sources
(setf *recompile* nil)

; to name the host:file-system you placed your babylon folder
(setf *bab-home* "lm:sc80:")
```

then evaluate file `lispm:load-babylon.lisp`
to load babylon on your microExplorer.
