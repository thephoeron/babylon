(in-package :cl-user)

(defpackage babylon/asdf
  (:nicknames babylon/sys)
  (:use cl asdf uiop))

(in-package :babylon/asdf)

(defsystem babylon
  :description "Jürgen Walther's modular, configurable, hybrid knowledge engineering systems framework for Common Lisp, restored from the CMU AI Repository."
  :author '("\"the Phoeron\" Colin J.E. Lupton <thephoeron@protonmail.com>"
            "Jürgen Walther <juergen.walther@gmd.de>")
  :maintainer "\"the Phoeron\" Colin J.E. Lupton <thephoeron@protonmail.com>"
  :mailto "thephoeron@protonmail.com"
  :homepage "https://thephoeron.github.io/babylon/"
  :source-control (:git "https://github.com/thephoeron/babylon.git")
  :bug-tracker "https://github.com/thephoeron/babylon/issues"
  :license "MIT"
  :version (:read-file-form "VERSION")
  :depends-on ()
  :serial t
  :components ((:file "packages")
               (:module tty)
               (:module fmcs
                :components ())
               (:module kernel
                :components ((:file "require")
                             (:file "babtrans")
                             (:module common)
                             (:module meta)))
               (:module model-k)
               (:file "babylon")))

(defsystem babylon/test
  :description "Test suite for the BABYLON system."
  :author "\"the Phoeron\" Colin J.E. Lupton <thephoeron@protonmail.com>"
  :mailto "thephoeron@protonmail.com"
  :homepage "https://thephoeron.github.io/babylon/"
  :source-control (:git "https://github.com/thephoeron/babylon.git")
  :bug-tracker "https://github.com/thephoeron/babylon/issues"
  :license "MIT"
  :version (:read-file-form "VERSION")
  :depends-on (babylon)
  :serial t
  :components ())
