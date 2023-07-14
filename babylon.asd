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
  :depends-on (fmcs)
  :serial t
  :components ((:file "packages")
               (:module extens
                :pathname "tty"
                :components ((:file "extens")))
               (:module kernel
                :components ((:file "require")
                             (:file "babtrans")
                             (:module common
                              :components ((:file "vars")
                                           (:file "c-fns")
                                           (:file "p-core")))
                             (:module meta
                              :components ((:file "kb-tab-e")
                                           (:file "kb-tab-g")
                                           (:file "kb-core")
                                           (:file "m-mixin")
                                           (:file "l-mixin")
                                           (:file "kb-stub")))
                             (:module freetext
                              :components ((:file "ft-tab-e")
                                           (:file "ft-tab-g")
                                           (:file "ft-proc")
                                           (:file "ft-mixin")))
                             (:module frames
                              :components ((:module basic
                                            :components ((:file "fp-tab-e")
                                                         (:file "fp-tab-g")
                                                         (:file "frames")
                                                         (:file "fr-core")
                                                         (:file "bf-inter")
                                                         (:file "bf-proc")
                                                         (:file "bf-mixin")))
                                           (:module mini
                                            :components ((:file "pos-vals")
                                                         (:file "ask-supp")
                                                         (:file "mf-proc")
                                                         (:file "mf-mixin")))
                                           (:module normal
                                            :components ((:file "act-vals")
                                                         (:file "nf-proc")
                                                         (:file "nf-mixin")))))
                             (:module rules
                              :components ((:module basic
                                            :components ((:file "rp-tab-e")
                                                         (:file "rp-tab-g")
                                                         (:file "rules")
                                                         (:file "data")
                                                         (:file "br-inter")
                                                         (:file "br-proc")
                                                         (:file "br-mixin")))
                                           (:module mini
                                            :components ((:file "mr-trace")
                                                         (:file "mr-proc")
                                                         (:file "mr-mixin")))
                                           (:module normal
                                            :components ((:file "nr-expl")
                                                         (:file "nr-devel")
                                                         (:file "nr-proc")
                                                         (:file "nr-mixin")))))
                             (:module prolog
                              :components ((:module basic
                                            :components ((:file "pp-tab-e")
                                                         (:file "pp-tab-g")
                                                         (:file "axioms")
                                                         (:file "ax-sc")
                                                         (:file "bp-inter")
                                                         (:file "bp-preds")
                                                         (:file "bp-proc")
                                                         (:file "bp-mixin")))
                                           (:module mini
                                            :components ((:file "mp-preds")
                                                         (:file "mp-trace")
                                                         (:file "mp-proc")
                                                         (:file "mp-mixin")))
                                           (:module normal
                                            :components ((:file "np-devel")
                                                         (:file "np-expl")
                                                         (:file "np-proc")
                                                         (:file "np-mixin")))))
                             (:module consat
                              :components ((:module basic
                                            :components ((:file "cp-tab-e")
                                                         (:file "cp-tab-g")
                                                         (:file "bc-fns")
                                                         (:file "primcstr")
                                                         (:file "cstrnet")
                                                         (:file "net-prop")
                                                         (:file "cstrbase")
                                                         (:file "bc-proc")
                                                         (:file "bc-mixin")))
                                           (:module mini
                                            :components ((:file "mc-trace")
                                                         (:file "mc-proc")
                                                         (:file "mc-mixin")))
                                           (:module normal
                                            :components ((:file "restrict")
                                                         (:file "rstreval")
                                                         (:file "rstrbase")
                                                         (:file "nc-proc")
                                                         (:file "nc-mixin")))))))
               (:module tty
                :components ((:file "customs")
                             (:module basic
                              :components ((:file "tty-menu")
                                           (:file "t-dialog")
                                           (:file "b-txscw")
                                           (:file "b-mixin")))
                             (:module mini
                              :components ((:file "mitem")
                                           (:file "mloop")
                                           (:file "m-mixin")
                                           (:file "sys-core")
                                           (:file "mbabylon")))
                             (:module cmds
                              :components ((:file "common-e")
                                           (:file "frame-e")
                                           (:file "consat-e")
                                           (:file "rule-e")
                                           (:file "prolog-e")
                                           (:file "common-g")
                                           (:file "frame-g")
                                           (:file "consat-g")
                                           (:file "rule-g")
                                           (:file "prolog-g")))))
               #+nil
               (:module texi
                :components ((:module configs
                              :components ((:file "textrans")
                                           (:file "d-interf")
                                           (:file "imexport")
                                           (:file "dummyc")
                                           (:file "k1")
                                           (:file "k1dummyc")
                                           (:file "k1c")
                                           (:file "k3")
                                           (:file "k3dummyc")
                                           (:file "k3c")
                                           (:file "k3-misc")
                                           (:file "k3-print")
                                           (:file "whoppers")))
                             (:module k1
                              :components ((:file "unit-kb")
                                           (:file "unit-ex")
                                           (:file "tasks")
                                           (:file "tasks-ex")
                                           (:file "topdown")
                                           (:file "topd-ex")))
                             (:module k3
                              :components ((:file "k3-kb")
                                           (:file "k3-kb-ex")))))
               #+nil
               (:module model-k
                :components ((:module configs
                              :components ((:file "d-interf")
                                           (:file "imexport")
                                           (:file "kadsc")
                                           (:file "kadsd")
                                           (:file "floorc")))
                             (:module kbs
                              :components ((:module kads
                                            :components ((:file "basics")
                                                         (:file "errors")
                                                         (:file "mixins")
                                                         (:file "domain")
                                                         (:file "infere")
                                                         (:file "task")
                                                         (:file "tracing")))
                                           (:module floor
                                            :components ((:file "clauses")
                                                         (:file "basics")
                                                         (:file "enumeras")
                                                         (:file "rooms")
                                                         (:file "employee")
                                                         (:file "relation")
                                                         (:file "conditio")
                                                         (:file "occupancy")
                                                         (:file "requires")
                                                         (:file "mclasses")
                                                         (:file "ksources")
                                                         (:file "tasks")))))))
               (:file "babylon")))

(defsystem babylon/examples
  :description "Examples for the BABYLON system."
  :author '("\"the Phoeron\" Colin J.E. Lupton <thephoeron@protonmail.com>"
            "Jürgen Walther <juergen.walther@gmd.de>")
  :maintainer "\"the Phoeron\" Colin J.E. Lupton <thephoeron@protonmail.com>"
  :mailto "thephoeron@protonmail.com"
  :homepage "https://thephoeron.github.io/babylon/"
  :source-control (:git "https://github.com/thephoeron/babylon.git")
  :bug-tracker "https://github.com/thephoeron/babylon/issues"
  :license "MIT"
  :version (:read-file-form "VERSION")
  :depends-on (babylon)
  :serial t
  :components ((:module samples
                :components ((:module configs
                              :components ((:file "time")
                                           (:file "adderc")
                                           (:file "animalsc")
                                           (:file "extrac")
                                           (:file "puzzlec")
                                           (:file "reactorc")
                                           (:file "trafficc")
                                           (:file "urlaubc")))
                             (:module axsets
                              :components ((:file "cons-ax")
                                           (:file "set-ax")))
                             (:module kbs
                              :components ((:file "adder")
                                           (:file "animals")
                                           (:file "extra")
                                           (:file "puzzle")
                                           (:file "reactor")
                                           (:file "traffic")
                                           (:file "urlaub")))))))

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
