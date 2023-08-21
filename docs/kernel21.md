# Documentation for BABYLON 2.1 kernel files

## 10/24/89 17:31:37

`AGENDA-ELEM` [structure]: "BASIC;CSTRNET"

-------------------------------------------------------------------

`JUSTIFICATION` [structure]: "BASIC;DATA"

-------------------------------------------------------------------

`STACK-ELEM` [structure]: "BASIC;CSTRNET"

-------------------------------------------------------------------

`TRACE-ELEMENT` [structure]: "MINI;MR-TRACE"

-------------------------------------------------------------------

`VAR-INFO` [structure]: "BASIC;CSTRNET"

-------------------------------------------------------------------

`VARCELL` [structure]: "BASIC;AX-SC"

-------------------------------------------------------------------

`*AXIOM-SETS*` [special variable]: "COMMON;VARS"

used by: `GET-KNOWN-AXIOM-SETS`, `INIT-AXSET`, `REMOVE-DEFAULT-AXSET`

-------------------------------------------------------------------

`*BAB-PROMPT*` [special variable]: "COMMON;VARS"

value: `"===>"`

-------------------------------------------------------------------

`*BABYLON*` [special variable]: "COMMON;VARS"

value: `#<NORMAL-BABYLON 32224465>`

used by: `SEND-BAB`, `SEND-BABYLON`

-------------------------------------------------------------------

`*BABYLON-MODULE-SEARCH-PATH*` [variable]: "KERNEL;REQUIRE"

value: `("configs/" "lispm/modules>" "modules/")`

used by: `BAB-REQUIRE`

-------------------------------------------------------------------

`*BABYLON-PATCHES-SEARCH-PATH*` [variable]: "KERNEL;REQUIRE"

used by: `BAB-REQUIRE`

-------------------------------------------------------------------

  *BABYLON-TRANSLATIONS*        variable            "KERNEL;REQUIRE"

     value: (("babhome/" ">babylon>") ("normal-babylon" "n-interf")
          ("normal-interface-mixin" "n-interf")
          ("mini-babylon" "s-interf")
          ("mini-interface-mixin" "s-interf")
          ("basic-interface-mixin" "s-interf")
          ("lispmio/" "lispm/io>") ("lispm/" "babhome/lispm>")
          ("normal-prolog-mixin" "n-prolog")
          ("mini-prolog-mixin" "m-prolog")
          ("basic-prolog-mixin" "b-prolog")
          ("normal-rule-mixin" "n-rule") ("mini-rule-mixin" "m-rule")
          ("basic-rule-mixin" "b-rule")
          ("normal-constraint-mixin" "n-consat")
          ("mini-constraint-mixin" "m-consat")
          ("basic-constraint-mixin" "b-consat")
          ("normal-frame-mixin" "n-frame")
          ("mini-frame-mixin" "m-frame")
          ("basic-frame-mixin" "b-frame") ...)

     used by: FIND-TRANSLATION, "hd: SC80:BABYLON:KERNEL:BABTRANS"

-------------------------------------------------------------------

  *BABYLON-VERSION*             variable            "COMMON;VARS"

     value: "2.1"

-------------------------------------------------------------------

  *C-HELP-KEY*                  variable            "COMMON;VARS"

     value: #\c-?

     used by: (:METHOD BASIC-PROLOG-MIXIN :ASK-SET-GOAL),
          (:METHOD FRAME-CORE :ASK-FOR-SLOT-PROPERTY),
          (:METHOD FRAME-CORE :ASK-FOR-SLOT-VALUE),
          (:METHOD POSS-VAL-MIXIN :ANY-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :ASK-FOR-SLOT-VALUE),
          (:METHOD POSS-VAL-MIXIN :DEFAULT-READ-METHOD)

-------------------------------------------------------------------

  *CURRENT-KNOWLEDGE-BASE*      variable            "COMMON;VARS"

     used by: CALL-KB, CURRENT-KB-TYPEP, CURRENT-P, IS-ACTIVATED-KB,
          (:METHOD KB-PROCESSOR-CORE :KILL-KB),
          (:METHOD KB-PROCESSOR-CORE :MAKE-YOURSELF-CURRENT),
          (:METHOD KB-PROCESSOR-CORE :RESET-KB),
          (:METHOD KB-PROCESSOR-CORE :START),
          (:METHOD KB-STUB :EVAL),
          (:METHOD POSS-VAL-MIXIN :PROVIDE-LOCAL-HELP), SAY,
          SEND-CURRENT-KNOWLEDGE-BASE, SEND-KB

     used as a quoted symbol in: IS-ACTIVATED-KB

-------------------------------------------------------------------

  *CURRENT-TED*                 variable            "COMMON;VARS"

   the unique current tree editor which can ~@
  be controlled via function calls in a lisp listener.

-------------------------------------------------------------------

  *DEFAULT-DIALOG-STREAM*       variable            "COMMON;VARS"

     value: #<NORMAL-LISP-LISTENER Normal Lisp Listener 1 31512653
deactivated>

-------------------------------------------------------------------

  *DEFAULT-INTERFACE*           variable            "COMMON;VARS"

     value: (NORMAL-INTERFACE-MIXIN)

     used by: GET-INTERFACE-MIXINS-TO-INCLUDE

-------------------------------------------------------------------

  *DEFAULT-KB-CONFIGURATION*    variable            "COMMON;VARS"

     value: GLOBALC

     used by: GET-KB-CONFIGURATION

-------------------------------------------------------------------

  *DEFAULT-LANGUAGE*            variable            "COMMON;VARS"

     value: ENGLISH

-------------------------------------------------------------------

  *DEFAULT-PROCS*               variable            "COMMON;VARS"

     value: (MINI-FRAME-MIXIN MINI-RULE-MIXIN MINI-PROLOG-MIXIN
          FREE-TEXT-MIXIN LISP-MIXIN)

     used by: GET-PROC-MIXINS-TO-INCLUDE

-------------------------------------------------------------------

  *END-KEY*                     variable            "COMMON;VARS"

     value: #\END

     used by: (:METHOD BASIC-PROLOG-MIXIN :ASK-SET-GOAL)

-------------------------------------------------------------------

  *FIRST-PED-INTERFACE-CALL*    variable            "COMMON;VARS"

-------------------------------------------------------------------

  *FONT-MENU*                   variable            "COMMON;VARS"

-------------------------------------------------------------------

  *FRAME-META-PREDICATES*       variable            "COMMON;VARS"

     value: (FRAME FRAME-DEF SUPER HAS-SUPER INSTANCE INSTANCE-DEF
          HAS-SLOT SLOT HAS-PROPERTY PROPERTY)

     used by: IS-FRAME-META-PREDICATE

-------------------------------------------------------------------

  *FREE-TEXT-META-PREDICATES*   variable            "COMMON;VARS"

     value: (FREE-TEXT)

     used by: IS-FREE-TEXT-META-PREDICATE

-------------------------------------------------------------------

  *HELP-KEY*                    variable            "COMMON;VARS"

     value: #\?

     used by: (:METHOD BASIC-PROLOG-MIXIN :ASK-SET-GOAL),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER-WITHOUT-ADDING),
          (:METHOD POSS-VAL-MIXIN :ANY-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :ASK-FOR-SLOT-VALUE),
          (:METHOD POSS-VAL-MIXIN :DEFAULT-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :ONE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :SOME-OF-READ-METHOD)

-------------------------------------------------------------------

  *ITEM-WIDTH*                  variable            "COMMON;VARS"

     value: 50

     used by: MAKE-FACTS-CHOICE,
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-RULE),
          (:METHOD RULE-EXPLAIN-MIXIN :WHICH-FACT)

-------------------------------------------------------------------

  *KNOWN-KNOWLEDGE-BASES*       variable            "COMMON;VARS"

     used by: (:METHOD KB-PROCESSOR-CORE :KILL-KB),
          (:METHOD KB-PROCESSOR-CORE :MAKE-YOURSELF-KNOWN),
          (:METHOD KB-PROCESSOR-CORE :MAKE-YOURSELF-UNKNOWN)

-------------------------------------------------------------------

  *LANGUAGE*                    variable            "COMMON;VARS"

     value: ENGLISH

     used by: <--, (:METHOD ACTIVE-VALUE-MIXIN :CHECK-INIT-VALUE),
          (:METHOD ACTIVE-VALUE-MIXIN :NO-UPDATE-PERMITTED),
          (:METHOD AX-DEVELOP-MIXIN :INSPECT-AXIOMS),
          (:METHOD AX-DEVELOP-MIXIN :MOM-SHOW-PREMISE),
          (:METHOD AXSET-BASIC :ADDAX),
          (:METHOD AXSET-BASIC :KB-INFORM),
          (:METHOD AXSET-BASIC :PRINT),
          (:METHOD AXSET-BASIC :USE-AXIOM-SETS),
          (:METHOD BASIC-CONSTRAINT-MIXIN :CHOOSE-C-TYPE),
          (:METHOD BASIC-CONSTRAINT-MIXIN :PRINT-EXIT),
          (:METHOD BASIC-CONSTRAINT-MIXIN :READ),
          (:METHOD BASIC-CONSTRAINT-PROCESSOR :KB-INFORM),
          (:METHOD BASIC-FRAME-MIXIN :ASK-EVAL-FRAME-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-BEHAVIOR-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-CLASS-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-META-PREDICATE-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-PROLOG-FRAME-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :GET-ASK),
          (:METHOD BASIC-FRAME-MIXIN :SELECT-DESCRIBE-FRAME),
          (:METHOD BASIC-FRAME-MIXIN :SELECT-DESCRIBE-INSTANCE),
          (:METHOD BASIC-FRAME-PROCESSOR :KB-INFORM),
          (:METHOD BASIC-FRAME-PROCESSOR :PRINT),
          (:METHOD BASIC-GOALBOX :ABORT),
          (:METHOD BASIC-GOALBOX :PROVE-ABOLISH),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTA),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTZ),
          (:METHOD BASIC-GOALBOX :PROVE-ASSUME),
          (:METHOD BASIC-GOALBOX :PROVE-CALL),
          (:METHOD BASIC-GOALBOX :PROVE-CALLPRED),
          (:METHOD BASIC-GOALBOX :PROVE-CLAUSE),
          (:METHOD BASIC-GOALBOX :PROVE-RETRACT),
          (:METHOD BASIC-GOALBOX :PROVE-VAR),
          (:METHOD BASIC-GOALBOX :PROVE-VARPRED),
          (:METHOD BASIC-PROLOG-MIXIN :ASK-SET-GOAL),
          (:METHOD BASIC-PROLOG-MIXIN :DISPLAY-RESULT),
          (:METHOD BASIC-PROLOG-MIXIN :EVAL-GOAL),
          (:METHOD BASIC-PROLOG-MIXIN :LIST-PREDICATE),
          (:METHOD BASIC-PROLOG-MIXIN :PROVE-DISPLAY),
          (:METHOD BASIC-PROLOG-MIXIN :READ-CLAUSES),
          (:METHOD BASIC-PROLOG-MIXIN :SELECT-AXSET-NAME),
          (:METHOD BASIC-PROLOG-MIXIN :SELECT-FORMAT),
          (:METHOD BASIC-PROLOG-MIXIN :SELECT-LIST-PREDICATE),
          (:METHOD BASIC-PROLOG-MIXIN :SHOW-AXIOMS),
          (:METHOD BASIC-PROLOG-MIXIN :SHOW-FORM),
          (:METHOD BASIC-PROLOG-MIXIN :SHOW-VARS),
          (:METHOD BASIC-RULE-MIXIN :BEFORE :ADD-TO-RULES),
          (:METHOD BASIC-RULE-MIXIN :EVAL-RULE-META-REFERENCE-FOR-PROLOG),
          (:METHOD BASIC-RULE-MIXIN :OBTAIN),
          (:METHOD BASIC-RULE-MIXIN :SELECT-LIST-RULE),
          (:METHOD BASIC-RULE-MIXIN :SELECT-RULE-SET-NAME),
          (:METHOD BASIC-RULE-MIXIN :TEST-HYPOTHESES),
          BUILD-CONSTRAINT-TRACE-ITEM-LIST, CHECK-BINDINGS,
          CHECK-FRAME-DEFINITION, CHECK-INSTANCE-DEFINITION,
          CHECK-RULE-SET-SYNTAX,
          CHECK-RULE-SET-VARIABLES-SPECIFICATION, CHECK-RULE-SYNTAX,
          CHOOSE-CONSTRAINT-TRACE-MODE, CHOOSE-ELEMENT-TYPE,
          CHOOSE-NUMBER-OF-RESULTS, CHOOSE-RELATION,
          CHOOSE-SPECIAL-CONSTRAINT,
          (:METHOD CONSTRAINT-NET :RESTORE-STATE), CURRENT-KB-TYPEP,
          (:METHOD DATA-BASE :ASK-USER),
          (:METHOD DATA-BASE :PRINT-HYPOTHESES-VERIFIED),
          (:METHOD DATA-BASE :PRINT-TRUE-FACTS),
          DETERMINE-CONSISTENCY-LEVEL, EVAL-FIRST-VALUE-ASS,
          EXCEPTION-COMMENT, FORMAT-EXPECTATIONS,
          FORMAT-TRANSLATE-TRUE-OR-FALSE,
          (:METHOD FRAME-BASE :NEW-BEHAVIOR-FORM),
          (:METHOD FRAME-CORE :ASK),
          (:METHOD FRAME-CORE :ASK-FOR-SLOT-PROPERTY),
          (:METHOD FRAME-CORE :DELETE-PROPERTY),
          (:METHOD FRAME-CORE :PROMPT-FOR-VALUE),
          (:METHOD FRAME-CORE :SLOT-MESSAGE),
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE),
          (:METHOD FREE-TEXT-MIXIN :ASK-USER),
          (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT),
          (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT-FOR-PROLOG),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER-WITHOUT-ADDING),
          GENERATE-HOW-MENU-ITEMS, GET-CONSTRAINT, GET-DEF-CONDITION,
          GET-DEF-EXPRESSIONS, GET-DEF-INTERFACE, GET-DEF-RELATION,
          GET-DEF-TYP, GET-FRAME-NAME,
          GET-FRAME-NAME-OR-SIGNAL-ERROR, GET-FRAME-NAME-WITH-CHECK,
          GET-INSTANCE-NAME, GET-INSTANCE-NAME-WITH-CHECK,
          GET-LIST-OF-CHOICES, GET-OP-DEF, GET-RESTRICTIONS,
          GET-SLOT-REFS, GET-VAR-INFO-VALUES, GETENTRY2,
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-ABOLISH),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-ASSERT),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-ASSUME),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-CUT),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-EQUAL),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-EXT-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-FAIL),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-FORMAT),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-IS),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-LISP),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NOEQUAL),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NORMAL-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NORMAL-BEFORE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-READ),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-REPEAT),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TOP-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TOP-BEFORE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TRY-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TRY-BEFORE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TYPE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-WRITE),
          (:METHOD KB-PROCESSOR-CORE :KB-INFORM),
          (:METHOD KB-PROCESSOR-CORE :MAKE-YOURSELF-CURRENT),
          (:METHOD KB-PROCESSOR-CORE :RESET-KB-CONFIRMED),
          (:METHOD KB-PROCESSOR-CORE :START),
          (:METHOD KB-PROCESSOR-CORE :START-KB-CONFIRMED),
          (:METHOD KB-STUB :EVAL), KNOWN-AXIOM-SET,
          MAKE-DEFINSTANCE-EXAMPLE, MAKE-FRAME-DEFINITION-EXAMPLE,
          MAKE-FULL-RULE-EXAMPLE, MAKE-GLOBAL-VALUE-ASS,
          MAKE-LHS-EXAMPLE, MAKE-LOCAL-VALUE-ASS, MAKE-RHS-EXAMPLE,
          MAKE-RULE-HEADER, MAKE-SLOT-SPECIFICATION-EXAMPLE,
          MAKE-SUPERS-SPECIFICATION-EXAMPLE, MENU-CHOOSE-TRANSLATE,
          MENU-MULT-CHOOSE-TRANSLATE,
          (:METHOD META-PROCESSOR-CORE :BEFORE :EVAL),
          (:METHOD META-PROCESSOR-CORE :EVAL),
          (:METHOD META-PROCESSOR-CORE :TRACE-STATUS),
          (:METHOD MINI-CONSTRAINT-MIXIN :PROTOCOL),
          (:METHOD MINI-CONSTRAINT-PROCESSOR :TRACE-STATUS),
          (:METHOD MINI-PROLOG-MIXIN :SELECT-PREDS-FOR-TRACING),
          (:METHOD MINI-PROLOG-MIXIN :SELECT-PREDS-TO-TOGGLE),
          (:METHOD MINI-PROLOG-MIXIN :SET-PROLOG-TRACE-OPTIONS),
          (:METHOD MINI-PROLOG-MIXIN :SHOW-TRACE-STATUS),
          (:METHOD MINI-RULE-MIXIN :DISPLAY-RULE-TRACE),
          (:METHOD MINI-RULE-MIXIN :DISPLAY-TRACE-ELEMENT),
          (:METHOD MINI-RULE-MIXIN :SELECT-RULES-FOR-TRACING),
          (:METHOD MINI-RULE-MIXIN :SELECT-RULES-TO-TOGGLE),
          (:METHOD MINI-RULE-MIXIN :SET-RULE-TRACE-OPTIONS),
          (:METHOD NORMAL-CONSTRAINT-PROCESSOR :AFTER :KB-INFORM),
          NORMALIZE-ANSWER, NORMALIZE-CLAUSE,
          (:METHOD POSS-VAL-MIXIN :ANY-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :CHECK-CORRECT-VALUE),
          (:METHOD POSS-VAL-MIXIN :CHECK-FORMAT-OF-EXPLAIN-ANSWERS),
          (:METHOD POSS-VAL-MIXIN :CHECK-INIT-VALUE),
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :ONE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :PROVIDE-LOCAL-HELP),
          (:METHOD POSS-VAL-MIXIN :SOME-OF-READ-METHOD),
          (:METHOD PROC-EXPLAIN-MIXIN :EXPLAIN-KONTEXT),
          (:METHOD PROC-EXPLAIN-MIXIN :WHY-GOAL),
          (:METHOD PROC-SC-MIXIN :RETURN-FORM),
          (:METHOD PROC-SC-MIXIN :RETURN-RESULT),
          (:METHOD PROC-SC-MIXIN :RETURN-VARS),
          (:METHOD PROLOG-INTERPRETER :PROVE-RETURN),
          (:METHOD PROLOG-INTERPRETER :WHY),
          (:METHOD PROLOG-TRACE-MIXIN :TRACE-STATUS),
          RESET-AXIOM-SET,
          (:METHOD RESTRICTION-NET :MAKE-SLOT-RESTRICTION),
          (:METHOD RULE-BASE :GET-RULE-SET),
          (:METHOD RULE-BASE :MODIFY-RULE),
          (:METHOD RULE-BASE :RULE-STATISTICS),
          (:METHOD RULE-BASE :UNPARSE-RULES),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-RULES-FOR-TERM),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-TERMS-FOR-INSPECTION),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-TERMS-FOR-INSPECTION2),
          (:METHOD RULE-DEVELOP-MIXIN :FILTER-TERMS),
          (:METHOD RULE-DEVELOP-MIXIN :INSPECT-TERMS),
          (:METHOD RULE-DEVELOP-MIXIN :INSPECT-TERMS2),
          (:METHOD RULE-DEVELOP-MIXIN :PRINT-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-RULE-SET),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-TERM),
          (:METHOD RULE-EXPLAIN-MIXIN :DISPLAY-TERM-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :DISPLAY-UNPROVABLE-TERM-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-ACTION),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-PREMISE),
          (:METHOD RULE-EXPLAIN-MIXIN :GET-INPUT-TYPE),
          (:METHOD RULE-EXPLAIN-MIXIN :HOW),
          (:METHOD RULE-EXPLAIN-MIXIN :HOW-ULTIMATELY),
          (:METHOD RULE-EXPLAIN-MIXIN :TRANSLATE-STATUS-INTO-STRING),
          (:METHOD RULE-EXPLAIN-MIXIN :WHICH-FACT),
          (:METHOD RULE-EXPLAIN-MIXIN :WHY),
          (:METHOD RULE-TRACE-MIXIN :DISPLAY-TRACED-RULE),
          (:METHOD RULE-TRACE-MIXIN :NEEDED-TO-SHOW),
          (:METHOD RULE-TRACE-MIXIN :TRACE-STATUS), SEARCH-FOR-KB,
          SIGNAL-UNKNOWN-FRAME, SPLIT-AND-PUT-ASSOCIATION,
          TRANSLATE-ANSWER, USE-OLD-KB?, VALUE-SPEC-TEST,
          WARN-IF-NO-PROLOG

     used as a quoted symbol in: DEFBABYLON-ENTRY

-------------------------------------------------------------------

  *MAX-MENU-ENTRIES*            variable            "COMMON;VARS"

     value: 20

     used by: (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :FILTER-TERMS),
          (:METHOD RULE-DEVELOP-MIXIN :PRINT-RULE)

-------------------------------------------------------------------

  *MAXVAR*                      variable            "COMMON;VARS"

     type: FIXNUM

     used by: (:METHOD PROC-SC-MIXIN :SETGOAL), TRANS-CLAUSE1

-------------------------------------------------------------------

  *META-PREDS*                  variable            "COMMON;VARS"

     value: (NOT CALL AND OR)

-------------------------------------------------------------------

  *PROLOG-JUNCTOR-FOR-RULES*    variable            "COMMON;VARS"

     value: (AND OR)

     used by: IS-PROLOG-JUNCTOR-FOR-RULES

-------------------------------------------------------------------

  *PROLOG-PREDS-TRACED*         variable            "COMMON;VARS"

     used by: (:METHOD PROLOG-TRACE-MIXIN :SYNCHRONIZE-TRACE)

-------------------------------------------------------------------

  *PROLOG-SYSPREDS*             variable            "COMMON;VARS"

     value: (CLAUSE RETRACT ABOLISH ASSUME ASSERTZ ASSERTA VAR
INTEGER
          ATOMIC ATOM FORMAT WRITE READ =/= =< >= > < =.= /== ...)

     used by: (:METHOD BASIC-GOALBOX :CLAUSE-USED),
          (:METHOD PROLOG-TRACE-MIXIN :SYNCHRONIZE-TRACE),
          "hd: SC80:BABYLON:KERNEL:PROLOG:BASIC:BP-PREDS"

-------------------------------------------------------------------

  *RECOMPILE*                   variable            "KERNEL;REQUIRE"

     used by: CC-LOAD

-------------------------------------------------------------------

  *RULE-META-PREDICATES*        variable            "COMMON;VARS"

     value: (RULE-SET RULE-SET-DEF HAS-RULE RULE)

     used by: IS-RULE-META-PREDICATE

-------------------------------------------------------------------

  *TENV                         variable            "BASIC;AX-SC"

     type: LIST

     used by: (:METHOD PROC-SC-MIXIN :CLAUSE-TRANS-UNIFY),
          (:METHOD PROC-SC-MIXIN :TRANS-UNIFY),
          (:METHOD PROC-SC-MIXIN :UNIFY), UNIFY

-------------------------------------------------------------------

  *TENV-DEPTH                   variable            "BASIC;AX-SC"

     type: FIXNUM

     used by: (:METHOD PROC-SC-MIXIN :CLAUSE-TRANS-UNIFY),
          (:METHOD PROC-SC-MIXIN :TRANS-UNIFY),
          (:METHOD PROC-SC-MIXIN :UNIFY), UNIFY

-------------------------------------------------------------------

  *TRANS-PATH-FKT*              variable            "KERNEL;REQUIRE"

     value: (NAMED-LAMBDA MAKE-TI-PATHNAME (BAB-PATH HOST TYPE)
          (BLOCK MAKE-TI-PATHNAME (LET ((TRUE-TYPE #)) (MERGE-
PATHNAMES (SUBSTITUTE #\: #\> BAB-PATH) (CONCATENATE # HOST "foo."
TRUE-TYPE)))))

     used by: TRANSFORM-PATHSTRING

-------------------------------------------------------------------

  *VAR-PREFIX*                  variable            "COMMON;VARS"

     value: #\_

-------------------------------------------------------------------

  *VARS                         variable            "BASIC;AX-SC"

     type: LIST

     used by: (:METHOD PROC-SC-MIXIN :SETGOAL), TRANS-CLAUSE,
          TRANS-CLAUSE1

-------------------------------------------------------------------




  $INST                         macro               "BASIC;FRAMES"

     parameters: (INSTANCE-NAME)

-------------------------------------------------------------------

  $SETF-VALUE                   macro               "BASIC;FR-CORE"

     parameters: (SLOT-NAME NEW-VALUE &OPTIONAL (PROP-NAME :VALUE))

     uses keywords: :SET, :VALUE

-------------------------------------------------------------------

  $VALUE                        macro               "BASIC;FR-CORE"

     parameters: (SLOT-NAME &OPTIONAL (PROP-NAME :VALUE))

     used as a constant by: (:PROPERTY $VALUE SYS::SETF-METHOD)

     uses keywords: :GET, :VALUE

-------------------------------------------------------------------

  (:PROPERTY $VALUE SYS::SETF-METHOD)  macro        "BASIC;FR-CORE"

     parameters: (SLOT-NAME &OPTIONAL (PROP-NAME :VALUE))

     calls: GENSYM

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

     uses keywords: :SET, :VALUE

-------------------------------------------------------------------

  %GET-FRAME-NAME                                   "BASIC;FRAMES"

     parameters: (FRAME-INTERNAL-NAME)

     called by: (:METHOD FRAME-CORE :TYPE),
          (:METHOD FRAME-CORE :UNPARSE-INSTANCE)

     macros expanded: FRAME-DEFINITION

     uses keywords: :FRAME-DEFINITION

-------------------------------------------------------------------

  %GET-OBJECT-NAME                                  "BASIC;FRAMES"

     parameters: (OBJECT-NAME &OPTIONAL (KB-PKG NIL))

     called by: %IS-BEHAVIOR, %IS-FRAME-NAME, %IS-INSTANCE-NAME,
          %IS-SLOT, GET-FRAME-NAME, GET-FRAME-NAME-OR-SIGNAL-ERROR,
          GET-FRAME-NAME-WITH-CHECK, GET-INSTANCE-NAME,
          GET-INSTANCE-NAME-WITH-CHECK, IS-FRAME, IS-INSTANCE

     calls: FIND-SYMBOL, SEND-KB

     uses keywords: :PKG

-------------------------------------------------------------------

  %IS-BEHAVIOR                                      "BASIC;BF-MIXIN"

     parameters: (SELECTOR INSTANCE PREFIX)

     used as a constant by: FRAME-TYPE

     calls: %GET-OBJECT-NAME

     macros expanded: $SEND, KEYWORDP, SEND

     special variables: *KEYWORD-PACKAGE*

     uses keywords: :INSTANCE, :OPERATION-HANDLED-P

-------------------------------------------------------------------

  %IS-FRAME                                         "BASIC;FRAMES"

     parameters: (OBJECT-INTERNAL-NAME)

     called by: GET-FRAME-NAME-OR-SIGNAL-ERROR,
          GET-FRAME-NAME-WITH-CHECK

     macros expanded: FRAME-DEFINITION

     uses keywords: :FRAME-DEFINITION

-------------------------------------------------------------------

  %IS-FRAME-NAME                                    "BASIC;BF-MIXIN"

     parameters: (NAME PREFIX)

     used as a constant by: FRAME-TYPE

     calls: %GET-OBJECT-NAME

     macros expanded: FRAME-DEFINITION

     uses keywords: :FRAME-DEFINITION

-------------------------------------------------------------------

  %IS-INSTANCE                                      "BASIC;FRAMES"

     parameters: (OBJECT-INTERNAL-NAME)

     called by: GET-INSTANCE-NAME-WITH-CHECK

     macros expanded: INSTANCE-DEFINITION

     uses keywords: :INSTANCE-DEFINITION

-------------------------------------------------------------------

  %IS-INSTANCE-NAME                                 "BASIC;BF-MIXIN"

     parameters: (NAME PREFIX)

     used as a constant by: FRAME-TYPE

     calls: %GET-OBJECT-NAME

     macros expanded: INSTANCE-DEFINITION

     uses keywords: :INSTANCE-DEFINITION

-------------------------------------------------------------------

  %IS-SLOT                                          "BASIC;BF-MIXIN"

     parameters: (SLOT INSTANCE PREFIX)

     used as a constant by: FRAME-TYPE

     calls: %GET-OBJECT-NAME, SYS:MEMBER-EQL

     macros expanded: $SEND, SEND

     uses keywords: :INSTANCE, :SLOTS

-------------------------------------------------------------------

  %MAKE-OBJECT-NAME                                 "BASIC;FRAMES"

     parameters: (NAME &OPTIONAL (KB-PKG NIL))

     called by: MAKE-FRAME-NAME, MAKE-INSTANCE-NAME

     calls: INTERN, SEND-KB

     uses keywords: :PKG

-------------------------------------------------------------------

  /==                           macro               "BASIC;BP-PREDS"

     parameters: (ARG1 ARG2)

-------------------------------------------------------------------

  <-                            macro               "BASIC;FR-CORE"

     parameters: (INSTANCE-NAME SLOT-OR-METHOD &REST ARGS)

     used as a constant by: EXT-REP-CLAUSE, NORMALIZE-CLAUSE

-------------------------------------------------------------------

  <--                           macro               "BASIC;FR-CORE"

     parameters: (INSTANCE-NAME SLOT-OR-METHOD &REST ARGS)

     used as a constant by: <-

     calls: ERROR, EVERY, GETHASH, INTERNAL-RELATION-NAME, KEYWORDP

     macros expanded: BABERROR, CASE, CHECK-FOR-EQUAL-RELATION,
          GETENTRY, IS-FACET, IS-PATH, IS-USER-DEFINED-METHOD,
          KEYWORDP, NORMALIZE-ARGS

     special variables: *KEYWORD-PACKAGE*, *LANGUAGE*

     uses keywords: :GET, :RECALL, :REMEMBER, :STORE, :VALUE

-------------------------------------------------------------------

  =.=                           macro               "BASIC;BP-PREDS"

     parameters: (ARG1 ARG2)

-------------------------------------------------------------------

  =/=                           macro               "BASIC;BP-PREDS"

     parameters: (ARG1 ARG2)

-------------------------------------------------------------------

  =<                            macro               "BASIC;BP-PREDS"

     parameters: (ARG1 ARG2)

-------------------------------------------------------------------

  ==                            macro               "BASIC;BP-PREDS"

     parameters: (ARG1 ARG2)

-------------------------------------------------------------------

  ?-                            macro               "BASIC;BP-MIXIN"

     parameters: (&REST GOALS)

     uses keywords: :PROLOG-PROVE-LOOP

-------------------------------------------------------------------

  ABBREVIATED-CONDITION                             "BASIC;CSTRBASE"

     parameters: (CONDITION)

     called by: COMPILE-CONDITION,
          (:METHOD CONSTRAINT-BASE :NEW-PRIMITIVE)

     uses keywords: :OR

    T, falls condition gleich :OR ist

-------------------------------------------------------------------

  ACTIVATION-P                                      "BASIC;PRIMCSTR"

     parameters: (CONDITION LIST-OF-VALUE-ASS)

     called by: ACTIVATION-P, (:METHOD CONSTRAINT :ACTIVATE)

     calls: ACTIVATION-P, EVALUATE-CONDITION

-------------------------------------------------------------------

  (:METHOD ACTIVE-VALUE-MIXIN :ACTIVE-VALUE-GET)    "NORMAL;ACT-VALS"

     parameters: (VALUE SLOT-NAME PROP-NAME)

     calls: IS-ACTIVE-VALUE

     macros expanded: $SEND, SEND

     uses keywords: :ACTIVE-VALUE-GET, :GET-BEHAVIOR, :LOCAL-VALUE

   evaluates an active-value construct recursively.

-------------------------------------------------------------------

  (:METHOD ACTIVE-VALUE-MIXIN :ACTIVE-VALUE-SET)    "NORMAL;ACT-VALS"

     parameters: (NEW-VALUE OLD-VALUE SLOT-NAME PROP-NAME)

     calls: IS-ACTIVE-VALUE

     macros expanded: $SEND, SEND

     uses keywords: :ACTIVE-VALUE-SET, :GET-BEHAVIOR, :LOCAL-VALUE,
          :PUT-BEHAVIOR

   evaluates an active-value construct recursively.

-------------------------------------------------------------------

  (:METHOD ACTIVE-VALUE-MIXIN :CHECK-INIT-VALUE)    "NORMAL;ACT-VALS"

     parameters: (SLOT VALUE)

     calls: ERROR, GET-POSS-VAL-ARGS, GET-POSS-VAL-TYPE, GETHASH,
          IS-ACTIVE-VALUE, IS-METHOD-OF, TYPE-OF

     macros expanded: $SEND, BABERROR, FLAVOR-TYPE-OF, GETENTRY,
          SEND

     instance variables: OBJECT-NAME

     special variables: *LANGUAGE*, SELF

     uses keywords: :CHECK-VALUE, :GET, :POSSIBLE-VALUES

   internal method. checks whether value is a possible value for
slot.
produces an error if the check fails.

-------------------------------------------------------------------

  (:METHOD ACTIVE-VALUE-MIXIN :DEFAULT-GET-BEHAVIOR)  "NORMAL;ACT-
VALS"

     parameters: (OLD-LOCAL-VALUE ACTIVE-VALUE PROP-NAME SLOT-NAME)

-------------------------------------------------------------------

  (:METHOD ACTIVE-VALUE-MIXIN :DEFAULT-PUT-BEHAVIOR)  "NORMAL;ACT-
VALS"

     parameters: (NEW-LOCAL-VALUE ACTIVE-VALUE PROP-NAME SLOT-NAME)

-------------------------------------------------------------------

  (:METHOD ACTIVE-VALUE-MIXIN :FIRST-FETCH)         "NORMAL;ACT-VALS"

     parameters: (OLD-LOCAL-VALUE ACTIVE-VALUE PROP-NAME SLOT-NAME)

     calls: EVAL

     macros expanded: $SEND, SEND

     uses keywords: :REPLACE

-------------------------------------------------------------------

  (:METHOD ACTIVE-VALUE-MIXIN :GET)                 "NORMAL;ACT-VALS"

     parameters: (SLOT-NAME &OPTIONAL (PROP-NAME :VALUE))

     calls: GET-VALUE-ONLY, MAKE-CONDITION, SYS:MEMBER-EQL,
          SIGNAL, TYPE-OF

     macros expanded: $SEND, ASSERT, CASE, FLAVOR-TYPE-OF,
          GET-SLOT-PLIST, IS-VALUE, SEND, SIGNAL-PROCEED-CASE,
          SYMBOL-VALUE-IN-$INSTANCE, SYMEVAL-IN-INSTANCE

     instance variables: OBJECT-NAME, SLOTS

     special variables: SELF

     uses keywords: :ACTIVE-VALUE-GET, :FORMAT-ARGS, :FORMAT-STRING,
          :GET, :GET-VALUE-ONLY, :PLACES, :PROCEED-TYPES, :VALUE

   :get method that regards active values and constraint attachments.

-------------------------------------------------------------------

  (:METHOD ACTIVE-VALUE-MIXIN :GET-BEHAVIOR)        "NORMAL;ACT-VALS"

     parameters: (ACTIVE-VALUE)

     uses keywords: :DEFAULT-GET-BEHAVIOR

   selects the :get behavior.

-------------------------------------------------------------------

  (:METHOD ACTIVE-VALUE-MIXIN :GET-INDIRECT)        "NORMAL;ACT-VALS"

     parameters: (OLD-LOCAL-VALUE ACTIVE-VALUE PROP-NAME SLOT-NAME)

     calls: SEND-TO-INSTANCE-OR-SELF

     special variables: SELF

     uses keywords: :GET, :VALUE

-------------------------------------------------------------------

  (:METHOD ACTIVE-VALUE-MIXIN :INIT-SLOT)           "NORMAL;ACT-VALS"

     parameters: (SLOT-NAME SLOT-SPEZIFICATION CHECK)

     calls: IS-ACTIVE-VALUE, NORMALIZE-PLIST-WITH-ACT-VALS, REVERSE

     macros expanded: $SEND, SEND

     uses keywords: :CHECK-INIT-VALUE, :REPLACE, :SET, :VALUE

   initializes a slot with values from slot-spezification.

-------------------------------------------------------------------

  (:METHOD ACTIVE-VALUE-MIXIN :LOCAL-VALUE)         "NORMAL;ACT-VALS"

     parameters: (ACTIVE-VALUE)

   selects the local value.

-------------------------------------------------------------------

  (:METHOD ACTIVE-VALUE-MIXIN :NO-UPDATE-PERMITTED)  "NORMAL;ACT-
VALS"

     parameters: (NEW-LOCAL-VALUE ACTIVE-VALUE PROP-NAME SLOT-NAME)

     calls: ERROR, GETHASH

     macros expanded: BABERROR, GETENTRY

     instance variables: OBJECT-NAME

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  (:METHOD ACTIVE-VALUE-MIXIN :PUT)                 "NORMAL;ACT-VALS"

     parameters: (SLOT-NAME NEW-VALUE
          &OPTIONAL (PROP-NAME :VALUE) (TEST NIL))

     macros expanded: $SEND, IS-VALUE, SEND

     uses keywords: :CHECK-CORRECT-VALUE, :SET, :VALUE

   sets thevalue of a slot checking
   whether the value is a possible value for the slot.
   active values are regarded
   furthermore it is checked whether all attached constraints are
satisfied
   if the option test is equal to :test.

-------------------------------------------------------------------

  (:METHOD ACTIVE-VALUE-MIXIN :PUT-BEHAVIOR)        "NORMAL;ACT-VALS"

     parameters: (ACTIVE-VALUE)

     uses keywords: :DEFAULT-PUT-BEHAVIOR

   selects the :put behavior.

-------------------------------------------------------------------

  (:METHOD ACTIVE-VALUE-MIXIN :PUT-IF-SATISFIED)    "NORMAL;ACT-VALS"

     parameters: (SLOT-NAME NEW-VALUE &OPTIONAL (PROP-NAME :VALUE))

     macros expanded: $SEND, SEND

     uses keywords: :PUT, :TEST, :VALUE

   sets the value of a slot, if the attached constraints are
satisfied.

-------------------------------------------------------------------

  (:METHOD ACTIVE-VALUE-MIXIN :PUT-INDIRECT)        "NORMAL;ACT-VALS"

     parameters: (NEW-LOCAL-VALUE ACTIVE-VALUE PROP-NAME SLOT-NAME)

     calls: SEND-TO-INSTANCE-OR-SELF

     macros expanded: $SEND, SEND

     special variables: SELF

     uses keywords: :LOCAL-VALUE, :SET, :VALUE

-------------------------------------------------------------------

  (:METHOD ACTIVE-VALUE-MIXIN :SET)                 "NORMAL;ACT-VALS"

     parameters: (SLOT-NAME NEW-VALUE
          &OPTIONAL (PROP-NAME :VALUE) (TEST NIL))

     calls: TYPE-OF

     macros expanded: $SEND, FLAVOR-TYPE-OF, IS-VALUE, SEND

     special variables: SELF

     uses keywords: :ACTIVE-VALUE-SET, :GET-VALUE-ONLY, :PUT,
          :SET-VALUE-ONLY, :VALUE

   sets the value of a slot without checking
   whether the value is a possible value for the slot.
   active values are regarded
   furthermore it is checked whether all attached constraints are
satisfied
   if the option test is equal to :test

-------------------------------------------------------------------

  ADAPT-CONSISTENCY-LEVEL                           "BASIC;NET-PROP"

     parameters: (CONSISTENCY-LEVEL)

     called by: (:METHOD CONSTRAINT-NET :EVALUATE-EXPRESSION),
          (:METHOD CONSTRAINT-TRACE-MIXIN :EVALUATE-EXPRESSION)

-------------------------------------------------------------------

  ADD-AXIOMS                                        "BASIC;AXIOMS"

     parameters: (AXIOM-SET CLAUSES)

     called by: ASSERT-AXIOMS, RESET-AXIOM-SET

     calls: NCONC, PROLOG-ASSERT

     macros expanded: DO-NAMED

   adds `<clauses>` to the clauses of `<axiom-set>`.

-------------------------------------------------------------------

  ADD-INSTANCE-TO-FRAME                             "BASIC;FRAMES"

     parameters: (FRAME-NAME INSTANCE-NAME)

     called by: (:METHOD FRAME-BASE :NEW-INSTANCE)

     calls: SYS:*APPEND, GET-FRAME-NAME-WITH-CHECK,
          SYS:MEMBER-EQL, SYS::SETPROP

     macros expanded: FRAME-INSTANCES, SYS::XR-BQ-APPEND

     uses keywords: :INSTANCES

-------------------------------------------------------------------

  ADD-PRED                      macro               "BASIC;AXIOMS"

     parameters: (PRED AXIOM-SET)

     expanded in: PROLOG-ASSERT

   adds `<pred>` to the list of predicates of `<axiom-set>`.

-------------------------------------------------------------------

  ADD-SUBFRAME                                      "BASIC;FRAMES"

     parameters: (FRAME-NAME SUPER-FRAME-NAME)

     called by: INSTALL-SUBFRAME

     calls: GET-FRAME-NAME-WITH-CHECK, SYS:MEMBER-EQL,
          SYS::SETPROP

     macros expanded: FRAME-SUBCLASSES

     uses keywords: :SUBCLASSES

-------------------------------------------------------------------

  ADD-TO-BEHAVIORS                                  "BASIC;FRAMES"

     parameters: (FRAME-NAME BEHAVIOR-DEF)

     used as a constant by: (:METHOD FRAME-BASE :NEW-BEHAVIOR-FORM)

     calls: SYS:*APPEND, SYS:ASSOC-EQUAL, GET-FRAME-NAME,
          SYS::SETPROP

     macros expanded: FRAME-BEHAVIORS, SYS::XR-BQ-APPEND

     uses keywords: :BEHAVIORS

-------------------------------------------------------------------

  ADD-VAR-INFO-VALUES                               "BASIC;CSTRNET"

     parameters: (INFO-ASSOC VALUE-SPEC)

     called by: (:METHOD RESTRICTION-NET :COPY-POSSIBLE-VALUES),
          (:METHOD RESTRICTION-NET :COPY-VALUES),
          UPDATE-NET-VALUE-ASS

     calls: EXTENDED-INTERSECTION, REPLACE-VAR-INFO-VALUES

     macros expanded: GET-VAR-INFO

-------------------------------------------------------------------

  ADJUST-VALUE-ASS                                  "BASIC;BC-FNS"

     parameters: (VARIABLES VALUE-ASS)

     called by: ADJUST-VALUE-ASS, (:METHOD CONSTRAINT :ACTIVATE)

     calls: ADJUST-VALUE-ASS, SYS:ASSOC-EQUAL

     macros expanded: GET-VALUE-SPEC, MAKE-VALUE-ASSOC

-------------------------------------------------------------------

  ADMISSIBLE-NET-P                                  "NORMAL;RSTREVAL"

     parameters: (LIST-OF-SLOTS NET-SPEC)

     called by: ADMISSIBLE-NET-P,
          (:METHOD RESTRICTION-NET :GET-STABLE-STATE)

     calls: ADMISSIBLE-NET-P, ADMISSIBLE-SLOT-VALUE-P

   	liefert t, falls die Wertebelegung der Netzvariablen
  	noch zulaessig ist

-------------------------------------------------------------------

  ADMISSIBLE-SLOT-VALUE-P                           "NORMAL;RSTREVAL"

     parameters: (SLOT-REF NET-SPEC)

     called by: ADMISSIBLE-NET-P

     calls: SYS:ASSOC-EQUAL, GET-VALUE-OF-REFERENCED-SLOT,
          GET-VAR-INFO-VALUES, SLOT-VALUE-TO-VALUE-SPEC

   	liefert t, falls fuer den Slot gilt

  	  	{ sv( slot ) } = cv( slot )

-------------------------------------------------------------------

  AGENDA-ELEM-FILTERED-P        defsubst            "BASIC;CSTRNET"

     parameters: (AGENDA-ELEM)

     expanded in: (:METHOD CONSTRAINT-NET :FILTER),
          (:METHOD CONSTRAINT-NET :RESET-STATE),
          (:METHOD RESTRICTION-NET :FILTER-POSSIBLE-VALUES)

-------------------------------------------------------------------

  AGENDA-ELEM-INIT-TRACE        defsubst            "BASIC;CSTRNET"

     parameters: (AGENDA-ELEM)

     expanded in: (:METHOD CONSTRAINT-NET :FREEZE-STATE),
          (:METHOD CONSTRAINT-NET :GET-INITIALE-STATE),
          (:METHOD CONSTRAINT-NET :RESET-STATE)

-------------------------------------------------------------------

  AGENDA-ELEM-P                                     "BASIC;CSTRNET"

     parameters: (OBJECT)

-------------------------------------------------------------------

  AGENDA-ELEM-QUEUE             defsubst            "BASIC;CSTRNET"

     parameters: (AGENDA-ELEM)

     expanded in: (:METHOD CONSTRAINT-NET :INITIALIZE-AGENDA),
          (:METHOD CONSTRAINT-NET :PROPAGATE),
          (:METHOD CONSTRAINT-NET :RESTORE-STATE),
          (:METHOD CONSTRAINT-NET :STORE-STATE),
          (:METHOD CONSTRAINT-NET :TOTAL-INIT-QUEUE),
          (:METHOD CONSTRAINT-NET :UPDATE-AGENDA)

-------------------------------------------------------------------

  AGENDA-ELEM-TRACE             defsubst            "BASIC;CSTRNET"

     parameters: (AGENDA-ELEM)

     expanded in: (:METHOD CONSTRAINT-NET :FREEZE-STATE),
          (:METHOD CONSTRAINT-NET :GET-INITIALE-STATE),
          (:METHOD CONSTRAINT-NET :RESTORE-STATE),
          (:METHOD CONSTRAINT-NET :STORE-STATE),
          (:METHOD CONSTRAINT-NET :UPDATE-AGENDA),
          (:METHOD RESTRICTION-NET :FILTER-POSSIBLE-VALUES)

-------------------------------------------------------------------

  ASSERT-AXIOMS                                     "BASIC;AXIOMS"

     parameters: (AXSET-NAME CLAUSES &OPTIONAL KB-NAME)

     called by: (:METHOD BASIC-PROLOG-MIXIN :ASSERT-CLAUSES)

     used as a constant by: DEFAXIOM-SET

     calls: ADD-AXIOMS, INIT-AXSET, SYS::SETPROP

   builds an axiom set named `<axset-name>` consisting of the
predicates defined by `<clauses>`.
if `<kb-name>` is not NIL, `<axset-name>` is marked to be associated with
`<kb-name>`.

-------------------------------------------------------------------

  ASSERTA                       macro               "BASIC;AXIOMS"

     parameters: (CLAUSE AXIOM-SET)

     used as a constant by: (:METHOD BASIC-GOALBOX :PROVE-ASSERTA)

-------------------------------------------------------------------

  ASSERTZ                       macro               "BASIC;AXIOMS"

     parameters: (CLAUSE AXIOM-SET)

     used as a constant by: (:METHOD BASIC-GOALBOX :PROVE-ASSERTZ)

-------------------------------------------------------------------

  ASSIGN-TYPEFKT                macro               "COMMON;C-FNS"

     parameters: (FKT MIXIN)

     expanded in: "hd: SC80:BABYLON:KERNEL:CONSAT:BASIC:BC-MIXIN",
          "hd: SC80:BABYLON:KERNEL:CONSAT:MINI:MC-MIXIN",
          "hd: SC80:BABYLON:KERNEL:CONSAT:NORMAL:NC-MIXIN",
          "hd: SC80:BABYLON:KERNEL:FRAMES:BASIC:BF-MIXIN",
          "hd: SC80:BABYLON:KERNEL:FRAMES:MINI:MF-MIXIN",
          "hd: SC80:BABYLON:KERNEL:FRAMES:NORMAL:NF-MIXIN",
          "hd: SC80:BABYLON:KERNEL:FREETEXT:FT-MIXIN",
          "hd: SC80:BABYLON:KERNEL:META:L-MIXIN",
          "hd: SC80:BABYLON:KERNEL:PROLOG:BASIC:BP-MIXIN",
          "hd: SC80:BABYLON:KERNEL:PROLOG:MINI:MP-MIXIN",
          "hd: SC80:BABYLON:KERNEL:PROLOG:NORMAL:NP-MIXIN",
          "hd: SC80:BABYLON:KERNEL:RULES:BASIC:BR-MIXIN",
          "hd: SC80:BABYLON:KERNEL:RULES:MINI:MR-MIXIN",
          "hd: SC80:BABYLON:KERNEL:RULES:NORMAL:NR-MIXIN"

   Assigns a type predicate to the processor mixin.

-------------------------------------------------------------------

  (:METHOD AX-DEVELOP-MIXIN :DISPLAY-PREDICATE)     "NORMAL;NP-DEVEL"

     parameters: (PREDICATE AXIOM-SET)

     macros expanded: $SEND, SEND

     uses keywords: :MOM-SHOW-PREMISE

   displays in a momentary menu the clauses
   of predicate `<predicate>` in axiom set `<axiom-set>`

-------------------------------------------------------------------

  (:METHOD AX-DEVELOP-MIXIN :INSPECT-AXIOMS)        "NORMAL;NP-DEVEL"

     parameters: (&OPTIONAL (AXIOM-SETS (GET-KNOWN-AXIOM-SETS)))

     calls: SYS:*APPEND, FORMAT, GETHASH

     macros expanded: $SEND, GET-PREDS, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU, :MOM-SHOW-PREMISE

   displays all clauses of selected predicates in a momentary window.
pops up a menu to select an axiom set from the list axiom-sets and a
menu
to select a predicate from the selected axiom set.

-------------------------------------------------------------------

  (:METHOD AX-DEVELOP-MIXIN :MOM-SHOW-PREMISE)      "NORMAL;NP-DEVEL"

     parameters: (GOAL AXIOM-SETS
          &OPTIONAL PREVIOUS-PREDICATE (ITEM-LEN 60))

     calls: SYS:*APPEND, SYS:*NCONC, EXCEPTION-COMMENT,
          FORMAT, GET-CLAUSES-DIRECT, GETHASH, MAKE-REC-CLAUSE-ITEMS,
          MAKE-STRING-OF-LENGTH

     macros expanded: $SEND, CASE, DO-NAMED, GETENTRY, LEXPR-$SEND,
          LEXPR-SEND, SEND, SYS::XR-BQ-APPEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*, SELF

     uses keywords: :BACK, :CHOOSE-FROM-MENU, :EXIT,
          :MOM-SHOW-PREMISE, :NOTIFY, :REPEAT

-------------------------------------------------------------------

  (:METHOD AXSET-BASIC :ADDAX)                      "BASIC;AXIOMS"

     parameters: (AXIOM-SET
          &OPTIONAL (MODE 'FIRST) (BEFORE-SET NIL) (CHECK T))

     calls: SYS:*APPEND, GETHASH, KNOWN-AXIOM-SET, SPLICE

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: AXIOMS, META-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :SET-AXIOMS

   adds `<axiom-set>` to the currently available axiom sets.
according to `<mode>` `<axiom-set>` becomes the first axiom set, the last
axiom set
or the axiom set before `<before-set>`.
if `<check>` is not nil, it is checked whether `<axiom-set>` is known.

-------------------------------------------------------------------

  (:METHOD AXSET-BASIC :DISPLAY-PREDICATE)          "BASIC;BP-MIXIN"

     parameters: (PREDICATE AXSET-NAME)

     macros expanded: $SEND, SEND

     uses keywords: :LIST-PREDICATE

   prints a predicate from an axiom set to the dialog-stream.

-------------------------------------------------------------------

  (:METHOD AXSET-BASIC :FIND-AXIOM-SET)             "BASIC;AXIOMS"

     parameters: (PRED)

     instance variables: AXIOMS

   searches for the first axiom set containing clauses for `<pred>`.
returns nil if none is found.

-------------------------------------------------------------------

  (:METHOD AXSET-BASIC :KB-INFORM)                  "BASIC;AXIOMS"

     parameters: (&OPTIONAL (STREAM *STANDARD-OUTPUT*))

     calls: FORMAT, GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*, *STANDARD-OUTPUT*

     uses keywords: :RELATIONS-NAME

   displays the number of clauses in the associated kb on `<stream>`.

-------------------------------------------------------------------

  (:METHOD AXSET-BASIC :PRINT)                      "BASIC;AXIOMS"

     parameters: (&OPTIONAL (STREAM *STANDARD-OUTPUT*))

     calls: FORMAT, GETHASH, PRINT-AXIOM-SET

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*, *STANDARD-OUTPUT*

     uses keywords: :RELATIONS-NAME

   prints all clauses in the associated kb to `<stream>`.

-------------------------------------------------------------------

  (:METHOD AXSET-BASIC :REMAX)                      "BASIC;AXIOMS"

     parameters: (AXIOM-SET)

     calls: SYS:DELETE*

     macros expanded: $SEND, SEND

     instance variables: AXIOMS

     uses keywords: :SET-AXIOMS

   makes the free axiom set `<axiom-set>` unavailable.

-------------------------------------------------------------------

  (:METHOD AXSET-BASIC :RESET-AXIOM-SETS)           "BASIC;AXIOMS"

     parameters: (&REST AXIOM-SETS)

     calls: COPY-LIST, RESET-AXIOM-SET

     macros expanded: DO-NAMED

     instance variables: AXIOMS

   resets `<axiom-sets>` if specified or all currently available axiom
sets.
all modifications made by consult, reconsult, edit clauses or by
prolog programs
are reset.

-------------------------------------------------------------------

  (:METHOD AXSET-BASIC :SELECT-AXIOM-SET)           "BASIC;AXIOMS"

     parameters: (PRED)

     macros expanded: $SEND, SEND

     instance variables: AXIOMS

     uses keywords: :FIND-AXIOM-SET

   selects an axiom set where to place clauses for `<pred>`.
returns the first axiom set containing clauses for `<pred>` or the
first axiom set,
if none contains clauses for `<pred>`.

-------------------------------------------------------------------

  (:METHOD AXSET-BASIC :USE-AXIOM-SETS)             "BASIC;AXIOMS"

     parameters: (&REST AXIOM-SETS)

     calls: COPY-LIST, GETHASH, KNOWN-AXIOM-SET, SEND-KB

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: AXIOMS

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :SET-AXIOMS

   makes `<axiom-sets>` currently available in addition to the own
axiom set.
checks whether all axiom sets are known. if not nothing is changed.

-------------------------------------------------------------------

  BAB-REQUIRE                                       "KERNEL;REQUIRE"

     parameters: (MODUL-NAME &OPTIONAL PATHLIST)

     called by: DEF-KB-CONFIGURATION,
          "hd: SC80:BABYLON:KERNEL:MODULES:B-CONSAT",
          "hd: SC80:BABYLON:KERNEL:MODULES:M-CONSAT",
          "hd: SC80:BABYLON:KERNEL:MODULES:M-FRAME",
          "hd: SC80:BABYLON:KERNEL:MODULES:M-PROLOG",
          "hd: SC80:BABYLON:KERNEL:MODULES:M-RULE",
          "hd: SC80:BABYLON:KERNEL:MODULES:N-CONSAT",
          "hd: SC80:BABYLON:KERNEL:MODULES:N-FRAME",
          "hd: SC80:BABYLON:KERNEL:MODULES:N-PROLOG",
          "hd: SC80:BABYLON:KERNEL:MODULES:N-RULE"

     used as a constant by: DEF-KB-INSTANCE

     calls: CC-LOAD, ERROR, FIND, FIND-TRANSLATION, FORMAT,
          SEARCH-CC-LOAD, STRING, STRING-EQUAL

     special variables: *BABYLON-MODULE-SEARCH-PATH*,
          *BABYLON-PATCHES-SEARCH-PATH*, *MODULES*, *TERMINAL-IO*

     uses keywords: :TEST

-------------------------------------------------------------------

  (:METHOD BASIC-CONSTRAINT-MIXIN :ACTIVATE-INTERACTIVE)
                                                    "BASIC;BC-MIXIN"

     parameters: (CONSISTENCY-LEVEL)

     calls: CHOOSE-NUMBER-OF-RESULTS, CHOOSE-VALUE-ASSIGNMENT

     macros expanded: $SEND, GET-NAME-OF-C-ASSOC,
          GET-OBJECT-OF-C-ASSOC, SEND

     uses keywords: :ACTIVATE, :CHOOSE-CONSTRAINT, :DIALOG-STREAM,
          :INTERFACE, :PRINT-ENTER, :PRINT-EXIT

   ermoeglicht die Aktivierung eines Constraints

-------------------------------------------------------------------

  (:METHOD BASIC-CONSTRAINT-MIXIN :AFTER :NEW&DELETE)  "BASIC;BC-
MIXIN"

     parameters: (&REST DUMMY)

     macros expanded: $SEND, SEND

     instance variables: CONSTRAINT-NETS, CONSTRAINT-PROCESSOR,
          CONSTRAINTS

     uses keywords: :SET-CONSTRAINT-NETS, :SET-CONSTRAINTS

   runterreichen der definierten Constraints

-------------------------------------------------------------------

  (:METHOD BASIC-CONSTRAINT-MIXIN :AFTER :INIT)     "BASIC;BC-MIXIN"

     parameters: (&REST PLIST)

     macros expanded: $SEND, SEND

     instance variables: CONSTRAINT-PROCESSOR, PROCS

     uses keywords: :GENERATE-CONSTRAINT-PROCESSOR

   wird nach dem Erzeugen eines Metaprozessors aufgerufen:
   erzeugt einen zugehoerigen Constraint-Prozessor
   und kettet ihn an den Metaprozessor

-------------------------------------------------------------------

  (:METHOD BASIC-CONSTRAINT-MIXIN :CHOOSE-C-TYPE)   "BASIC;BC-MIXIN"

     parameters: ()

     calls: SYS:*APPEND, CONSTRAINT-INPUT-TEST, GETHASH,
          TRANSFORM-CONSTRAINT-TYPE

     macros expanded: $SEND, GETENTRY, SEND

     special variables: *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU, :SEND-IF-HANDLES

   bittet den Benutzer, einen Constraint-Typ auszuwaehlen
   Ergebnis:  Selektor fuer Constraint-Liste

-------------------------------------------------------------------

  (:METHOD BASIC-CONSTRAINT-MIXIN :CHOOSE-CONSTRAINT)  "BASIC;BC-
MIXIN"

     parameters: ()

     calls: CHOOSE-SPECIAL-CONSTRAINT

     macros expanded: $SEND, SEND

     uses keywords: :CHOOSE-C-TYPE

   bittet den Beutzer, ein Constraint unter den in
   der aktuellen Wissensbasis definierten auszuwaehlen

-------------------------------------------------------------------

  (:METHOD BASIC-CONSTRAINT-MIXIN :DISPLAY)         "BASIC;BC-MIXIN"

     parameters: ()

     macros expanded: $SEND, GET-NAME-OF-C-ASSOC,
          GET-OBJECT-OF-C-ASSOC, SEND

     uses keywords: :CHOOSE-CONSTRAINT, :DIALOG-STREAM, :PRINT

   ermoeglicht die Auswahl eines Constraints, das daraufhin
ausgegeben wird

-------------------------------------------------------------------

  (:METHOD BASIC-CONSTRAINT-MIXIN :EVAL-SATISFIED-P)  "BASIC;BC-
MIXIN"

     parameters: (EXPRESSION &REST DUMMY)

     macros expanded: $SEND, SEND

     instance variables: CONSTRAINT-PROCESSOR

     uses keywords: :SATISFIED-P

-------------------------------------------------------------------

  (:METHOD BASIC-CONSTRAINT-MIXIN :EVAL-SATISFY)    "BASIC;BC-MIXIN"

     parameters: (EXPRESSION &REST DUMMY)

     macros expanded: $SEND, SEND

     instance variables: CONSTRAINT-PROCESSOR

     uses keywords: :SATISFY

-------------------------------------------------------------------

  (:METHOD BASIC-CONSTRAINT-MIXIN :GENERATE-CONSTRAINT-PROCESSOR)
                                                    "BASIC;BC-MIXIN"

     parameters: ()

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: CONSTRAINT-PROCESSOR

     special variables: SELF

     uses keywords: :META-PROCESSOR

   erzeugt einen Constraint-Prozessor

-------------------------------------------------------------------

  (:METHOD BASIC-CONSTRAINT-MIXIN :PRINT-ENTER)     "BASIC;BC-MIXIN"

     parameters: (C-NAME VALUE-ASS CONSISTENCY-LEVEL NUMBER-OF-
RESULTS
          &OPTIONAL (STREAM NIL))

     calls: PRINC, PRINT-VALUE-ASS, TERPRI

     macros expanded: CASE

-------------------------------------------------------------------

  (:METHOD BASIC-CONSTRAINT-MIXIN :PRINT-EXIT)      "BASIC;BC-MIXIN"

     parameters: (C-NAME ONE-OR-LIST-OF-VALUE-ASS CONSISTENCY-LEVEL
          &OPTIONAL (STREAM NIL))

     calls: FORMAT::FORMAT-GET-STREAM,
          FORMAT::FORMAT-RETURN-STRING-STREAM, GETHASH, PRINC,
          PRINT-RESULT, TERPRI, WRITE-STRING

     macros expanded: DO-NAMED, GETENTRY, INHIBIT-STYLE-WARNINGS

     special variables: *LANGUAGE*, *STANDARD-OUTPUT*,
          FORMAT::FORMAT-STRING

-------------------------------------------------------------------

  (:METHOD BASIC-CONSTRAINT-MIXIN :READ)            "BASIC;BC-MIXIN"

     parameters: ()

     calls: CHOOSE-RELATION, GETHASH, READ-EXPR-FROM-WINDOW

     macros expanded: $SEND, CASE, GETENTRY, SEND

     special variables: *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU, :NEW&DELETE

   liest die Komponenten einer Constraint-Definition aus Pop-Up-Menus

-------------------------------------------------------------------

  (:METHOD BASIC-CONSTRAINT-MIXIN :SET-UP-CONSTRAINT-CMDS)
                                                    "BASIC;BC-MIXIN"

     parameters: ()

     calls: GETHASH

     macros expanded: $SEND, SEND

     uses keywords: :ADD-OPERATIONS, :ADD-SUB-OPERATIONS, :CONSAT,
          :LANGUAGE, :OPERATION-HANDLED-P, :TOP

-------------------------------------------------------------------

  (:METHOD BASIC-CONSTRAINT-PROCESSOR :GET)         "BASIC;BC-PROC"

     parameters: (C-NAME)

     calls: SYS:ASSOC-EQL

     macros expanded: GET-OBJECT-OF-C-ASSOC

     instance variables: CONSTRAINT-NETS, CONSTRAINTS

    ermittelt das primitive oder zusammengesetzte Constraint mit
    dem angegebenen Namen
    (Beachte: ein Netz und ein primitives Constraint duerfen nicht
    	      den gleichen Namen besitzen)

-------------------------------------------------------------------

  (:METHOD BASIC-CONSTRAINT-PROCESSOR :KB-INFORM)   "BASIC;BC-PROC"

     parameters: (STREAM)

     calls: FORMAT, GETHASH, TERPRI

     macros expanded: GETENTRY

     instance variables: CONSTRAINT-NETS, CONSTRAINTS

     special variables: *LANGUAGE*

   gibt die Zahl der primitiven und zusammengesetzten Constraints
aus.

-------------------------------------------------------------------

  (:METHOD BASIC-CONSTRAINT-PROCESSOR :PRINT)       "BASIC;BC-PROC"

     parameters: (&OPTIONAL (STREAM *STANDARD-OUTPUT*))

     calls: PRINC, PRINT-CONSTRAINT-LIST, TERPRI

     instance variables: CONSTRAINT-NETS, CONSTRAINTS

     special variables: *STANDARD-OUTPUT*

   gibt alle definierten Constraints in wiedereinlesbarer Form aus.

-------------------------------------------------------------------

  (:METHOD BASIC-CONSTRAINT-PROCESSOR :RESET-PROC)  "BASIC;BC-PROC"

     parameters: ()

     macros expanded: $SEND, DO-NAMED, GET-OBJECT-OF-C-ASSOC,
          INHIBIT-STYLE-WARNINGS, SEND

     instance variables: CONSTRAINT-NETS

     uses keywords: :RESET-STATE

   setzt alle Constraint-Netze zurueck.

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :ADD-TO-FRAMES)        "BASIC;BF-MIXIN"

     parameters: (A-FRAME-NAME)

     calls: SYS:*NCONC, SYS:MEMBER-EQL

     macros expanded: $SEND, SEND

     instance variables: FRAME-PROCESSOR, FRAMES

     uses keywords: :SET-FRAMES-LIST

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :ADD-TO-INSTANCES)     "BASIC;BF-MIXIN"

     parameters: (AN-INSTANCE-NAME)

     calls: SYS:*NCONC, SYS:MEMBER-EQL

     macros expanded: $SEND, SEND

     instance variables: FRAME-PROCESSOR, INSTANCES

     uses keywords: :SET-INSTANCES-LIST

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :AFTER :INIT)          "BASIC;BF-MIXIN"

     parameters: (&REST PLIST)

     macros expanded: $SEND, SEND

     instance variables: FRAME-PROCESSOR, PROCS

     uses keywords: :GENERATE-FRAME-PROCESSOR, :SET-UP-PREFIX

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :ASK-EVAL-FRAME-REFERENCE)
                                                    "BASIC;BF-MIXIN"

     parameters: (FRAME-REFERENCE MODE &OPTIONAL (NEGATION-FLAG NIL))

     calls: GETHASH

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: ACTIVE-PROC, FRAME-PROCESSOR, SYSTEM-TRACE

     special variables: *LANGUAGE*

     uses keywords: :ASK-WITH-HELP, :EVAL-REFERENCE, :FORMAT,
          :RECALL, :SEND-SYSTEM-TRACE-WINDOW

   evaluates a frame reference after asking the user.

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :ASK-WITH-HELP)        "BASIC;BF-MIXIN"

     parameters: (REQUEST &OPTIONAL (NEGATION-FLAG NIL))

     calls: IS-HELP

     macros expanded: $SEND, CASE, SEND

     instance variables: FRAME-PROCESSOR

     uses keywords: :ASK, :ASK-WITH-HELP, :HELP

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :DESCRIBE-FRAME)       "BASIC;BF-MIXIN"

     parameters: (FRAME-NAME &OPTIONAL WINDOW)

     calls: COMPUTE-SLOT-NAMES, GET-FRAME-BEHAVIOR-SPECS,
          GET-FRAME-SLOTS, GET-INSTANCE-LIST, GET-SUPERS

     macros expanded: $SEND, SEND

     special variables: SELF

     uses keywords: :FORMAT

   describes the frame named `<frame-name>` on `<window>`.
if `<window>` is not specified the dialog-stream is used instead.

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :DESCRIBE-INSTANCE)    "BASIC;BF-MIXIN"

     parameters: (INSTANCE-NAME
          &OPTIONAL (ALL-PROPERTIES T) WINDOW)

     calls: GET-INSTANCE-NAME

     macros expanded: $SEND, DO-NAMED, GET-INSTANCE, SEND

     special variables: SELF

     uses keywords: :FORMAT, :INSTANCE, :UNPARSE-INSTANCE

   describes the instance named `<instance-name>` on `<window>`.
the value of each slot and all its properties are shown unless
`<all-properties>` is nil.
if `<window>` is not specified the dialog-stream is used instead.

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :EVAL-BEHAVIOR-REFERENCE)
                                                    "BASIC;BF-MIXIN"

     parameters: (GOAL MODE)

     calls: SYS:*APPEND, BUTLAST, CONTAINS-VARS,
          GET-INSTANCE-NAME, GETHASH, IS-VARIABLE

     macros expanded: $SEND, GET-INSTANCE, GETENTRY, LEXPR-$SEND,
          LEXPR-SEND, SEND, SYS::XR-BQ-APPEND

     instance variables: ACTIVE-PROC, FRAME-PROCESSOR, SYSTEM-TRACE

     special variables: *LANGUAGE*

     uses keywords: :FORMAT, :INSTANCE, :SEND-SYSTEM-TRACE-WINDOW

   evaluates behavior references of a syntactical form used by
prolog.

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-CLASS-REFERENCE)
                                                    "BASIC;BF-MIXIN"

     parameters: (GOAL MODE)

     calls: GET-ALL-INSTANCES, GET-INSTANCE-NAME, GETHASH,
          IS-INSTANCE, IS-VARIABLE, NREVERSE

     macros expanded: $SEND, GET-INSTANCE, GETENTRY, SEND

     instance variables: ACTIVE-PROC, FRAME-PROCESSOR, SYSTEM-TRACE

     special variables: *LANGUAGE*

     uses keywords: :FORMAT, :INSTANCE, :SEND-SYSTEM-TRACE-WINDOW,
          :TYPE

   evaluates references of a special type used in prolog.

```bnf
goal = (<frame-name> <variable>) | (<frame-name> <instance-name>)
```

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-META-PREDICATE-REFERENCE)
                                                    "BASIC;BF-MIXIN"

     parameters: (GOAL MODE)

     calls: GET-ALL-SUPERS, GET-FRAME-DEF, GET-INSTANCE-DEF,
          GET-INSTANCE-NAME, GETHASH, IS-VARIABLE,
          SYS:MEMBER-EQL, NREVERSE

     macros expanded: $SEND, CASE, GET-INSTANCE, GETENTRY, SEND

     instance variables: ACTIVE-PROC, FRAME-PROCESSOR, SYSTEM-TRACE

     special variables: *LANGUAGE*

     uses keywords: :FORMAT, :FRAMES-LIST, :GET-PROPERTIES,
          :INSTANCE, :INSTANCES-LIST, :SEND-SYSTEM-TRACE-WINDOW,
          :SLOTS

   evaluates references of a special type used in prolog.

```bnf
goal := (<meta-predicate> . <args>)
```

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-PREDICATE-REFERENCE)
                                                    "BASIC;BF-MIXIN"

     parameters: (GOAL MODE)

     calls: IS-VARIABLE, MAKE-CLAUSES

     macros expanded: $SEND, KEYWORDP, SEND

     special variables: *KEYWORD-PACKAGE*

     uses keywords: :EVAL-PROLOG-FRAME-REFERENCE, :GET-ASK, :RECALL,
          :VALUE

   evaluates frame references of a syntactical form used by prolog.

```bnf
goal := (<slot> <object> <arg3>) | (<prop-name> <slot> <object> <arg3>)
```

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-REFERENCE)  "BASIC;BF-MIXIN"

     parameters: (FRAME-REFERENCE MODE)

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: ACTIVE-PROC, FRAME-PROCESSOR, SYSTEM-TRACE

     special variables: *LANGUAGE*

     uses keywords: :EVAL-REFERENCE, :FORMAT, :RECALL,
          :RECALL-IMMEDIATE, :SEND-SYSTEM-TRACE-WINDOW

   evaluates a frame reference.

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :EVAL-PROLOG-FRAME-REFERENCE)
                                                    "BASIC;BF-MIXIN"

     parameters: (FRAME-REFERENCE MODE)

     calls: GETHASH, IS-UNDETERMINED

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: ACTIVE-PROC, FRAME-PROCESSOR, SYSTEM-TRACE

     special variables: *LANGUAGE*

     uses keywords: :ASK-WITH-HELP, :EVAL-REFERENCE, :FORMAT,
          :PROLOG-WHY, :RECALL, :SEND-SYSTEM-TRACE-WINDOW

   evaluates frame references used in prolog clauses.

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :GENERATE-FRAME-PROCESSOR)
                                                    "BASIC;BF-MIXIN"

     parameters: ()

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: FRAME-PROCESSOR

     special variables: SELF

     uses keywords: :META-PROCESSOR

   generates an instance of basic-frame-processor associated with the
kb.

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :GET-ASK)              "BASIC;BF-MIXIN"

     parameters: (OBJECT SLOT PROP-NAME)

     calls: GETHASH, IS-UNDETERMINED

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: ACTIVE-PROC, FRAME-PROCESSOR, SYSTEM-TRACE

     special variables: *LANGUAGE*

     uses keywords: :ASK-WITH-HELP, :FORMAT, :GET, :PROLOG-WHY,
          :SEND-SYSTEM-TRACE-WINDOW

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :INSPECT-FRAMES)       "BASIC;BF-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     uses keywords: :SELECT-DESCRIBE-FRAME

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :INSPECT-INSTANCES)    "BASIC;BF-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     uses keywords: :SELECT-DESCRIBE-INSTANCE

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :SELECT-DESCRIBE-FRAME)  "BASIC;BF-
MIXIN"

     parameters: (&OPTIONAL WINDOW)

     calls: SYS:*APPEND, FORMAT, GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: FRAMES

     special variables: *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU, :DESCRIBE-FRAME

   describes a frame selected via menu on `<window>`.
if `<window>` is not specified the dialog-stream is used instead.

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :SELECT-DESCRIBE-INSTANCE)
                                                    "BASIC;BF-MIXIN"

     parameters: (&OPTIONAL (ALL-PROPERTIES T) WINDOW)

     calls: SYS:*APPEND, FORMAT, GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: INSTANCES

     special variables: *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU, :DESCRIBE-INSTANCE

   describes an instance selected via menu on `<window>`.
the value of each slot and all its properties are shown unless
`<all-properties>` is nil.
if `<window>` is not specified the dialog-stream is used instead.

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :SET-UP-FRAME-CMDS)    "BASIC;BF-MIXIN"

     parameters: ()

     calls: GETHASH

     macros expanded: $SEND, SEND

     uses keywords: :ADD-OPERATIONS, :ADD-SUB-OPERATIONS, :FRAME,
          :LANGUAGE, :OPERATION-HANDLED-P, :TOP

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :SET-UP-PREFIX)        "BASIC;BF-MIXIN"

     parameters: ()

     calls: FIND-PACKAGE, MAKE-PACKAGE

     instance variables: KB-NAME, PKG

     uses keywords: :SIZE, :USE

   generates a package for the names of frames and instances.

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-MIXIN :TOGGLE-FRCHECK)       "BASIC;BF-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: FRAME-PROCESSOR

     uses keywords: :TOGGLE-FRCHECK

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-PROCESSOR :KB-INFORM)        "BASIC;BF-PROC"

     parameters: (&OPTIONAL (STREAM *STANDARD-OUTPUT*))

     calls: FORMAT, GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*, *STANDARD-OUTPUT*

     uses keywords: :FRAMES, :INSTANCES

   prints statistics on frames and instances.

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-PROCESSOR :PRINT)            "BASIC;BF-PROC"

     parameters: (&OPTIONAL (STREAM *STANDARD-OUTPUT*))

     calls: FORMAT, GETHASH, PRINT-FRAME, PRINT-INSTANCES

     macros expanded: $SEND, DO-NAMED, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*, *STANDARD-OUTPUT*

     uses keywords: :FRAMES

   prints all definitions of frames and instances.

-------------------------------------------------------------------

  (:METHOD BASIC-FRAME-PROCESSOR :RESET-PROC)       "BASIC;BF-PROC"

     parameters: ()

     calls: EVAL, GET-INSTANCE-DEF

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

     instance variables: INSTANCES-LIST

   resets the processor to initial state.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :ABORT)                    "BASIC;BP-PREDS"

     parameters: (DUMMY)

     calls: GETHASH, SUBST-PROLOG-VARS

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: GOAL, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT

   signals syntax error for a goal.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :CLAUSE-USED)              "NORMAL;NP-EXPL"

     parameters: ()

     calls: SYS:MEMBER-EQL

     instance variables: CLAUSES, GOAL

     special variables: *PROLOG-SYSPREDS*

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :GENERATE-SUBGOAL)         "BASIC;BP-PREDS"

     parameters: (GL)

     calls: MAKE-INSTANCE, TYPE-OF

     macros expanded: FLAVOR-TYPE-OF, MAKE-$INSTANCE

     instance variables: CURR-SUBGOAL, GOAL-LEVEL, PROLOG-PROCESSOR,
          SUBGOALS

     special variables: SELF

     uses keywords: :GOAL, :GOAL-LEVEL, :PARENT-GOAL,
          :PROLOG-PROCESSOR

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :GENERATE-SUBGOALS)        "BASIC;BP-PREDS"

     parameters: (SGOALS)

     calls: MAKE-INSTANCE, TYPE-OF

     macros expanded: $SEND, DO-NAMED, FLAVOR-TYPE-OF,
          INHIBIT-STYLE-WARNINGS, MAKE-$INSTANCE, SEND

     instance variables: CURR-SUBGOAL, GOAL-LEVEL, PROLOG-PROCESSOR,
          SUBGOALS

     special variables: SELF

     uses keywords: :GOAL, :GOAL-LEVEL, :PARENT-GOAL,
          :PROLOG-PROCESSOR, :SET-NEXT-GOAL, :SET-PREVIOUS-GOAL

   generates goalboxes according to s(ub)goals.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :GET-CURRENT)              "NORMAL;NP-EXPL"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: CURR-SUBGOAL

     special variables: SELF

     uses keywords: :GET-CURRENT

   returns current goalbox.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :GET-GOAL-ON-INIT)         "NORMAL;NP-EXPL"

     parameters: (MODE)

     calls: REST-SUBST-PROLOG-VARS

     instance variables: GOAL, INIT-ENV-DEPTH

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-ABOLISH)            "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: SYS:DELETE*, GETHASH, REMPROP, SYS::SETPROP,
          SYS::STRING-AUX, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, GET-PREDS, GETENTRY, IS-VAR,
          PREPARE-RESET, REM-CLAUSES, REM-PRED, SEND, STRING,
          TYPECASE

     instance variables: CLAUSES, GOAL, INIT-ENV-DEPTH,
          PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :ENV-DEPTH, :FIND-AXIOM-SET

   proves system predicate abolish.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-AND)                "BASIC;BP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, CASE, CUT-RESET, NORMAL-RESET,
          PREPARE-RESET, SEND

     instance variables: GOAL, INIT-ENV-DEPTH, PROLOG-PROCESSOR,
          SUBGOALS

     uses keywords: :CUT-RESET, :ENV-DEPTH, :GENERATE-SUBGOALS,
          :PROVE-SUBGOALS, :RESET-ENV

   proves system predicate and.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-ASSERTA)            "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: GETHASH, NORMALIZE-CLAUSE, PROLOG-ASSERT,
          SUBST-PROLOG-VARS, XPUSH

     macros expanded: $SEND, CASE, GETENTRY, HEAD, IS-VAR, PRED,
          PREPARE-RESET, SEND, STRING, TYPECASE

     instance variables: CLAUSES, GOAL, INIT-ENV-DEPTH,
          PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :ENV-DEPTH, :SELECT-AXIOM-SET

   proves system predicate asserta.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-ASSERTZ)            "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: GETHASH, NCONC, NORMALIZE-CLAUSE, PROLOG-ASSERT,
          SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, GETENTRY, HEAD, IS-VAR, PRED,
          PREPARE-RESET, SEND, STRING, TYPECASE

     instance variables: CLAUSES, GOAL, INIT-ENV-DEPTH,
          PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :ENV-DEPTH, :SELECT-AXIOM-SET

   proves system predicate assertz.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-ASSUME)             "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: GETHASH, NCONC, NORMALIZE-CLAUSE, PROLOG-ASSERT,
          REM-CLAUSE, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, GETENTRY, HEAD, IS-VAR, PRED,
          PREPARE-SIDE-RESET, SEND, SIDE-RESET, STRING, TYPECASE

     instance variables: CLAUSES, GOAL, INIT-ENV-DEPTH,
          PROLOG-PROCESSOR

     special variables: *LANGUAGE*, SELF

     uses keywords: :BABYLON-FORMAT, :ENV-DEPTH, :PUSH-GOALBOX,
          :SELECT-AXIOM-SET, :SIDE-RESET

   proves system predicate assume.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-BAGOF)              "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: DEREF, NREVERSE, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, NORMAL-RESET, PREPARE-RESET, SEND

     instance variables: CLAUSES, CURR-SUBGOAL, GOAL, INIT-ENV-DEPTH,
          PROLOG-PROCESSOR, SUBGOALS

     uses keywords: :ENV-DEPTH, :GENERATE-SUBGOAL, :PROVE-GOAL,
          :RESET-ENV, :UNIFY

   proves system predicate bagof.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-CALL)               "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: DEREF, GETHASH, SUBST-PROLOG-VARS, VARCELL-P

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: GOAL, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :PROVE-GOAL

   proves system predicate call.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-CALLPRED)           "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: DEREF, GETHASH, SUBST-PROLOG-VARS, VARCELL-P

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: GOAL, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :PROVE-GOAL

   proves system predicate callpred.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-CLAUSE)             "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: CHECK-FOR-CLAUSE, GETHASH, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, GETENTRY, HEAD, NORMAL-RESET,
          PRED, PREPARE-RESET, SEND

     instance variables: CLAUSES, GOAL, INIT-ENV-DEPTH,
          PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :CLAUSE-TRANS-UNIFY, :ENV-DEPTH,
          :FIND-AXIOM-SET, :RESET-ENV

   proves system predicate clause.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-COND)               "BASIC;BP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, CASE, CUT-RESET, NORMAL-RESET,
          PREPARE-RESET, SEND

     instance variables: GOAL, INIT-ENV-DEPTH, PROLOG-PROCESSOR,
          SUBGOALS

     uses keywords: :CUT-RESET, :ENV-DEPTH, :GENERATE-SUBGOALS,
          :PROVE-SUBGOALS, :RESET-ENV

   proves system predicate cond.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-CUT)                "BASIC;BP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, CASE, PREPARE-RESET, SEND

     instance variables: INIT-ENV-DEPTH, PROLOG-PROCESSOR

     uses keywords: :ENV-DEPTH

   proves system predicate cut.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-EQUAL)              "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: DEREF

     macros expanded: $SEND, CASE, NORMAL-RESET, PREPARE-RESET, SEND

     instance variables: GOAL, INIT-ENV-DEPTH, PROLOG-PROCESSOR

     uses keywords: :ENV-DEPTH, :RESET-ENV, :UNIFY

   proves system predicate equal.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-FAIL)               "BASIC;BP-PREDS"

     parameters: (MODE)

   proves system predicate fail.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-FORMAT)             "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: EVAL, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, PREPARE-RESET, SEND

     instance variables: CLAUSES, GOAL, INIT-ENV-DEPTH,
          PROLOG-PROCESSOR

     uses keywords: :BABYLON-FORMAT, :ENV-DEPTH

   proves system predicate format.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-GOAL)               "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: VARCELL-P

     macros expanded: $SEND, GET-METHOD-FOR-PRED, GET-PROVE-METHOD,
          PRED, SEND

     instance variables: GOAL

     uses keywords: :ABORT, :PROVE-VAR, :PROVE-VARPRED

   fetches the right method to prove the goal and executes that
method.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-IS)                 "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: DEREF, EVAL, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, EVAL-LISP-CALL, NORMAL-RESET,
          PREPARE-RESET, SEND

     instance variables: CLAUSES, GOAL, INIT-ENV-DEPTH,
          PROLOG-PROCESSOR

     uses keywords: :ENV-DEPTH, :RESET-ENV, :UNIFY

   proves system predicate is.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-LISP)               "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: EVAL, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, EVAL-LISP-CALL, PREPARE-RESET,
          SEND

     instance variables: GOAL, INIT-ENV-DEPTH, PROLOG-PROCESSOR

     uses keywords: :ENV-DEPTH

   proves system predicate lisp.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-NOEQUAL)            "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: DEREF

     macros expanded: $SEND, CASE, NORMAL-RESET, PREPARE-RESET, SEND

     instance variables: GOAL, INIT-ENV-DEPTH, PROLOG-PROCESSOR

     uses keywords: :ENV-DEPTH, :RESET-ENV, :UNIFY

   proves system predicate noequal.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-NORMAL)             "BASIC;BP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, BODY, CASE, CLAUSE-TYPE, CUT-RESET,
          NORMAL-RESET, PREPARE-RESET, SEND

     instance variables: CLAUSES, GOAL, INIT-ENV-DEPTH,
          PROLOG-PROCESSOR, SUBGOALS

     uses keywords: :CUT-RESET, :ENV-DEPTH, :GENERATE-SUBGOALS,
          :GET-CLAUSES, :PROVE-SUBGOALS, :RESET-ENV, :TRANS-UNIFY

   provides first or next proof of a goal with user defined
predicate.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-NOT)                "BASIC;BP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, CASE, CUT-RESET, NORMAL-RESET,
          PREPARE-RESET, SEND

     instance variables: GOAL, INIT-ENV-DEPTH, PROLOG-PROCESSOR,
          SUBGOALS

     uses keywords: :CUT-RESET, :ENV-DEPTH, :GENERATE-SUBGOALS,
          :PROVE-SUBGOALS, :RESET-ENV

   proofs system predicate not.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-ONCE)               "BASIC;BP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, CASE, CUT-RESET, NORMAL-RESET,
          PREPARE-RESET, SEND

     instance variables: GOAL, INIT-ENV-DEPTH, PROLOG-PROCESSOR,
          SUBGOALS

     uses keywords: :CUT-RESET, :ENV-DEPTH, :GENERATE-SUBGOALS,
          :PROVE-SUBGOALS, :RESET-ENV

   proves system predicate once.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-OR)                 "BASIC;BP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, CASE, CUT-RESET, NORMAL-RESET,
          PREPARE-RESET, SEND

     instance variables: CLAUSES, CURR-SUBGOAL, GOAL, INIT-ENV-DEPTH,
          PROLOG-PROCESSOR, SUBGOALS

     uses keywords: :CUT-RESET, :ENV-DEPTH, :GENERATE-SUBGOAL,
          :PROVE-GOAL, :RESET-ENV, :SET-GOAL

   proves system predicate or.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-READ)               "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: DEREF

     macros expanded: $SEND, CASE, NORMAL-RESET, PREPARE-RESET, SEND

     instance variables: CLAUSES, GOAL, INIT-ENV-DEPTH,
          PROLOG-PROCESSOR

     uses keywords: :BABYLON-READ, :ENV-DEPTH, :RESET-ENV, :UNIFY

   proves system predicate read.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-REPEAT)             "BASIC;BP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, CASE, PREPARE-RESET, SEND

     instance variables: CLAUSES, INIT-ENV-DEPTH, PROLOG-PROCESSOR

     uses keywords: :ENV-DEPTH

   proves system predicate repeat.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-RETRACT)            "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: CHECK-FOR-CLAUSE, GETHASH, REM-CLAUSE, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, GETENTRY, HEAD, NORMAL-RESET,
          PRED, PREPARE-RESET, SEND

     instance variables: CLAUSES, GOAL, INIT-ENV-DEPTH,
          PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :CLAUSE-TRANS-UNIFY, :ENV-DEPTH,
          :FIND-AXIOM-SET, :RESET-ENV

   proves system predicate retract.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-SUBGOALS)           "BASIC;BP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, CASE, SEND

     instance variables: CURR-SUBGOAL

     uses keywords: :NEXT-GOAL, :PREVIOUS-GOAL, :PROVE-GOAL

   provides first or next proof of all subgoals of the goal
giving a proof of the goal itself using the last unifying rule.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-TOP)                "BASIC;BP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, CASE, CUT-RESET, NORMAL-RESET,
          PREPARE-RESET, SEND

     instance variables: CLAUSES, INIT-ENV-DEPTH, PROLOG-PROCESSOR

     uses keywords: :CUT-RESET, :ENV-DEPTH, :GENERATE-SUBGOALS,
          :PROVE-SUBGOALS, :RESET-ENV

   proves the pseudo system predicate %top i.e. the user provided
goals.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-TRUE)               "BASIC;BP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, CASE, PREPARE-RESET, SEND

     instance variables: INIT-ENV-DEPTH, PROLOG-PROCESSOR

     uses keywords: :ENV-DEPTH

   proves system predicate true.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-TYPE)               "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: SYS::STRING-AUX, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, IS-VAR, PREPARE-RESET, SEND,
          STRING, TYPECASE

     instance variables: CLAUSES, GOAL, INIT-ENV-DEPTH,
          PROLOG-PROCESSOR

     uses keywords: :ENV-DEPTH

   proves system predicates atom atomic integer var.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-VAR)                "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: DEREF, GETHASH, SUBST-PROLOG-VARS, VARCELL-P

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: GOAL, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :PROVE-GOAL

   proves a goal which is an instantiated variable.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-VARPRED)            "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: DEREF, GETHASH, SUBST-PROLOG-VARS, VARCELL-P

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: GOAL, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :PROVE-GOAL

   proves a goal whose predicate is an instantiated varaible.

-------------------------------------------------------------------

  (:METHOD BASIC-GOALBOX :PROVE-WRITE)              "BASIC;BP-PREDS"

     parameters: (MODE)

     calls: SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, PREPARE-RESET, SEND

     instance variables: CLAUSES, GOAL, INIT-ENV-DEPTH,
          PROLOG-PROCESSOR

     uses keywords: :BABYLON-FORMAT, :ENV-DEPTH

   proves system predicate write.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :ADD-AXIOM-SET)       "BASIC;BP-MIXIN"

     parameters: (AXSET-NAME
          &OPTIONAL (MODE 'FIRST) (BEFORE-SET NIL) (CHECK T))

     macros expanded: $SEND, SEND

     instance variables: PROLOG-PROCESSOR

     uses keywords: :ADDAX

   adds the axiom set named `<axset-name>` to the currently available
axiom sets.
if `<mode>` is first or last, the axiom-set becomes the first or last
axiom set,
if `<mode>` is before and `<before-set>` is specified, the axiom-set is
added immediately
before it. if `<check>` is not nil, it is checked whether `<axset-name>`
is known.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :AFTER :INIT)         "BASIC;BP-MIXIN"

     parameters: (&REST PLIST)

     macros expanded: $SEND, SEND

     instance variables: PROCS, PROLOG-PROCESSOR

     uses keywords: :GENERATE-PROLOG-PROCESSOR, :INIT-KBAXSET

   internal method. triggers generation of a prolog processor
instance.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :ASK-SET-GOAL)        "BASIC;BP-MIXIN"

     parameters: ()

     calls: GETHASH, SYS:MEMBER-EQL

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: PROLOG-PROCESSOR

     special variables: *C-HELP-KEY*, *END-KEY*, *HELP-KEY*,
          *LANGUAGE*

     uses keywords: :ASK-SET-GOAL, :BABYLON-FORMAT, :BABYLON-READ,
          :SETGOAL

   prompts for a goal and initializes it.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :ASSERT-CLAUSES)      "BASIC;BP-MIXIN"

     parameters: (CLAUSES)

     calls: ASSERT-AXIOMS, REMOVE-DEFAULT-AXSET

     macros expanded: $SEND, SEND

     instance variables: KB-NAME, RELATIONS-NAME

     uses keywords: :INIT-KBAXSET

   builds up an internal representation for `<the-relations>`.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :DISPLAY-RESULT)      "BASIC;BP-MIXIN"

     parameters: (&OPTIONAL DISPFORM REDISPLAY)

     calls: GETHASH

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :FORMAT-OPTION, :SHOW-FORM,
          :SHOW-VARS, :STATUS

   displays the result of a proof according to the specified format
`<dispform>`:
form: the topgoal is displayed after substitution of all varcells by
their values,
if the last proof succeded, and a NO otherwise.
vars:  all nonanonymous variables are displayed together with their
values,
if the last proof succeded, and a NO otherwise.
bound: like vars but variables whose values are variables are
omitted,
status: a status message like succ, fail, error is displayed,
no: like status, if `<redisplay>` is not nil, otherwise nothing is
displayed.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :EVAL-GOAL)           "BASIC;BP-MIXIN"

     parameters: (GOAL MODE)

     calls: GETHASH, IS-PROLOG-JUNCTOR-FOR-RULES

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: ACTIVE-PROC, PROLOG-PROCESSOR, SYSTEM-TRACE

     special variables: *LANGUAGE*

     uses keywords: :FIRST-ANSWER, :FORMAT,
          :SEND-SYSTEM-TRACE-WINDOW, :SOME-ANSWERS

   internal method. evals the prolog goal `<goal>` passed to the meta-
processor.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :GENERATE-PROLOG-PROCESSOR)
                                                    "BASIC;BP-MIXIN"

     parameters: ()

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: PROLOG-PROCESSOR

     special variables: SELF

     uses keywords: :ALTERNATE-META-PROCESSOR, :META-PROCESSOR

   generates an instance of basic-prolog-processor associated with
the kb.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :INIT-KBAXSET)        "BASIC;BP-MIXIN"

     parameters: ()

     calls: COPY-SEQ, FORMAT::GET-FORMAT-STRING, INIT-AXSET, INTERN,
          PRIN1, FORMAT::RETURN-FORMAT-STRING, WRITE-STRING

     macros expanded: $SEND, SEND

     instance variables: KB-NAME, PROLOG-PROCESSOR, RELATIONS-NAME

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

     uses keywords: :SET-AXIOMS

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :LIST-AXIOMS)         "BASIC;BP-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     uses keywords: :SELECT-LIST-PREDICATE

   prints a predicate selected via menu to the dialog-stream.
only predicates from the currently available axiom sets are
selectable.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :LIST-AXSET)          "BASIC;BP-MIXIN"

     parameters: (AXSET-NAME &OPTIONAL WINDOW)

     calls: GET-PREDICATES, PRINT-PRED

     macros expanded: $SEND, DO-NAMED, SEND

     special variables: SELF

     uses keywords: :FORMAT

   prints the axiom set named `<axset-name>` to `<window>`.
if `<window>` is omitted the dialog-stream is used.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :LIST-PREDICATE)      "BASIC;BP-MIXIN"

     parameters: (PREDICATE AXSET-NAME &OPTIONAL WINDOW)

     calls: GETHASH, PRINT-PRED

     macros expanded: $SEND, GETENTRY, SEND

     special variables: *LANGUAGE*, SELF

     uses keywords: :FORMAT

   prints `<predicate>` from `<axset-name>` to `<window>`.
predicate and axiom set are to be specified by their names.
if `<window>` is omitted, the dialog-stream is used.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :PROLOG-MULT-PROVE)   "BASIC;BP-MIXIN"

     parameters: (GOAL
          &OPTIONAL (NUMBER 'ALL) (DISP-FORMAT 'VARS))

     macros expanded: $SEND, SEND

     instance variables: PROLOG-PROCESSOR

     uses keywords: :SOME-ANSWERS

   provides at most `<nr>` or all proofs of `<goals>`.
the results of each proof are collected in a list.
`<dispform>` determines the representation of the results,
possible values and effects are those described for :prove-return
with the exeption, that T is returned, if variables are missing
and `<dispform>` is VARS or BOUND.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :PROLOG-PROVE)        "BASIC;BP-MIXIN"

     parameters: (&OPTIONAL GOAL (DISP-FORMAT 'VARS))

     macros expanded: $SEND, SEND

     instance variables: PROLOG-PROCESSOR

     uses keywords: :PROLOG-PROVE

   attemps the next proof of `<goal>` and returns the result.
if `<goal>` is nil, the current topgoal is used instead.
`<disp-format>` determines what to return:
form: the topgoal is returned after substitution of all varcells by
their values,
if the last proof succeded, and NIL otherwise.
vars:  an alist is returned consisting of all nonanonymous variables
of the topgoal
paired with their values, if the last proof succeded, and NIL
otherwise.
bound: like vars but variables whose values are variables are
omitted.
if variables are missing, YES is returned instead.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :PROLOG-PROVE-LOOP)   "BASIC;BP-MIXIN"

     parameters: (&OPTIONAL GOALS CONT DISPFORMAT)

     macros expanded: $SEND, DECF, SEND

     uses keywords: :BABYLON-READ, :PROVE-DISPLAY

   attempts one or more proofs for goals and displays the results.
if `<goals>` is nil, the user is prompted for goals.
if `<goals>` is *, the current topgoal is used instead.
if `<cont>` is one, all or a number, one proof, all proofs or as many
proofs
as number prescribes are tried, otherwise the user is asked how to
proceed:
if he enters ; the next proof is tried, otherwise the loop is
stopped.
`<dispform>` determines how to display the result,
possible values and effects are those described for :display-result.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :PROLOG-WHY)          "BASIC;BP-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: PROLOG-PROCESSOR

     uses keywords: :WHY

   provides context explanations.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :PROVE-DISPLAY)       "BASIC;BP-MIXIN"

     parameters: (&OPTIONAL GOALS DISPFORM)

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :ASK-SET-GOAL, :BABYLON-FORMAT, :DISPLAY-RESULT,
          :PROVE-TOPGOALS, :SETGOAL, :STATUS

   attemps the next proof for `<goals>` and displays the result.
if `<goals>` is nil, the user is prompted for goals.
if `<goals>` is *, the current topgoal is used instead.
`<dispform>` determines how to display the result,
possible values and effects are those described for :display-result.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :READ-CLAUSES)        "BASIC;BP-MIXIN"

     parameters: ()

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU, :READ-CLAUSES,
          :SEND-IF-HANDLES

   reads clauses prompting the user.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :REMOVE-AXIOM-SET)    "BASIC;BP-MIXIN"

     parameters: (AXSET-NAME)

     macros expanded: $SEND, SEND

     instance variables: PROLOG-PROCESSOR

     uses keywords: :REMAX, :SEND-IF-HANDLES

   makes the axiom set named `<axset-name>` unavailable.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :RESET-AXIOM-SETS)    "BASIC;BP-MIXIN"

     parameters: (&REST AXSET-NAMES)

     macros expanded: LEXPR-$SEND, LEXPR-SEND

     instance variables: PROLOG-PROCESSOR

     uses keywords: :RESET-AXIOM-SETS

   resets the specified axiom sets or all currently available axiom
sets.
all modifications made by consult, reconsult, edit clauses or by
prolog programs
are reset.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :SELECT-AXSET-NAME)   "BASIC;BP-MIXIN"

     parameters: (&OPTIONAL AXSET-NAMES)

     calls: SYS:*APPEND, GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :AXIOMS, :CHOOSE-FROM-MENU

   presents a menu to select an axiom set.
if specified `<axset-names>` are presented, otherwise all currently
available axiom sets.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :SELECT-FORMAT)       "BASIC;BP-MIXIN"

     parameters: ()

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU, :SET-FORMAT-OPTION

   pops up a menu to select the display format.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :SELECT-LIST-PREDICATE)  "BASIC;BP-
MIXIN"

     parameters: (&OPTIONAL AXSET-NAMES WINDOW)

     calls: APPEND, FORMAT, GET-PREDICATES, GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     special variables: *LANGUAGE*, SELF

     uses keywords: :CHOOSE-FROM-MENU, :LIST-AXSET, :LIST-PREDICATE,
          :SELECT-AXSET-NAME, :TYPE-END-TO-CONTINUE

   prints a predicate selected via menu to `<window>`.
only predicates from the specified axiom sets are selectable
or from the currently available axiom sets, if `<axset-names>` is nil.
if `<window>` is nil, the dialog-stream is used.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :SELECT-LOAD-AXIOMS)  "BASIC;BP-MIXIN"

     parameters: ()

     calls: SYS:*APPEND, GEN-CHOOSE-AXIOMS-ITEM-LIST,
          GET-KNOWN-FREE-AXIOM-SETS, SYS:REMOVE*,
          SYS:REMOVE-DUPLICATES-LIST

     macros expanded: $SEND, SEND

     instance variables: PROLOG-PROCESSOR

     uses keywords: :AXIOMS, :MULT-CHOOSE-FROM-MENU, :SET-AXIOMS

   makes axiom sets available.
pops up a menu to select one or more axiom sets out of the known
axiom sets.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :SET-UP-PROLOG-CMDS)  "BASIC;BP-MIXIN"

     parameters: ()

     calls: GETHASH

     macros expanded: $SEND, SEND

     uses keywords: :ADD-OPERATIONS, :ADD-SUB-OPERATIONS, :LANGUAGE,
          :OPERATION-HANDLED-P, :PROLOG, :TOP

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :SHOW-AXIOMS)         "BASIC;BP-MIXIN"

     parameters: ()

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :AXIOMS, :BABYLON-FORMAT

   displays the names of all axiom sets currently available.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :SHOW-FORM)           "BASIC;BP-MIXIN"

     parameters: ()

     calls: GETHASH, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :STATUS, :TOPGOAL

   internal method.
displays the topgoal after substitution of all varcells by their
values
if the last proof succeded and a NO otherwise.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :SHOW-STATUS)         "BASIC;BP-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     uses keywords: :SHOW-AXIOMS

   displays the names of all axiom sets currently available.
intended to be overwritten by specializations of basic-prolog-mixin.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-MIXIN :SHOW-VARS)           "BASIC;BP-MIXIN"

     parameters: (TYPE)

     calls: GEN-VAR-VALUE-LIST, GETHASH

     macros expanded: $SEND, CASE, DO-NAMED, GETENTRY, SEND

     instance variables: PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :STATUS, :TOP-VARCELLS

   internal method.
displays the variables of the topgoal together with their values,
if the last proof succeded, and a NO otherwise.
`<type>` prescribes, which variables to display:
all means all nonanonymous variables
bound means omit all variables whose values are variables.
if there are no variables, YES is displayed instead.

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-PROCESSOR :BABYLON-FORMAT)  "BASIC;BP-PROC"

     parameters: (&REST ARGS)

     macros expanded: LEXPR-$SEND, LEXPR-SEND

     instance variables: META-PROCESSOR

     uses keywords: :BABYLON-FORMAT

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-PROCESSOR :BABYLON-READ)    "BASIC;BP-PROC"

     parameters: (KEY-LIST)

     macros expanded: $SEND, SEND

     instance variables: META-PROCESSOR

     uses keywords: :BABYLON-READ

-------------------------------------------------------------------

  (:METHOD BASIC-PROLOG-PROCESSOR :RESET-PROC)      "BASIC;BP-PROC"

     parameters: ()

     macros expanded: $SEND, SEND

     uses keywords: :RESET-AXIOM-SETS

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-MIXIN :ADD-TO-RULES)          "BASIC;BR-MIXIN"

     parameters: (A-RULE-SET)

     calls: SYS:*NCONC, SYS:ASSOC-EQL

     macros expanded: $SEND, SEND

     instance variables: RULE-PROCESSOR, RULES

     uses keywords: :SET-RULES

   Add a rule set to rules.

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-MIXIN :AFTER :INIT)           "BASIC;BR-MIXIN"

     parameters: (&REST PLIST)

     macros expanded: $SEND, SEND

     instance variables: PROCS, RULE-PROCESSOR

     uses keywords: :GENERATE-RULE-PROCESSOR

   Create rule processor.

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-MIXIN :BEFORE :ADD-TO-RULES)  "BASIC;BR-MIXIN"

     parameters: (A-RULE-SET)

     calls: CHECK-RULE-SYNTAX, ERROR, FORMAT, GETHASH,
          RULE-SET-RULES

     macros expanded: BABERROR, DO-NAMED, GETENTRY,
          INHIBIT-STYLE-WARNINGS

     instance variables: KB-NAME

     special variables: *LANGUAGE*

   This is a check of the rule syntax.

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-MIXIN :EVAL-RULE-META-REFERENCE-FOR-PROLOG)
                                                    "BASIC;BR-MIXIN"

     parameters: (REQUEST MODE)

     calls: CONTAINS-VARS, GETHASH, IS-VARIABLE, SYS:MEMBER-EQL,
          SYS:MEMBER-EQUAL, NREVERSE

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: RULE-PROCESSOR, SYSTEM-TRACE,
          SYSTEM-TRACE-WINDOW

     special variables: *LANGUAGE*

     uses keywords: :FORMAT, :GET-RULE-SET, :GET-RULE-SET-NAMES

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-MIXIN :FIND-IMPLICATIONS)     "BASIC;BR-MIXIN"

     parameters: (&OPTIONAL (RULE-SET-NAME NIL)
          (CONTROL-STRUCTURE :DO-ALL) (CONDITION T) (BINDINGS NIL))

     macros expanded: $SEND, SEND

     instance variables: RULE-PROCESSOR

     uses keywords: :DO-ALL, :START-FORWARD

   Find implications (forward evaluation).

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-MIXIN :GENERATE-RULE-PROCESSOR)  "BASIC;BR-
MIXIN"

     parameters: ()

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: RULE-PROCESSOR

     special variables: SELF

     uses keywords: :ALTERNATE-META-PROCESSOR, :META-PROCESSOR

   Make an instance of basic-rule-processor and associate it with kb.

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-MIXIN :LIST-RULE)             "BASIC;BR-MIXIN"

     parameters: (RULE-NAME RULE-SET-NAME &OPTIONAL WINDOW)

     macros expanded: $SEND, GET-ACTION-TYPE, GET-JUNCTOR,
          GET-RULE-ACTIONS, GET-RULE-CONDITIONS, SEND

     instance variables: RULE-PROCESSOR

     special variables: SELF

     uses keywords: :FORMAT, :GET-RULE

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-MIXIN :LIST-RULES)            "BASIC;BR-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     uses keywords: :SELECT-LIST-RULE

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-MIXIN :OBTAIN)                "BASIC;BR-MIXIN"

     parameters: (NUMBER-OF-HYPOTHESES-TO-VERIFY GOAL-SPECIFICATION
          &OPTIONAL (RULE-SET-NAME NIL) (BINDINGS NIL))

     calls: ERROR, GETHASH

     macros expanded: $SEND, BABERROR, GETENTRY, SEND

     instance variables: KB-NAME, RULE-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :ALL, :OBTAIN

   Obtain (backward evaluation) with a goal specification.

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-MIXIN :PRINT-HYPOTHESES-VERIFIED)
                                                    "BASIC;BR-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: RULE-PROCESSOR

     uses keywords: :PRINT-HYPOTHESES-VERIFIED

   Print hypotheses verified.

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-MIXIN :PRINT-TRUE-FACTS)      "BASIC;BR-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: RULE-PROCESSOR

     uses keywords: :PRINT-TRUE-FACTS

   Print true facts.

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-MIXIN :SELECT-LIST-RULE)      "BASIC;BR-MIXIN"

     parameters: (&OPTIONAL WINDOW)

     calls: SYS:*APPEND, FORMAT, GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: RULE-PROCESSOR

     special variables: *LANGUAGE*, SELF

     uses keywords: :CHOOSE-FROM-MENU, :GET-RULE-NAMES, :LIST-RULE,
          :SELECT-RULE-SET-NAME, :TYPE-END-TO-CONTINUE

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-MIXIN :SELECT-RULE-SET-NAME)  "BASIC;BR-MIXIN"

     parameters: ()

     calls: SYS:*APPEND, GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: RULE-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU, :GET-RULE-SET-NAMES

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-MIXIN :SET-CONFLICT-RESOLUTION)  "BASIC;BR-
MIXIN"

     parameters: (FUNCTION)

     macros expanded: $SEND, SEND

     instance variables: RULE-PROCESSOR

     uses keywords: :SET-CONFLICT-RESOLUTION

   Sets the rule interpreter conflict resolution strategy to
function.
Function get a list-of-rules, the goal and the current rule-
interpreter
instance as parameters and should return a list-of-rules, which are
used
in that order to prove goal. The standard-conflict-resolution
function
simply returns the list-of-rules argument. It is reassigned if the
rule
interpreter is reset.

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-MIXIN :SET-UP-RULE-CMDS)      "BASIC;BR-MIXIN"

     parameters: ()

     calls: GETHASH

     macros expanded: $SEND, SEND

     uses keywords: :ADD-OPERATIONS, :ADD-SUB-OPERATIONS, :LANGUAGE,
          :OPERATION-HANDLED-P, :RULE, :TOP

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-MIXIN :TEST-HYPOTHESES)       "BASIC;BR-MIXIN"

     parameters: (&OPTIONAL (NUMBER-OF-HYPOTHESES-TO-VERIFY 1)
          (LIST-OF-HYPOTHESES NIL) (RULE-SET-NAME NIL) (BINDINGS
NIL))

     calls: ERROR, GETHASH

     macros expanded: $SEND, BABERROR, GETENTRY, SEND

     instance variables: HYPOTHESES, KB-NAME, RULE-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :ALL, :TEST-HYPOTHESES

   Test hypotheses (backward evaluation).

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-PROCESSOR :KB-INFORM)         "BASIC;BR-PROC"

     parameters: (&OPTIONAL (STREAM *STANDARD-OUTPUT*))

     macros expanded: $SEND, SEND

     special variables: *STANDARD-OUTPUT*

     uses keywords: :RULE-STATISTICS

   Print statistics about rules and rulesets on `<stream>`.

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-PROCESSOR :PRINT)             "BASIC;BR-PROC"

     parameters: (&OPTIONAL (STREAM *STANDARD-OUTPUT*))

     macros expanded: $SEND, SEND

     special variables: *STANDARD-OUTPUT*

     uses keywords: :UNPARSE-RULES

   Unparse rules and rulesets on `<stream>`.

-------------------------------------------------------------------

  (:METHOD BASIC-RULE-PROCESSOR :RESET-PROC)        "BASIC;BR-PROC"

     parameters: ()

     macros expanded: $SEND, SEND

     uses keywords: :RESET-DATA-BASE

   Reset the processor to initial state.

-------------------------------------------------------------------

  BODY                          macro               "BASIC;AXIOMS"

     parameters: (RULE)

     expanded in: (:METHOD BASIC-GOALBOX :PROVE-NORMAL),
          GET-SUBGOAL-PREDICATES, MAKE-REC-CLAUSE-ITEMS

     used as a constant by: IS-FACT

-------------------------------------------------------------------

  BUILD-CONSTRAINT-TRACE-ITEM-LIST                  "MINI;MC-MIXIN"

     parameters: (CONSTRAINT-LIST)

     called by: (:METHOD MINI-CONSTRAINT-MIXIN :CHOOSE-TRACE-MODE)

     calls: CONSTRAINT-ASSOC-TRACEDP, COPY-SEQ,
          FORMAT::GET-FORMAT-STRING, GETHASH, PRIN1, PRINC,
          FORMAT::RETURN-FORMAT-STRING, WRITE-CHAR

     macros expanded: DO-NAMED, GET-NAME-OF-C-ASSOC, GETENTRY,
          INHIBIT-STYLE-WARNINGS

     special variables: *LANGUAGE*, *STANDARD-OUTPUT*,
          FORMAT::FORMAT-STRING

-------------------------------------------------------------------

  BUILD-EXPLAIN-ITEM-LIST                           "MINI;ASK-SUPP"

     parameters: (CHOICES EXPLANATIONS)

     called by: (:METHOD POSS-VAL-MIXIN :PROVIDE-LOCAL-HELP)

     calls: SYS:*APPEND, BUILD-MULT-CHOOSE-ITEM-LIST

-------------------------------------------------------------------

  BUILD-MULT-CHOOSE-ITEM-LIST                       "MINI;ASK-SUPP"

     parameters: (LIST)

     called by: BUILD-EXPLAIN-ITEM-LIST,
          (:METHOD POSS-VAL-MIXIN :SOME-OF-READ-METHOD)

     calls: COPY-SEQ, FORMAT::GET-FORMAT-STRING, PRIN1,
          FORMAT::RETURN-FORMAT-STRING, WRITE-CHAR

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

-------------------------------------------------------------------

  CALL-KB                                           "META;KB-CORE"

     parameters: (&OPTIONAL (KB *CURRENT-KNOWLEDGE-BASE*))

     macros expanded: $SEND, SEND

     special variables: *CURRENT-KNOWLEDGE-BASE*

     uses keywords: :SELECT-KB

   selects kb.

-------------------------------------------------------------------

  CC-LOAD                                           "KERNEL;REQUIRE"

     parameters: (FILE-NAME
          &KEY (RECOMPILE *RECOMPILE*) (ERROR T))

     called by: BAB-REQUIRE, SEARCH-CC-LOAD,
          "hd: SC80:BABYLON:KERNEL:MODULES:B-CONSAT",
          "hd: SC80:BABYLON:KERNEL:MODULES:B-FRAME",
          "hd: SC80:BABYLON:KERNEL:MODULES:B-PROLOG",
          "hd: SC80:BABYLON:KERNEL:MODULES:B-RULE",
          "hd: SC80:BABYLON:KERNEL:MODULES:COMMON",
          "hd: SC80:BABYLON:KERNEL:MODULES:FREETEXT",
          "hd: SC80:BABYLON:KERNEL:MODULES:M-CONSAT",
          "hd: SC80:BABYLON:KERNEL:MODULES:M-FRAME",
          "hd: SC80:BABYLON:KERNEL:MODULES:M-PROLOG",
          "hd: SC80:BABYLON:KERNEL:MODULES:M-RULE",
          "hd: SC80:BABYLON:KERNEL:MODULES:META",
          "hd: SC80:BABYLON:KERNEL:MODULES:N-CONSAT",
          "hd: SC80:BABYLON:KERNEL:MODULES:N-FRAME",
          "hd: SC80:BABYLON:KERNEL:MODULES:N-PROLOG",
          "hd: SC80:BABYLON:KERNEL:MODULES:N-RULE"

     calls: COMPILE-FILE, ERROR, FILE-WRITE-DATE, FORMAT, LOAD,
          NAMESTRING, PROBE-FILE, TRANSFORM-PATHSTRING

     special variables: *RECOMPILE*, *TERMINAL-IO*

     uses keywords: :OUTPUT-FILE

-------------------------------------------------------------------

  CHECK-BINDINGS                                    "BASIC;RULES"

     parameters: (RULE-SET-NAME VARIABLES-SPECIFICATION BINDINGS)

     called by: SUBSTITUTE-VARIABLES-IN-RULE-SET

     calls: ERROR, EVERY, GETHASH, IS-BINDINGS, SYS:MEMBER-EQL

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  CHECK-FOR-CLAUSE                                  "BASIC;BP-PREDS"

     parameters: (CLAUSE)

     called by: (:METHOD BASIC-GOALBOX :PROVE-CLAUSE),
          (:METHOD BASIC-GOALBOX :PROVE-RETRACT)

     calls: NORMALIZE-CLAUSE

     macros expanded: IS-RULE-CLAUSE, IS-SIMPLE-CLAUSE

-------------------------------------------------------------------

  CHECK-FOR-EQUAL-RELATION      macro               "BASIC;FR-CORE"

     parameters: (RELATION)

     expanded in: <--, (:METHOD FRAME-CORE :SLOT-MESSAGE)

-------------------------------------------------------------------

  CHECK-FRAME-DEFINITION                            "BASIC;FRAMES"

     parameters: (FRAME-NAME BODY)

     called by: (:METHOD FRAME-BASE :NEW-FRAME-FORM)

     calls: ERROR, EVERY, GETHASH, IS-SIMPLE-LIST, IS-TRUE-LIST,
          MAKE-FRAME-DEFINITION-EXAMPLE,
          MAKE-SLOT-SPECIFICATION-EXAMPLE,
          MAKE-SUPERS-SPECIFICATION-EXAMPLE, SYS:REMOVE*

     macros expanded: BABERROR, DO-NAMED, FRAME-OPTIONS, FRAME-SLOTS,
          FRAME-SUPERS, GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  CHECK-INSTANCE-DEFINITION                         "BASIC;FRAMES"

     parameters: (INSTANCE-NAME OF FRAME-NAME BODY)

     called by: (:METHOD FRAME-BASE :NEW-INSTANCE),
          (:METHOD FRAME-BASE :NEW-UNNAMED-INSTANCE)

     calls: ERROR, FORMAT, GETHASH, IS-TRUE-LIST,
          MAKE-DEFINSTANCE-EXAMPLE, SEND-KB

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :KB-NAME

-------------------------------------------------------------------

  CHECK-RULE-SET-SYNTAX                             "BASIC;RULES"

     parameters: (A-RULE-SET KNOWLEDGE-BASE-NAME)

     calls: CHECK-RULE-SET-VARIABLES-SPECIFICATION,
          CHECK-RULE-SYNTAX, ERROR, FORMAT, GETHASH, RULE-SET-RULES

     macros expanded: BABERROR, DO-NAMED, GETENTRY,
          INHIBIT-STYLE-WARNINGS

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  CHECK-RULE-SET-VARIABLES-SPECIFICATION            "BASIC;RULES"

     parameters: (VARIABLES-SPECIFICATION WHERE)

     called by: CHECK-RULE-SET-SYNTAX

     calls: ERROR, EVERY, GETHASH, IS-RULE-VARIABLE

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  CHECK-RULE-SYNTAX                                 "BASIC;RULES"

     parameters: (RULE &OPTIONAL (WHERE ""))

     called by: (:METHOD BASIC-RULE-MIXIN :BEFORE :ADD-TO-RULES),
          CHECK-RULE-SET-SYNTAX

     calls: ERROR, FORMAT, GETHASH, MAKE-FULL-RULE-EXAMPLE, PRINC,
          REVERSE, TERPRI

     macros expanded: BABERROR, DO-NAMED, GET-ACTION-TYPE,
          GET-JUNCTOR, GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  CHOOSE-CONSTRAINT-TRACE-MODE                      "MINI;MC-MIXIN"

     parameters: (TRACE-ITEM-LIST)

     called by: (:METHOD MINI-CONSTRAINT-MIXIN :CHOOSE-TRACE-MODE)

     calls: GETHASH, SEND-KB

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :MULT-CHOOSE-FROM-MENU

   bittet den Benutzer um die Wahl der Constraints,
   deren Trace-Modes umgeschaltet werden sollen

-------------------------------------------------------------------

  CHOOSE-ELEMENT-TYPE                               "BASIC;BC-MIXIN"

     parameters: ()

     called by: CHOOSE-RELATION

     calls: GETHASH, SEND-KB

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU

-------------------------------------------------------------------

  CHOOSE-NUMBER-OF-RESULTS                          "BASIC;BC-MIXIN"

     parameters: ()

     called by:
          (:METHOD BASIC-CONSTRAINT-MIXIN :ACTIVATE-INTERACTIVE)

     used as a constant by: CHOOSE-NUMBER-OF-RESULTS

     calls: GETHASH, READ-EXPR-FROM-WINDOW

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

    liest die Anzahl der global konsistenten
    Loesungen ein, die berechnet werden sollen

-------------------------------------------------------------------

  CHOOSE-RELATION                                   "BASIC;BC-MIXIN"

     parameters: ()

     called by: (:METHOD BASIC-CONSTRAINT-MIXIN :READ),
          CHOOSE-RELATION

     calls: CHOOSE-ELEMENT-TYPE, CHOOSE-RELATION, GETHASH,
          READ-EXPR-FROM-WINDOW

     macros expanded: CASE, GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :PATTERN, :TUPLE

-------------------------------------------------------------------

  CHOOSE-SPECIAL-CONSTRAINT                         "BASIC;BC-MIXIN"

     parameters: (CONSTRAINT-LISTE)

     called by: (:METHOD BASIC-CONSTRAINT-MIXIN :CHOOSE-CONSTRAINT)

     calls: SYS:*APPEND, CONSTRAINT-INPUT-TEST, GETHASH, SEND-KB

     macros expanded: DO-NAMED, GET-NAME-OF-C-ASSOC, GETENTRY,
          INHIBIT-STYLE-WARNINGS

     special variables: *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU, :VALUE

   bittet den Benutzer, eines der Constraints in Constraint-Liste
auszuwaehlen.

-------------------------------------------------------------------

  CHOOSE-VALUE-ASSIGNMENT                           "BASIC;BC-MIXIN"

     parameters: (INTERFACE)

     called by:
          (:METHOD BASIC-CONSTRAINT-MIXIN :ACTIVATE-INTERACTIVE)

     calls: CHOOSE-VALUE-SPEC

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS,
          MAKE-VALUE-ASSOC

   liest eine Wertebelegung der Interface-Variablen schrittweise ein

-------------------------------------------------------------------

  CHOOSE-VALUE-SPEC                                 "BASIC;BC-MIXIN"

     parameters: (VARIABLE)

     called by: CHOOSE-VALUE-ASSIGNMENT

     calls: CONVERT-TO-CONSAT-VALUE, COPY-SEQ,
          FORMAT::GET-FORMAT-STRING, PRIN1, READ-EXPR-FROM-WINDOW,
          FORMAT::RETURN-FORMAT-STRING

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

   liest eine Wertemenge fuer diese Variable ein

-------------------------------------------------------------------

  CLAUSE-TYPE                   macro               "BASIC;AXIOMS"

     parameters: (CLAUSE)

     expanded in: (:METHOD BASIC-GOALBOX :PROVE-NORMAL)

-------------------------------------------------------------------

  COLLECT-CLAUSES                                   "BASIC;AXIOMS"

     parameters: (AXSET PREDS)

     called by: PRINT-PREDS

     calls: SYS:*NCONC, COPY-LIST, GET-CLAUSES-DIRECT

     macros expanded: DO-NAMED

   provides a list of the defining clauses for the predicates `<preds>`
in `<axset>`.
clauses for different predicates are separated by NIL.

-------------------------------------------------------------------

  COLLECT-TERM-COMPONENTS                           "NORMAL;NR-DEVEL"

     parameters: (TERMS COMPONENT)

     called by: (:METHOD RULE-DEVELOP-MIXIN :FILTER-TERMS)

     calls: SYS:*NCONC, COMPUTE-TERM, REMOVE-DOUBLES

     macros expanded: DO-NAMED

-------------------------------------------------------------------

  COMBINE-TWO-ALISTS                                "BASIC;BC-FNS"

     parameters: (VAL-ASS1 VAL-ASS2)

     called by: COMBINE-VARIABLE-ALISTS

     calls: SYS:ASSOC-EQUAL, COMBINE-VALUES, UNION-SETS

     macros expanded: DO-NAMED, GET-VALUE-SPEC, GET-VAR,
          INHIBIT-STYLE-WARNINGS, MAKE-VALUE-ASSOC

-------------------------------------------------------------------

  COMBINE-VALUES                                    "BASIC;BC-FNS"

     parameters: (VALUE-SET1 VALUE-SET2)

     called by: COMBINE-TWO-ALISTS

     calls: UNION-SETS

-------------------------------------------------------------------

  COMBINE-VARIABLE-ALISTS                           "BASIC;BC-FNS"

     parameters: (LIST-OF-VAL-ASS VARIABLES)

     called by: COMBINE-VARIABLE-ALISTS,
          (:METHOD CONSTRAINT :ACTIVATE)

     calls: COMBINE-TWO-ALISTS, COMBINE-VARIABLE-ALISTS, EMPTY-ALIST

-------------------------------------------------------------------

  COMPATIBLE-VALUE-P                                "BASIC;BC-FNS"

     parameters: (VALUE VARIABLE SIMPLE-VAL-ASS)

     called by: EVALUATE-PATTERN, EVALUATE-TUPEL

     calls: SYS:ASSOC-EQUAL

     macros expanded: GET-SIMPLE-VALUE

-------------------------------------------------------------------

  COMPILE-CONDITION                                 "BASIC;CSTRBASE"

     parameters: (CONDITION RELATION)

     called by: (:METHOD CONSTRAINT-BASE :NEW-PRIMITIVE)

     calls: ABBREVIATED-CONDITION, SELECT-LOCAL-CONDITIONS

    falls :OR als condition angegeben ist, wird die
    Disjunktion der :IF's genommen

-------------------------------------------------------------------

  COMPLETE-TO-N                                     "COMMON;C-FNS"

     parameters: (STR NR)

     called by: MAKE-FACTS-CHOICE, MAKE-OP-HEADER,
          MAKE-REC-CLAUSE-ITEMS, MAKE-RULE-HEADER, MAKE-TERM-ITEM

     calls: MAKE-SEQUENCE, STRING-APPEND, SUBSEQ

     uses keywords: :INITIAL-ELEMENT

   verlaengert str um nr blanks bzw. kuerzt str um nr+3

-------------------------------------------------------------------

  COMPUTE-LIST-EXPR                                 "BASIC;FR-CORE"

     parameters: (EXPR SELF)

     called by: (:METHOD FRAME-CORE :RECALL),
          (:METHOD FRAME-CORE :REMEMBER),
          (:METHOD FRAME-CORE :STORE)

     calls: EVAL, GET-INSTANCE-NAME, IS-INSTANCE

     macros expanded: GET-INSTANCE, IS-USER-DEFINED-METHOD, KEYWORDP,
          LEXPR-$SEND, LEXPR-SEND

     special variables: *KEYWORD-PACKAGE*, SELF

     uses keywords: :GET, :INSTANCE

-------------------------------------------------------------------

  COMPUTE-NEW-NUMBER-OF-RESULTS                     "BASIC;NET-PROP"

     parameters: (NUMBER-OF-RESULTS LIST-OF-VALUE-ASS)

     called by: (:METHOD CONSTRAINT-NET :TEST-CHOICES)

-------------------------------------------------------------------

  COMPUTE-SLOT-NAMES                                "BASIC;FRAMES"

     parameters: (SLOT-SPECS)

     called by: (:METHOD BASIC-FRAME-MIXIN :DESCRIBE-FRAME),
          (:METHOD FRAME-BASE :INSPECT-FRAME), GET-FRAME-SLOT-NAMES

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

-------------------------------------------------------------------

  COMPUTE-SLOTS                                     "BASIC;FRAMES"

     parameters: (SLOT-SPECS)

     called by: (:METHOD FRAME-BASE :NEW-FRAME-FORM)

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

-------------------------------------------------------------------

  COMPUTE-SLOTS2                                    "BASIC;FRAMES"

     parameters: (SLOT-SPECS)

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

-------------------------------------------------------------------

  COMPUTE-TERM                                      "COMMON;C-FNS"

     parameters: (TERM)

     called by: COLLECT-TERM-COMPONENTS, GET-SLOT-OF-TERM,
          (:METHOD RULE-DEVELOP-MIXIN :MAKE-RULE-ITEMS),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-WHY-NOT-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :GET-INPUT-TYPE),
          (:METHOD RULE-INTERPRETER :AND-FORWARD-ASKING-IF-
UNDETERMINED),
          (:METHOD RULE-INTERPRETER :OR-FORWARD-ASKING-IF-
UNDETERMINED)

     calls: IS-NEGATED-TERM

-------------------------------------------------------------------

  COMPUTE-USED-SLOTS                                "NORMAL;NR-DEVEL"

     parameters: (TERMS)

     called by: (:METHOD RULE-DEVELOP-MIXIN :FILTER-TERMS)

     calls: GET-SLOT-OF-TERM, SYS:MEMBER-EQL, NREVERSE

     macros expanded: PUSH

-------------------------------------------------------------------

  CONS-IF-NOT-NIL                                   "BASIC;BC-FNS"

     parameters: (X Y)

     called by: EVALUATE-RELATION

-------------------------------------------------------------------

  CONSISTENT-VALUE-ASS-P                            "BASIC;CSTRNET"

     parameters: (VALUE-ASS)

     called by: CONSISTENT-VALUE-ASS-P,
          VALUE-ASSIGNMENT-TO-BOOLEAN-VALUE

     calls: CONSISTENT-VALUE-ASS-P

     macros expanded: GET-VALUE-SPEC

-------------------------------------------------------------------

  CONSTRAINED-P                                     "BASIC;PRIMCSTR"

     parameters: (&REST VARIABLES)

     called by: CONSTRAINED-P

     calls: CONSTRAINED-P

-------------------------------------------------------------------

  (:METHOD CONSTRAINT :ACTIVATE)                    "BASIC;PRIMCSTR"

     parameters: (NEW-VALUE-ASS
          &OPTIONAL INIT-OPTION
          (CONSISTENCY-LEVEL 'LOCAL-CONSISTENCY)
          (NUMBER-OF-RESULTS NIL))

     calls: ACTIVATION-P, ADJUST-VALUE-ASS, COMBINE-VARIABLE-ALISTS,
          CONVERT-SIMPLE-TO-MULTIPLE, MULTIPLE-EVALUATION,
          SELECT-SOME-VALUE-ASS, SPLIT-VARIABLE-ALIST

     macros expanded: CASE, DO-NAMED, INHIBIT-STYLE-WARNINGS

     instance variables: CONDITION, INTERFACE, RELATION

-------------------------------------------------------------------

  (:METHOD CONSTRAINT :EVALUATE-EXPRESSION)         "BASIC;PRIMCSTR"

     parameters: (CONSTRAINT-EXPR GLOBAL-NET-SPEC &REST IGNORE)

     calls: GLOBAL-TO-LOCAL, LOCAL-TO-GLOBAL

     macros expanded: $SEND, SEND

     uses keywords: :ACTIVATE

-------------------------------------------------------------------

  (:METHOD CONSTRAINT :PRINT)                       "BASIC;PRIMCSTR"

     parameters: (NAME STREAM)

     calls: BABPPRINT, PRINC, TERPRI

     instance variables: COMPILED-CONDITION-FLAG, CONDITION,
          INTERFACE, RELATION

     uses keywords: :CONDITION, :INTERFACE, :OR, :RELATION

-------------------------------------------------------------------

  (:METHOD CONSTRAINT :TRACE-OFF)                   "MINI;MC-TRACE"

     parameters: (C-NAME)

     special variables: SELF

-------------------------------------------------------------------

  (:METHOD CONSTRAINT :TRACE-ON)                    "MINI;MC-TRACE"

     parameters: (C-NAME)

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: CONDITION, INTERFACE, RELATION

     uses keywords: :CONDITION, :INTERFACE, :NAME, :RELATION

   erzeugt ein Traced-Constraint, dass mit dem
Empfaenger in allen Komponenten (ausser name) uebereinstimmt

-------------------------------------------------------------------

  CONSTRAINT-ASSOC-TRACEDP                          "MINI;MC-MIXIN"

     parameters: (CONSTRAINT-ASSOC)

     called by: BUILD-CONSTRAINT-TRACE-ITEM-LIST,
          (:METHOD MINI-CONSTRAINT-MIXIN :UPDATE-CONSTRAINT-TRACE),
          UPDATE-CONSTRAINT-TRACE-MODE

     macros expanded: $SEND, GET-OBJECT-OF-C-ASSOC, SEND

     uses keywords: :SEND-IF-HANDLES, :TRACED-P

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-BASE :ACTIVATE-AND-ADAPT-RESULT)
                                                    "BASIC;CSTRBASE"

     parameters: (CONSTRAINT MULTIPLE-VALUE-ASS CONSISTENCY-LEVEL
          NUMBER-OF-RESULTS RESULT-TYPE)

     calls: VALUE-ASSIGNMENT-TO-BOOLEAN-VALUE

     macros expanded: $SEND, CASE, SEND

     uses keywords: :ACTIVATE

    aktiviert den Constraint und passt das Ergebnis
      dem geforderten Typ an

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-BASE :DELETE)                 "BASIC;CSTRBASE"

     parameters: (C-NAME)

     calls: SYS:ASSOC-EQL, SYS:REMOVE*

     macros expanded: $SEND, SEND

     instance variables: CONSTRAINT-NETS, CONSTRAINTS

     uses keywords: :SET-CONSTRAINT-NETS, :SET-CONSTRAINTS

    Loeschen des angegebenen Constraints

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-BASE :GET)                    "BASIC;CSTRBASE"

     parameters: (C-NAME)

     calls: SYS:ASSOC-EQL

     macros expanded: GET-OBJECT-OF-C-ASSOC

     instance variables: CONSTRAINT-NETS, CONSTRAINTS

    ermittelt das primitive oder zusammengesetzte Constraint mit
      dem angegebenen Namen
      (Beachte: ein Netz und ein primitives Constraint duerfen nicht
       		den gleichen Namen besitzen)

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-BASE :NEW&DELETE)             "BASIC;CSTRBASE"

     parameters: (C-TYPE C-NAME C-VARIABLES C-BODY &OPTIONAL
          (C-CONDITION T))

     macros expanded: $SEND, CASE, SEND

     uses keywords: :DELETE, :NEW-COMPOUND, :NEW-PRIMITIVE

    Ueberschreiben der alten Definition

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-BASE :NEW-COMPOUND)           "BASIC;CSTRBASE"

     parameters: (C-NAME INTERFACE C-EXPRESSIONS &REST DUMMY)

     calls: CREATE-NET-SPEC, MAKE-INSTANCE

     macros expanded: $SEND, MAKE-$INSTANCE, SEND

     uses keywords: :GET, :PUT-COMPOUND, :SET-INTERFACE,
          :SET-NET-SPEC

    Definition eines Constraint-Netz

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-BASE :NEW-PRIMITIVE)          "BASIC;CSTRBASE"

     parameters: (C-NAME C-VARIABLES C-RELATION &OPTIONAL
          (C-CONDITION T))

     calls: ABBREVIATED-CONDITION, COMPILE-CONDITION, MAKE-INSTANCE

     macros expanded: $SEND, MAKE-$INSTANCE, SEND

     uses keywords: :GET, :PUT-PRIMITIVE,
          :SET-COMPILED-CONDITION-FLAG, :SET-CONDITION,
          :SET-INTERFACE, :SET-RELATION

    Definition eines primitiven Constraints

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-BASE :PUT-COMPOUND)           "BASIC;CSTRBASE"

     parameters: (C-NAME C-NET)

     macros expanded: $SEND, MAKE-CONSTRAINT-ASSOC, SEND

     instance variables: CONSTRAINT-NETS

     uses keywords: :SET-CONSTRAINT-NETS

    traegt ein neues Constraintnetz ein

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-BASE :PUT-PRIMITIVE)          "BASIC;CSTRBASE"

     parameters: (C-NAME C-PRIMITIVE)

     macros expanded: $SEND, MAKE-CONSTRAINT-ASSOC, SEND

     instance variables: CONSTRAINTS

     uses keywords: :SET-CONSTRAINTS

    traegt ein neues primitives Constraint ein

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-BASE :SATISFIED-P)            "BASIC;CSTRBASE"

     parameters: (EXPRESSION)

     calls: DETERMINE-CONSISTENCY-LEVEL, DETERMINE-NUMBER-OF-RESULTS,
          EVAL-VALUE-ASS, GET-CONSTRAINT, GET-EXTERNAL-VALUE-ASS

     macros expanded: $SEND, GET-CONSTR-NAME, SEND

     uses keywords: :ACTIVATE-AND-ADAPT-RESULT

    T, falls die Wertebelegung konsistent ist;
      NIL, sonst

      der Konsistenzlevel und die Anzahl der
      geforderten Ergebnisse werden beruecksichtigt

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-BASE :SATISFY)                "BASIC;CSTRBASE"

     parameters: (EXPRESSION)

     calls: DETERMINE-CONSISTENCY-LEVEL, DETERMINE-NUMBER-OF-RESULTS,
          EVAL-VALUE-ASS, GET-CONSTRAINT, GET-EXTERNAL-VALUE-ASS

     macros expanded: $SEND, GET-CONSTR-NAME, SEND

     uses keywords: :ACTIVATE-AND-ADAPT-RESULT

    aktiviert den in expression angegebenen Constraint, wobei
    die Argumente in die interne Darstellung ueberfuehrt werden

-------------------------------------------------------------------

  CONSTRAINT-INPUT-TEST                             "BASIC;BC-MIXIN"

     parameters: (EXPR)

     called by: (:METHOD BASIC-CONSTRAINT-MIXIN :CHOOSE-C-TYPE),
          CHOOSE-SPECIAL-CONSTRAINT

   Abbruch, falls expr gleich nil ist

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :ACTIVATE)                "BASIC;NET-PROP"

     parameters: (MULTIPLE-VALUE-ASS
          &OPTIONAL (INIT-OPTION 'INITIALIZE)
          (CONSISTENCY-LEVEL 'LOCAL-CONSISTENCY)
          (NUMBER-OF-RESULTS NIL))

     macros expanded: $SEND, SEND

     uses keywords: :INITIALIZE, :PROPAGATE, :RESULT

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :ADAPT-TO-LOCAL-CONSISTENCY)
                                                    "BASIC;NET-PROP"

     parameters: (LIST-OF-VALUE-ASS)

     calls: EMPTY-ALIST

     instance variables: INTERFACE

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :CONSISTENT-P)            "BASIC;NET-PROP"

     parameters: (&OPTIONAL (NUMBER-OF-RESULTS NIL))

     calls: GET-VAR-INFO-VALUES, SELECT-MULTIPLE-VALUED-VARIABLE,
          STATE-OF-NET-SPEC

     macros expanded: $SEND, CASE, GET-NET-VAR, SEND

     instance variables: NET-SPEC

     uses keywords: :INTERFACE-ASSIGNMENT, :TEST-CHOICES

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :EVALUATE-EXPRESSION)     "BASIC;NET-PROP"

     parameters: (CONSTRAINT-EXPR GLOBAL-NET-SPEC CONSISTENCY-LEVEL)

     calls: ADAPT-CONSISTENCY-LEVEL, GLOBAL-TO-LOCAL,
          LOCAL-TO-GLOBAL

     macros expanded: $SEND, SEND

     uses keywords: :ACTIVATE

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :FILTER)                  "BASIC;NET-PROP"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: AGENDA

     uses keywords: :FREEZE-STATE, :PROPAGATE, :TOTAL-INIT-QUEUE

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :FORGET-STATE)            "BASIC;NET-PROP"

     parameters: ()

     instance variables: STACK

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :FREEZE-STATE)            "BASIC;NET-PROP"

     parameters: ()

     calls: FREEZE-VAR-INFO-VALUES

     macros expanded: DO-NAMED

     instance variables: AGENDA, NET-SPEC

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :GET-INITIALE-STATE)      "BASIC;NET-PROP"

     parameters: ()

     calls: INIT-VAR-INFO-VALUES

     macros expanded: DO-NAMED

     instance variables: AGENDA, NET-SPEC

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :INITIALIZE)              "BASIC;NET-PROP"

     parameters: (MULTIPLE-VALUE-ASS INIT-OPTION)

     macros expanded: $SEND, SEND

     uses keywords: :FILTER, :GET-INITIALE-STATE, :INITIALIZE-AGENDA,
          :INITIALIZE-VARIABLES, :STORE-STATE

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :INITIALIZE-AGENDA)       "BASIC;NET-PROP"

     parameters: (MULTIPLE-VALUE-ASS)

     calls: SELECT-RELEVANT-CONSTRAINTS

     instance variables: AGENDA, NET-SPEC

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :INITIALIZE-VARIABLES)    "BASIC;NET-PROP"

     parameters: (MULTIPLE-VALUE-ASS)

     calls: UPDATE-NET-VALUE-ASS

     instance variables: NET-SPEC

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :INTERFACE-ASSIGNMENT)    "BASIC;NET-PROP"

     parameters: ()

     calls: SYS:ASSOC-EQUAL, GET-VAR-INFO-VALUES

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS,
          MAKE-VALUE-ASSOC

     instance variables: INTERFACE, NET-SPEC

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :NET-VARIABLES)           "BASIC;NET-PROP"

     parameters: ()

     macros expanded: DO-NAMED, GET-NET-VAR, INHIBIT-STYLE-WARNINGS

     instance variables: NET-SPEC

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :PRINT)                   "BASIC;CSTRNET"

     parameters: (NAME STREAM)

     calls: BABPPRINT, PRINC, SELECT-ALL-CONSTRAINTS, TERPRI

     instance variables: INTERFACE, NET-SPEC

     uses keywords: :CONSTRAINT-EXPRESSIONS, :INTERFACE

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :PROPAGATE)               "BASIC;NET-PROP"

     parameters: (CONSISTENCY-LEVEL)

     calls: GET-CONSTRAINT

     macros expanded: $SEND, GET-CONSTR-NAME, SEND

     instance variables: AGENDA, NET-SPEC

     uses keywords: :EVALUATE-EXPRESSION, :UPDATE-AGENDA,
          :UPDATE-VARIABLES

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :RESET-STATE)             "BASIC;NET-PROP"

     parameters: ()

     calls: RESET-VAR-INFO-VALUES

     macros expanded: DO-NAMED

     instance variables: AGENDA, NET-SPEC

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :RESTORE-STATE)           "BASIC;NET-PROP"

     parameters: ()

     calls: ERROR, GETHASH, MODIFY-NET-VALUE-ASS

     macros expanded: $SEND, BABERROR, GETENTRY, SEND

     instance variables: AGENDA, NET-SPEC, STACK

     special variables: *LANGUAGE*

     uses keywords: :SET-STACK

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :RESULT)                  "BASIC;NET-PROP"

     parameters: (CONSISTENCY-LEVEL NUMBER-OF-RESULTS)

     macros expanded: $SEND, CASE, SEND

     uses keywords: :CONSISTENT-P, :INTERFACE-ASSIGNMENT,
          :RESTORE-STATE, :TEST-CONSISTENCY-IF-SINGLE-VALUED

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :STORE-STATE)             "BASIC;NET-PROP"

     parameters: ()

     calls: GET-VAR-INFO-VALUES, MAKE-STACK-ELEM

     macros expanded: DO-NAMED, GET-NET-VAR, INHIBIT-STYLE-WARNINGS,
          MAKE-VALUE-ASSOC

     instance variables: AGENDA, NET-SPEC, STACK

     uses keywords: :QUEUE, :TRACE, :VALUES

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :TEST-CHOICES)            "BASIC;NET-PROP"

     parameters: (VARIABLE VALUE-SET NUMBER-OF-RESULTS)

     calls: SYS:*APPEND, COMPUTE-NEW-NUMBER-OF-RESULTS

     macros expanded: $SEND, MAKE-VALUE-ASSOC, SEND

     uses keywords: :ACTIVATE, :TEST-CHOICES

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :TEST-CONSISTENCY-IF-SINGLE-VALUED)
                                                    "BASIC;NET-PROP"

     parameters: ()

     calls: STATE-OF-VALUE-ASS

     macros expanded: $SEND, SEND

     uses keywords: :ADAPT-TO-LOCAL-CONSISTENCY, :CONSISTENT-P,
          :INTERFACE-ASSIGNMENT

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :TOTAL-INIT-QUEUE)        "BASIC;NET-PROP"

     parameters: ()

     calls: SELECT-ALL-CONSTRAINTS

     instance variables: AGENDA, NET-SPEC

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :TRACE-OFF)               "MINI;MC-TRACE"

     parameters: (C-NAME)

     special variables: SELF

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :TRACE-ON)                "MINI;MC-TRACE"

     parameters: (C-NAME)

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: AGENDA, INTERFACE, NET-SPEC, STACK

     uses keywords: :AGENDA, :INTERFACE, :NAME, :NET-SPEC, :STACK

   erzeugt ein Traced-Constraint-Netz, dass mit dem
Empfaenger in allen Komponenten (ausser name) uebereinstimmt

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :UPDATE-AGENDA)           "BASIC;NET-PROP"

     parameters: (CONSTRAINT-EXPR MULTIPLE-VALUE-ASS)

     calls: SYS:REMOVE-DUPLICATES*, SELECT-RELEVANT-CONSTRAINTS,
          UPDATE-QUEUE

     macros expanded: MAKE-TRACE-ELEM

     instance variables: AGENDA, NET-SPEC

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-NET :UPDATE-VARIABLES)        "BASIC;NET-PROP"

     parameters: (MULTIPLE-VALUE-ASS)

     calls: MODIFY-NET-VALUE-ASS

     instance variables: NET-SPEC

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-TRACE-MIXIN :BEFORE :TEST-CHOICES)
                                                    "MINI;MC-TRACE"

     parameters: (VARIABLE VALUE-SET NUMBER-OF-RESULTS)

     calls: SEND-KB

     macros expanded: MAKE-VALUE-ASSOC

     uses keywords: :CHOICE, :FAIL, :PROTOCOL

   sendet Protokollnachricht darueber, welche Wahl fuer die
Variable getroffen wurde

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-TRACE-MIXIN :EVALUATE-EXPRESSION)
                                                    "MINI;MC-TRACE"

     parameters: (CONSTRAINT-EXPR GLOBAL-NET-SPEC CONSISTENCY-LEVEL)

     calls: ADAPT-CONSISTENCY-LEVEL, GLOBAL-TO-LOCAL,
          LOCAL-TO-GLOBAL, MAKE-LOCAL-VALUE-ASS, SEND-KB

     macros expanded: $SEND, GET-PARAMETERS, SEND

     instance variables: NAME

     uses keywords: :ACTIVATE, :ENTER, :EXIT, :PROTOCOL

   sendet vor und nach der Evaluierung eine entsprechende
Protokollierungsnachricht an den Constraint-Prozessor

leider konnte kein :after-daemon  benutzt werden,
da dieser nicht auf das Ergebnis der aufgerufenen
Funktion zugreifen kann

-------------------------------------------------------------------

  (:METHOD CONSTRAINT-TRACE-MIXIN :TRACED-P)        "MINI;MC-TRACE"

     parameters: ()

   dient zum Test, ob ein gegebenes Constraint den trace-Mode besitzt
oder nicht

-------------------------------------------------------------------

  CONSTRAINT-TYPE               macro               "BASIC;BC-MIXIN"

     parameters: (EXPRESSION)

   ermittelt den Typ von expression und fuehrt einen Syntaxtest durch

-------------------------------------------------------------------

  CONTAINS-VARS                                     "COMMON;C-FNS"

     parameters: (EXP)

     called by: (:METHOD BASIC-FRAME-MIXIN :EVAL-BEHAVIOR-REFERENCE),
          (:METHOD BASIC-RULE-MIXIN :EVAL-RULE-META-REFERENCE-FOR-
PROLOG),
          CONTAINS-VARS,
          (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT-FOR-PROLOG),
          (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT-META-PREDICATE),
          (:METHOD LISP-MIXIN :EVAL-LISP-FORM-FOR-PROLOG)

     calls: CONTAINS-VARS, IS-VARIABLE

   Yields true if `<exp>` is resp. contains a prolog variable.

-------------------------------------------------------------------

  CONVERT-SIMPLE-TO-MULTIPLE                        "BASIC;BC-FNS"

     parameters: (SIMPLE-VAL-ASS)

     called by: (:METHOD CONSTRAINT :ACTIVATE)

     macros expanded: DO-NAMED, GET-SIMPLE-VALUE, GET-VAR,
          INHIBIT-STYLE-WARNINGS, MAKE-VALUE-ASSOC

-------------------------------------------------------------------

  CONVERT-TO-CONSAT-VALUE                           "BASIC;CSTRBASE"

     parameters: (EXPRESSION &OPTIONAL (MODE 'NO-EVAL))

     called by: CHOOSE-VALUE-SPEC, EVAL-FIRST-VALUE-ASS

     calls: EVALUATE-FUNCALL, VALUE-SPEC-TEST

     macros expanded: CASE

     uses keywords: :ONE-OF

    ueberfuehrt expression in eine Consat-Wertemenge

-------------------------------------------------------------------

  COPY-AGENDA-ELEM                                  "BASIC;CSTRNET"

     parameters: (OBJECT)

     calls: MAKE-ARRAY

     uses keywords: :ELEMENT-TYPE, :INITIAL-CONTENTS, :LEADER-LENGTH,
          :NAMED-STRUCTURE-SYMBOL

-------------------------------------------------------------------

  COPY-JUSTIFICATION                                "BASIC;DATA"

     parameters: (OBJECT)

     calls: MAKE-ARRAY

     uses keywords: :ELEMENT-TYPE, :INITIAL-CONTENTS, :LEADER-LENGTH,
          :NAMED-STRUCTURE-SYMBOL

-------------------------------------------------------------------

  COPY-POSSIBLE-VALUES                              "NORMAL;RSTREVAL"

     parameters: (SLOT-REF)

     called by: (:METHOD RESTRICTION-NET :COPY-POSSIBLE-VALUES)

     calls: GET-INSTANCE-NAME, POSSIBLE-VALUES-TO-VALUE-SPEC

     macros expanded: $SEND, GET-INSTANCE, GET-OBJECT-OF-SLOT-REF,
          GET-SLOT-OF-SLOT-REF, SEND

     uses keywords: :GET, :INSTANCE, :POSSIBLE-VALUES

   	liest die Possible-Values des Slots und
        transformiert die Repraesentation

-------------------------------------------------------------------

  COPY-SLOT-VALUE                                   "NORMAL;RSTREVAL"

     parameters: (SLOT-REF)

     called by: MAKE-VALUE-ASS-OF-POSTED-SLOTS,
          (:METHOD RESTRICTION-NET :COPY-VALUES)

     calls: GET-INSTANCE-NAME, SLOT-VALUE-TO-VALUE-SPEC

     macros expanded: $SEND, GET-INSTANCE, GET-OBJECT-OF-SLOT-REF,
          GET-SLOT-OF-SLOT-REF, SEND

     uses keywords: :GET, :GET-VALUE-ONLY, :INSTANCE

   	liest einen Slotwert und passt seine Repraesentation an

-------------------------------------------------------------------

  COPY-STACK-ELEM                                   "BASIC;CSTRNET"

     parameters: (OBJECT)

     calls: MAKE-ARRAY

     uses keywords: :ELEMENT-TYPE, :INITIAL-CONTENTS, :LEADER-LENGTH,
          :NAMED-STRUCTURE-SYMBOL

-------------------------------------------------------------------

  COPY-TRACE-ELEMENT                                "MINI;MR-TRACE"

     parameters: (OBJECT)

     calls: MAKE-ARRAY

     uses keywords: :ELEMENT-TYPE, :INITIAL-CONTENTS, :LEADER-LENGTH,
          :NAMED-STRUCTURE-SYMBOL

-------------------------------------------------------------------

  COPY-VAR-INFO                                     "BASIC;CSTRNET"

     parameters: (OBJECT)

     calls: MAKE-ARRAY

     uses keywords: :ELEMENT-TYPE, :INITIAL-CONTENTS, :LEADER-LENGTH,
          :NAMED-STRUCTURE-SYMBOL

-------------------------------------------------------------------

  COPY-VARCELL                                      "BASIC;AX-SC"

     parameters: (OBJECT)

     calls: MAKE-ARRAY

     uses keywords: :ELEMENT-TYPE, :INITIAL-CONTENTS

-------------------------------------------------------------------

  CREATE-INSTANCE-OF                                "BASIC;BF-MIXIN"

     parameters: (FRAME-NAME &OPTIONAL WITH-SPECIFICATION)

     calls: CURRENT-KB-TYPEP, GENSYM, SEND-KB

     macros expanded: $SEND, SEND

     uses keywords: :FRAME-PROCESSOR, :NEW-UNNAMED-INSTANCE

   Diese Funktion erlaubt, Instanzen dynamisch zu definieren.
   Die Instanzen, die damit kreiert werden, koennen nur mit SEND
   angesprochen werden. Sie sind fuer die Wissensbasis und den Frame
   nicht zugaenglich. In der Umgebung der Instanz ist object-name
   wie self gebunden.
   frame-name muss der name eines Frames sein (wird evaluiert)
   with-specification (wird evaluiert) und ermoeglicht eine
Initialisierung
   mit der gleichen Syntax und Semantik wie DEFINSTANCE.

-------------------------------------------------------------------

  CREATE-NET-SPEC                                   "BASIC;CSTRNET"

     parameters: (C-EXPRESSIONS)

     called by: (:METHOD CONSTRAINT-BASE :NEW-COMPOUND),
          (:METHOD RESTRICTION-BASE :NEW-RESTRICTION),
          (:METHOD RESTRICTION-NET :REDEFINE-ONE)

     calls: CREATE-VAR-INFO-ALIST, DETERMINE-NET-VARIABLES

-------------------------------------------------------------------

  CREATE-UNNAMED-INSTANCE       macro               "BASIC;BF-MIXIN"

     parameters: (INSTANCE-NAME FRAME-NAME &OPTIONAL
          WITH-SPECIFICATION)

     calls: CURRENT-KB-TYPEP, SEND-KB

     macros expanded: $SEND, SEND

     uses keywords: :FRAME-PROCESSOR, :NEW-UNNAMED-INSTANCE

-------------------------------------------------------------------

  CREATE-VAR-INFO-ALIST                             "BASIC;CSTRNET"

     parameters: (NET-VARS C-EXPRESSIONS)

     called by: CREATE-NET-SPEC

     calls: GET-ASSOCIATED-CONSTRAINTS, MAKE-VAR-INFO

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS,
          MAKE-INFO-ASSOC

     uses keywords: :CONSTRAINTS

-------------------------------------------------------------------

  CURRENT-KB-TYPEP                                  "COMMON;C-FNS"

     parameters: (FLAVOR-TYPE &OPTIONAL STRING)

     called by: CREATE-INSTANCE-OF, CREATE-UNNAMED-INSTANCE,
          DEFBEHAVIOR, DEFFRAME, TOGGLE-RULE-TRACE,
          WARN-IF-NO-PROLOG

     calls: GETHASH, PRINC, TERPRI, TYPEP, WRITE-STRING

     macros expanded: FLAVOR-TYPEP, GETENTRY

     special variables: *CURRENT-KNOWLEDGE-BASE*, *LANGUAGE*,
          *STANDARD-OUTPUT*, *TERMINAL-IO*

-------------------------------------------------------------------

  CURRENT-P                                         "COMMON;C-FNS"

     parameters: (KB)

     called by: (:METHOD KB-PROCESSOR-CORE :KILL-KB), SEARCH-FOR-KB

     special variables: *CURRENT-KNOWLEDGE-BASE*

-------------------------------------------------------------------

  CUT-RESET                     macro               "BASIC;AX-SC"

     parameters: ()

     expanded in: (:METHOD BASIC-GOALBOX :PROVE-AND),
          (:METHOD BASIC-GOALBOX :PROVE-COND),
          (:METHOD BASIC-GOALBOX :PROVE-NORMAL),
          (:METHOD BASIC-GOALBOX :PROVE-NOT),
          (:METHOD BASIC-GOALBOX :PROVE-ONCE),
          (:METHOD BASIC-GOALBOX :PROVE-OR),
          (:METHOD BASIC-GOALBOX :PROVE-TOP)

   resets a goal in case of cut.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :ADD-AS-NEGATIVE)              "BASIC;DATA"

     parameters: (TERM)

     calls: MAKE-JUSTIFICATION

     instance variables: JUSTIFICATION-LIST

     uses keywords: :JUSTIFICAND, :JUSTIFICANS, :USER-NO

   Add term to list of negative terms.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :ADD-AS-POSITIVE)              "BASIC;DATA"

     parameters: (TERM)

     calls: MAKE-JUSTIFICATION

     instance variables: JUSTIFICATION-LIST

     uses keywords: :JUSTIFICAND, :JUSTIFICANS, :USER-YES

   Add term to list of positive terms.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :ADD-AS-UNKNOWN)               "BASIC;DATA"

     parameters: (TERM)

     calls: MAKE-JUSTIFICATION

     instance variables: JUSTIFICATION-LIST

     uses keywords: :JUSTIFICAND, :JUSTIFICANS, :UNKNOWN

   Add term to list of unknown terms.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :ADD-DIRECT-DEDUCED)           "BASIC;DATA"

     parameters: (TERM RULE-SET-AND-RULE)

     calls: MAKE-JUSTIFICATION

     instance variables: JUSTIFICATION-LIST

     uses keywords: :JUSTIFICAND, :JUSTIFICANS, :RULE-ACTION

   Add term to list of directly deduced terms of a given rule of rule
set.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :ADD-HYPOTHESES-VERIFIED)      "BASIC;DATA"

     parameters: (TERM)

     instance variables: HYPOTHESES-VERIFIED

   Add term to list of verified hypotheses.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :ADD-RULE-TRIED)               "BASIC;DATA"

     parameters: (RULE)

     instance variables: RULES-TRIED

   Add rule to tried rules.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :ADD-RULE-USED)                "BASIC;DATA"

     parameters: (RULE)

     calls: SYS:MEMBER-EQUAL

     instance variables: RULES-USED

   Add rule to used rules.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :ADD-UNPROVABLE)               "BASIC;DATA"

     parameters: (TERM RULE-SET)

     calls: MAKE-JUSTIFICATION

     instance variables: JUSTIFICATION-LIST

     uses keywords: :JUSTIFICAND, :JUSTIFICANS, :UNPROVABLE

   Add term to list of not provable terms of a given rule set.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :ASK-USER)                     "BASIC;DATA"

     parameters: (ACTION RULE RULE-SET FLAG TYPE)

     calls: ERROR, GETHASH

     macros expanded: $SEND, BABERROR, CASE, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :ADD-AS-NEGATIVE, :ADD-AS-POSITIVE,
          :ADD-AS-UNKNOWN, :ASK, :ASK-USER, :EVAL, :WHY

   Ask user for an undetermined action.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :GET-ALL-FACTS)                "BASIC;DATA"

     parameters: ()

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

     instance variables: JUSTIFICATION-LIST

   Get all facts.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :GET-TRUE-FACTS)               "BASIC;DATA"

     parameters: ()

     calls: SYS:*NCONC

     macros expanded: DO-NAMED

     instance variables: JUSTIFICATION-LIST

     uses keywords: :RULE-ACTION, :USER-YES

   Get all true facts.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :GET-UNPROVABLE-FACTS)         "BASIC;DATA"

     parameters: ()

     calls: SYS:*NCONC

     macros expanded: DO-NAMED

     instance variables: JUSTIFICATION-LIST

     uses keywords: :UNPROVABLE

   Get all unprovable facts.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :IS-UNPROVABLE)                "BASIC;DATA"

     parameters: (TERM RULE-SET)

     calls: SYS:MEMBER-TEST

     instance variables: JUSTIFICATION-LIST

     uses keywords: :UNPROVABLE

   Look up if term is known to be not provable by a given rule set.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :PRINT-HYPOTHESES-VERIFIED)    "BASIC;DATA"

     parameters: ()

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: HYPOTHESES-VERIFIED, META-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT

   Print hypotheses verified on dialog-window.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :PRINT-TRUE-FACTS)             "BASIC;DATA"

     parameters: ()

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :GET-TRUE-FACTS

   Print all true facts on dialog-window.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :RECALL)                       "BASIC;DATA"

     parameters: (FACT)

     calls: IS-NEGATED-TERM, IS-UNDETERMINED

     macros expanded: $SEND, SEND

     instance variables: META-PROCESSOR

     uses keywords: :EVAL, :RECALL

   Recall the status of a (negated) fact.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :RECALL-WITHOUT-ASKING)        "BASIC;DATA"

     parameters: (FACT)

     calls: IS-NEGATED-TERM, IS-UNDETERMINED

     macros expanded: $SEND, SEND

     instance variables: META-PROCESSOR

     uses keywords: :EVAL, :RECALL-IMMEDIATE

   To avoid full evaluation of premises for explanations.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :REMEMBER)                     "BASIC;DATA"

     parameters: (ACTION RULE-SET RULE)

     macros expanded: $SEND, SEND

     instance variables: META-PROCESSOR

     uses keywords: :ADD-DIRECT-DEDUCED, :EVAL, :REMEMBER

   Remember the status of a fact. Returns nil, if already known, fact
otherwise.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :RESET-DATA-BASE)              "BASIC;DATA"

     parameters: ()

     instance variables: HYPOTHESES-VERIFIED, JUSTIFICATION-LIST,
          RULES-TRIED, RULES-USED

   Reset dynamic data base to initial state.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :STORE)                        "BASIC;DATA"

     parameters: (ACTION RULE-SET RULE)

     macros expanded: $SEND, SEND

     instance variables: META-PROCESSOR

     uses keywords: :ADD-DIRECT-DEDUCED, :EVAL, :STORE

   Store the status of a fact. Returns the fact in any case.

-------------------------------------------------------------------

  (:METHOD DATA-BASE :WHY)                          "BASIC;DATA"

     parameters: (FACT CURRENT-RULE RULE-SET FACT-TYPE)

     macros expanded: $SEND, SEND

     instance variables: META-PROCESSOR

     uses keywords: :CHOOSE-FROM-MENU

   Substitute for true explanations, which are provided by rule-
explain-mixin

-------------------------------------------------------------------

  DECR-NUMBER-OF-RESULTS                            "BASIC;BC-FNS"

     parameters: (NUMBER-OF-RESULTS)

     called by: SELECT-SOME-VALUE-ASS

-------------------------------------------------------------------

  DEF-KB-CONFIGURATION          macro               "META;KB-CORE"

     parameters: (FLAVOR-NAME &REST OPTIONS)

     used as a constant by: KNOWLEDGE-BASE

     calls: SYS:*NCONC, APPEND, BAB-REQUIRE, FILTER-OPTIONS,
          FLAVORP

     macros expanded: DO-NAMED, SYS::XR-BQ-APPEND

     uses keywords: :INTERFACE, :PROCS, :SETTABLE-INSTANCE-VARIABLES,
          :SPECIAL, :TYPEFKT

   knowledge base configuration constructor.
Generates a knowledge base flavor and a method to determine the type
of an expression
which has to be passed to the appropriate processor. The most
important options
are: (:special . special-mixins) (:procs . processor-mixins)
(:interface . interface-mixins)
which determine the special,processor and interface mixins to be
included in the flavor.
No defaults are used if these options are not specified.
All other options are passed to the defflavor form.

-------------------------------------------------------------------

  DEF-KB-INSTANCE               macro               "META;KB-CORE"

     parameters: (KB-NAME KB-CONFIGURATION &REST INIT-PLIST)

     used as a constant by: DEF-KB-INSTANCE, KNOWLEDGE-BASE

     uses keywords: :KB-NAME, :STORE-DEKLARATION, :USE

   knowledge base instance constructor.
generates an instance of the flavor kb-configuration and assigns it
to kb-name.
the generated kb is automatically made current.

-------------------------------------------------------------------

  DEFAXIOM-SET                  macro               "BASIC;AXIOMS"

     parameters: (AXSET-NAME &REST CLAUSES)

   constructor macro for free axiom sets.

-------------------------------------------------------------------

  DEFBABYLON-ENTRY              macro               "COMMON;C-FNS"

     parameters: (KEY TABLE LANG VALUE)

     expanded in: "hd: SC80:BABYLON:KERNEL:CONSAT:BASIC:CP-TAB-E",
          "hd: SC80:BABYLON:KERNEL:CONSAT:BASIC:CP-TAB-G",
          "hd: SC80:BABYLON:KERNEL:FRAMES:BASIC:FP-TAB-E",
          "hd: SC80:BABYLON:KERNEL:FRAMES:BASIC:FP-TAB-G",
          "hd: SC80:BABYLON:KERNEL:FRAMES:MINI:ASK-SUPP",
          "hd: SC80:BABYLON:KERNEL:FREETEXT:FT-TAB-E",
          "hd: SC80:BABYLON:KERNEL:FREETEXT:FT-TAB-G",
          "hd: SC80:BABYLON:KERNEL:META:KB-TAB-E",
          "hd: SC80:BABYLON:KERNEL:META:KB-TAB-G",
          "hd: SC80:BABYLON:KERNEL:PROLOG:BASIC:PP-TAB-E",
          "hd: SC80:BABYLON:KERNEL:PROLOG:BASIC:PP-TAB-G",
          "hd: SC80:BABYLON:KERNEL:RULES:BASIC:RP-TAB-E",
          "hd: SC80:BABYLON:KERNEL:RULES:BASIC:RP-TAB-G"

-------------------------------------------------------------------

  DEFBABYLON-TABLE              macro               "COMMON;C-FNS"

     parameters: (NAME LANG &REST OPTIONS)

     expanded in: "hd: SC80:BABYLON:KERNEL:CONSAT:BASIC:CP-TAB-E",
          "hd: SC80:BABYLON:KERNEL:CONSAT:BASIC:CP-TAB-G",
          "hd: SC80:BABYLON:KERNEL:FRAMES:BASIC:FP-TAB-E",
          "hd: SC80:BABYLON:KERNEL:FRAMES:BASIC:FP-TAB-G",
          "hd: SC80:BABYLON:KERNEL:FREETEXT:FT-TAB-E",
          "hd: SC80:BABYLON:KERNEL:FREETEXT:FT-TAB-G",
          "hd: SC80:BABYLON:KERNEL:META:KB-TAB-E",
          "hd: SC80:BABYLON:KERNEL:META:KB-TAB-G",
          "hd: SC80:BABYLON:KERNEL:PROLOG:BASIC:PP-TAB-E",
          "hd: SC80:BABYLON:KERNEL:PROLOG:BASIC:PP-TAB-G",
          "hd: SC80:BABYLON:KERNEL:RULES:BASIC:RP-TAB-E",
          "hd: SC80:BABYLON:KERNEL:RULES:BASIC:RP-TAB-G"

-------------------------------------------------------------------

  DEFBABYLON-TRANSLATION        macro               "KERNEL;REQUIRE"

     parameters: (NAME FIRST-TNAME &OPTIONAL SECOND-TNAME)

     expanded in: "hd: SC80:BABYLON:KERNEL:BABTRANS"

-------------------------------------------------------------------

  DEFBEHAVIOR                   macro               "BASIC;BF-MIXIN"

     parameters: (BEHAVIOR-SPEC LAMBDA-LIST &BODY BEHAVIOR-BODY)

     used as a constant by: MAKE-BEHAVIOR-DEF

     calls: CURRENT-KB-TYPEP, SEND-KB

     macros expanded: $SEND, SEND

     uses keywords: :FRAME-PROCESSOR, :NEW-BEHAVIOR-FORM

-------------------------------------------------------------------

  DEFCLAUSES                    macro               "BASIC;BP-MIXIN"

     parameters: (&REST CLAUSES)

     used as a constant by: DEFRELATIONS

     uses keywords: :ASSERT-CLAUSES

   constructor for kb-relations.

-------------------------------------------------------------------

  DEFCONSTRAINT                 macro               "BASIC;CSTRBASE"

     parameters: (DEF-NAME &REST DEF-BODY)

     used as a constant by: (:METHOD CONSTRAINT :PRINT),
          (:METHOD CONSTRAINT-NET :PRINT)

     calls: GET-DEF-CONDITION, GET-DEF-EXPRESSIONS,
          GET-DEF-INTERFACE, GET-DEF-RELATION, GET-DEF-TYP

     macros expanded: CASE

     uses keywords: :NEW&DELETE

-------------------------------------------------------------------

  DEFFRAME                      macro               "BASIC;BF-MIXIN"

     parameters: (FRAME-NAME &BODY BODY)

     used as a constant by: (:METHOD FRAME-BASE :NEW-FRAME-FORM)

     calls: CURRENT-KB-TYPEP, SEND-KB

     macros expanded: $SEND, SEND

     uses keywords: :FRAME-PROCESSOR, :NEW-FRAME-FORM

-------------------------------------------------------------------

  DEFINE-POSSIBLE-VALUES-BEHAVIOR  macro            "MINI;POS-VALS"

     parameters: ((FRAME-NAME METHOD-NAME) LAMBDA-LIST FORM)

     calls: GET-FRAME-NAME-OR-SIGNAL-ERROR

-------------------------------------------------------------------

  DEFINE-POSSIBLE-VALUES-METHOD  macro              "MINI;POS-VALS"

     parameters: ((FLAVOR-NAME METHOD-NAME) LAMBDA-LIST FORM)

     expanded in: "hd: SC80:BABYLON:KERNEL:FRAMES:MINI:POS-VALS"

     used as a constant by: DEFINE-POSSIBLE-VALUES-BEHAVIOR

   macro to create the method which is used to check a new value.
lambda-list := (<value-to-check> <possible-values-args>).

-------------------------------------------------------------------

  DEFINE-RELATION-BEHAVIOR      macro               "BASIC;FR-CORE"

     parameters: ((FRAME-NAME RELATION-NAME) LAMBDA-LIST &BODY BODY)

     calls: GET-FRAME-NAME-OR-SIGNAL-ERROR

-------------------------------------------------------------------

  DEFINE-RELATION-METHOD        macro               "BASIC;FR-CORE"

     parameters: ((FLAVOR-NAME RELATION-NAME) LAMBDA-LIST &BODY BODY)

     expanded in: "hd: SC80:BABYLON:KERNEL:FRAMES:BASIC:FR-CORE"

     used as a constant by: DEFINE-RELATION-BEHAVIOR

     calls: INTERN, STRING-APPEND, SYS::STRING-AUX

     macros expanded: KEYWORDP, STRING, TYPECASE

     special variables: *KEYWORD-PACKAGE*

     uses keywords: :KEYWORD

-------------------------------------------------------------------

  DEFINSTANCE                   macro               "BASIC;BF-MIXIN"

     parameters: (INSTANCE-NAME OF FRAME-NAME &BODY BODY)

     used as a constant by: CHECK-INSTANCE-DEFINITION,
          (:METHOD FRAME-BASE :NEW-INSTANCE)

     uses keywords: :NEW-INSTANCE

-------------------------------------------------------------------

  DEFJUNCTOR                    macro               "BASIC;BR-INTER"

     parameters: (NAME RULE-INTERPRETER-METHOD MODE)

     expanded in: "hd: SC80:BABYLON:KERNEL:RULES:BASIC:BR-INTER"

   Associates operators in rules with mode and method for execution.

-------------------------------------------------------------------

  DEFPROLOG-METHOD              macro               "BASIC;BP-PREDS"

     parameters: (PRED METHOD)

     expanded in: "hd: SC80:BABYLON:KERNEL:PROLOG:BASIC:BP-PREDS"

   assigns a proof method to a pred(icate).

-------------------------------------------------------------------

  DEFPROLOG-TRACE-METHODS       macro               "MINI;MP-PREDS"

     parameters: (PRED BEFORE AFTER)

     expanded in: "hd: SC80:BABYLON:KERNEL:PROLOG:MINI:MP-PREDS"

     calls: COPY-SEQ, FORMAT::GET-FORMAT-STRING, INTERN, PRIN1,
          FORMAT::RETURN-FORMAT-STRING, WRITE-STRING

     special variables: *STANDARD-OUTPUT*, FORMAT::CASE-CONVERT,
          FORMAT::CASE-CONVERTED-STREAM, FORMAT::FORMAT-STRING,
          FORMAT::PREV-CHAR

     uses keywords: :KEYWORD

-------------------------------------------------------------------

  DEFRELATIONS                  macro               "BASIC;BP-MIXIN"

     parameters: (&REST RELATIONS)

-------------------------------------------------------------------

  DEFREQUEST                    macro               "COMMON;C-FNS"

     parameters: (NAME &REST PLIST)

     expanded in: "hd: SC80:BABYLON:KERNEL:CONSAT:BASIC:BC-MIXIN",
          "hd: SC80:BABYLON:KERNEL:FRAMES:BASIC:BF-MIXIN",
          "hd: SC80:BABYLON:KERNEL:FREETEXT:FT-MIXIN",
          "hd: SC80:BABYLON:KERNEL:META:L-MIXIN",
          "hd: SC80:BABYLON:KERNEL:PROLOG:BASIC:BP-MIXIN",
          "hd: SC80:BABYLON:KERNEL:RULES:BASIC:BR-MIXIN"

   Defines methods to be used for a request type.

-------------------------------------------------------------------

  DEFRESTRICTION                macro               "NORMAL;RSTRBASE"

     parameters: (NAME &REST EXPR)

     used as a constant by: (:METHOD RESTRICTION-DEFINITION :PRINT)

     calls: GET-GUARDED-SLOTS, GET-PROTECTED-SLOTS, GET-RESTRICTIONS

     uses keywords: :NEW&DELETE-RESTRICTION

-------------------------------------------------------------------

  DEFRULE-SET                   macro               "BASIC;BR-MIXIN"

     parameters: (RULE-SET-NAME &REST RULES)

     used as a constant by:
          (:METHOD BASIC-RULE-MIXIN :EVAL-RULE-META-REFERENCE-FOR-
PROLOG),
          PRINT-RULE-SET, RULE-SET

     calls: SEND-KB

     uses keywords: :ADD-TO-RULES, :KB-NAME

-------------------------------------------------------------------

  DEREF                                             "BASIC;AX-SC"

     parameters: (X)

     called by: (:METHOD BASIC-GOALBOX :PROVE-BAGOF),
          (:METHOD BASIC-GOALBOX :PROVE-CALL),
          (:METHOD BASIC-GOALBOX :PROVE-CALLPRED),
          (:METHOD BASIC-GOALBOX :PROVE-EQUAL),
          (:METHOD BASIC-GOALBOX :PROVE-IS),
          (:METHOD BASIC-GOALBOX :PROVE-NOEQUAL),
          (:METHOD BASIC-GOALBOX :PROVE-READ),
          (:METHOD BASIC-GOALBOX :PROVE-VAR),
          (:METHOD BASIC-GOALBOX :PROVE-VARPRED), DEREF, UNIFY

     calls: DEREF, VARCELL-P

     macros expanded: IS-BOUND

-------------------------------------------------------------------

  DETERMINE-CONSISTENCY-LEVEL                       "BASIC;CSTRBASE"

     parameters: (EXPRESSION)

     called by: (:METHOD CONSTRAINT-BASE :SATISFIED-P),
          (:METHOD CONSTRAINT-BASE :SATISFY)

     calls: ERROR, GETHASH

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :GLOBALLY, :LOCALLY, :WITH

-------------------------------------------------------------------

  DETERMINE-NET-VARIABLES                           "BASIC;CSTRNET"

     parameters: (C-EXPRESSIONS)

     called by: CREATE-NET-SPEC, DETERMINE-NET-VARIABLES

     calls: DETERMINE-NET-VARIABLES, SYS:REMOVE-DUPLICATES*,
          UNION-SETS

     macros expanded: GET-PARAMETERS

-------------------------------------------------------------------

  DETERMINE-NUMBER-OF-RESULTS                       "BASIC;CSTRBASE"

     parameters: (EXPRESSION)

     called by: (:METHOD CONSTRAINT-BASE :SATISFIED-P),
          (:METHOD CONSTRAINT-BASE :SATISFY)

     calls: EVALUATE-FUNCALL

     uses keywords: :GLOBALLY, :WITH

-------------------------------------------------------------------

  DETERMINE-SET-OF-INSTANCES                        "NORMAL;RSTRBASE"

     parameters: (EXPR)

     called by: MAKE-$INSTANCE-ALIST

     calls: GET-ALL-INSTANCES

     macros expanded: CASE

     uses keywords: :INSTANCE-OF, :ONE-OF

   	ermittelt eine Menge von Instanzen

-------------------------------------------------------------------

  DETERMINE-SLOTS                                   "NORMAL;RSTRBASE"

     parameters: (SET-OF-SLOTS ALL-SLOTS)

     called by: (:METHOD RESTRICTION-BASE :NEW-RESTRICTION),
          (:METHOD RESTRICTION-NET :REDEFINE-ONE)

     calls: INSTANTIATE-SLOTS

     macros expanded: CASE

     uses keywords: :ALL, :NONE

   	instantiiert alle Slot-Referenzen in set-of-slots

-------------------------------------------------------------------

  DIFF-LIST                                         "MINI;MP-MIXIN"

     parameters: (ALIST BLIST)

     called by: (:METHOD MINI-PROLOG-MIXIN :SELECT-FOR-TRACE)

     calls: COPY-LIST, SYS:DELETE*

-------------------------------------------------------------------

  DIFFERENCE-EMPTY-P                                "BASIC;BC-FNS"

     parameters: (SET1 SET2)

     called by: MORE-CONSTRAINED-P

     calls: SYS:SET-DIFFERENCE*

-------------------------------------------------------------------

  DISPLAY-CONSTRAINT                                "BASIC;BC-MIXIN"

     parameters: (&REST DUMMY)

     calls: SEND-KB

     uses keywords: :DISPLAY

-------------------------------------------------------------------

  DISPLAY-PROOFTREE                                 "NORMAL;NP-MIXIN"

     parameters: ()

     calls: SEND-CURRENT-KNOWLEDGE-BASE, WARN-IF-NO-PROLOG

     uses keywords: :DISPLAY-PROOFTREE

-------------------------------------------------------------------

  EMPTY-ALIST                                       "BASIC;BC-FNS"

     parameters: (VARIABLES)

     called by: COMBINE-VARIABLE-ALISTS,
          (:METHOD CONSTRAINT-NET :ADAPT-TO-LOCAL-CONSISTENCY)

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS,
          MAKE-VALUE-ASSOC

-------------------------------------------------------------------

  ENOUGH-RESULTS                                    "BASIC;BC-FNS"

     parameters: (NUMBER-OF-RESULTS)

     called by: SELECT-SOME-VALUE-ASS

-------------------------------------------------------------------

  ENVNR                         defsubst            "BASIC;AX-SC"

     parameters: (VARCELL)

     expanded in: DEREF, (:METHOD PROC-SC-MIXIN :CLAUSE-TRANS-UNIFY),
          (:METHOD PROC-SC-MIXIN :RESET-ENV),
          (:METHOD PROC-SC-MIXIN :SIDE-RESET),
          (:METHOD PROC-SC-MIXIN :TRANS-UNIFY),
          (:METHOD PROC-SC-MIXIN :UNIFY), REST-DEREF,
          REST-SUBST-PROLOG-VARS, SUBST-PROLOG-VARS, UNIFY

     used as a constant by: IS-BOUND, IS-REST-BOUND, SETVAR

-------------------------------------------------------------------

  EVAL-FIRST-VALUE-ASS                              "BASIC;CSTRBASE"

     parameters: (EXTERNAL-VALUE-ASS)

     called by: EVAL-VALUE-ASS

     calls: CONVERT-TO-CONSAT-VALUE, ERROR, GETHASH

     macros expanded: BABERROR, GETENTRY, MAKE-VALUE-ASSOC

     special variables: *LANGUAGE*

    berechnet die Wertebelegung der ersten Constraint-Variablen

-------------------------------------------------------------------

  EVAL-LISP-CALL                macro               "BASIC;BP-PREDS"

     parameters: (GOAL)

     expanded in: (:METHOD BASIC-GOALBOX :PROVE-IS),
          (:METHOD BASIC-GOALBOX :PROVE-LISP)

-------------------------------------------------------------------

  EVAL-VALUE-ASS                                    "BASIC;CSTRBASE"

     parameters: (EXTERNEL-VALUE-ASS)

     called by: (:METHOD CONSTRAINT-BASE :SATISFIED-P),
          (:METHOD CONSTRAINT-BASE :SATISFY), EVAL-VALUE-ASS

     calls: EVAL-FIRST-VALUE-ASS, EVAL-VALUE-ASS

    berechnet die Wertebelegung der Constraint-Variablen
    aus der externen Darstellung der Wertebelegung

-------------------------------------------------------------------

  EVALUATE-CONDITION                                "BASIC;BC-MIXIN"

     parameters: (EXPRESSION SIMPLE-VALUE-ASS)

     called by: ACTIVATION-P, EVALUATE-RELATION-ELEMENT,
          SELECT-INSTANCE-COMBINATIONS

     calls: SEND-KB, SUBSTITUTE-CONSTRAINT-VARIABLES

     uses keywords: :EVAL, :RECALL

   Zugriff von consat auf andere Prozessoren

-------------------------------------------------------------------

  EVALUATE-FUNCALL                                  "BASIC;BC-MIXIN"

     parameters: (EXPRESSION &OPTIONAL (SIMPLE-VALUE-ASS NIL))

     called by: CONVERT-TO-CONSAT-VALUE, DETERMINE-NUMBER-OF-RESULTS,
          EVALUATE-PATTERN

     calls: SEND-KB, SUBSTITUTE-CONSTRAINT-VARIABLES

     uses keywords: :EVAL, :RECALL

   Zugriff von consat auf andere Prozessoren

-------------------------------------------------------------------

  EVALUATE-PATTERN                                  "BASIC;PRIMCSTR"

     parameters: (PATTERN VARIABLES SIMPLE-VAL-ASS &OPTIONAL
          (NEW-VAL-ASS NIL))

     called by: EVALUATE-PATTERN, EVALUATE-RELATION-ELEMENT

     calls: COMPATIBLE-VALUE-P, EVALUATE-FUNCALL, EVALUATE-PATTERN,
          NEW-ASSOCIATION, REVERSE

-------------------------------------------------------------------

  EVALUATE-RELATION                                 "BASIC;PRIMCSTR"

     parameters: (RELATION VARIABLES SIMPLE-VAL-ASS)

     called by: EVALUATE-RELATION, MULTIPLE-EVALUATION

     calls: CONS-IF-NOT-NIL, EVALUATE-RELATION,
          EVALUATE-RELATION-ELEMENT

-------------------------------------------------------------------

  EVALUATE-RELATION-ELEMENT                         "BASIC;PRIMCSTR"

     parameters: (REL-ELEMENT VARIABLES SIMPLE-VAL-ASS)

     called by: EVALUATE-RELATION

     calls: EVALUATE-CONDITION, EVALUATE-PATTERN, EVALUATE-TUPEL

     macros expanded: CASE, GET-CONDITION, GET-EXPRESSIONS,
          GET-KEYWORD, GET-TUPEL

     uses keywords: :PATTERN, :TUPLE

-------------------------------------------------------------------

  EVALUATE-TUPEL                                    "BASIC;PRIMCSTR"

     parameters: (TUPEL VARIABLES SIMPLE-VAL-ASS &OPTIONAL
          (NEW-VAL-ASS NIL))

     called by: EVALUATE-RELATION-ELEMENT, EVALUATE-TUPEL

     calls: COMPATIBLE-VALUE-P, EVALUATE-TUPEL, NEW-ASSOCIATION

-------------------------------------------------------------------

  EXCEPTION-COMMENT                                 "NORMAL;NP-DEVEL"

     parameters: (GOAL)

     called by: (:METHOD AX-DEVELOP-MIXIN :MOM-SHOW-PREMISE)

     calls: FORMAT, GETHASH

     macros expanded: GETENTRY, IS-VAR, PRED, STRING, TYPECASE

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  EXPLAIN-ANSWERS-CHOICES                           "MINI;POS-VALS"

     parameters: (ANSWER-EXPLANATIONS)

     called by:
          (:METHOD POSS-VAL-MIXIN :CHECK-FORMAT-OF-EXPLAIN-ANSWERS),
          (:METHOD POSS-VAL-MIXIN :PROVIDE-LOCAL-HELP)

     calls: IS-SIMPLE-LIST

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

-------------------------------------------------------------------

  EXPLAIN-RESULTS                                   "NORMAL;NR-MIXIN"

     parameters: (&REST IGNORE)

     calls: SEND-KB

     uses keywords: :EXPLAIN-RESULTS

   Explain results.
Actually only the results of rule processor actions are explained.

-------------------------------------------------------------------

  EXT-REP-CLAUSE                                    "BASIC;AXIOMS"

     parameters: (CLAUSE)

     called by: (:METHOD PROC-EXPLAIN-MIXIN :WHY-GOAL),
          (:METHOD PROLOG-TRACE-MIXIN :BEFORE :TRANS-UNIFY),
          (:METHOD PROLOG-TRACE-MIXIN :BEFORE :CLAUSE-TRANS-UNIFY)

   introduces <- in rules.

-------------------------------------------------------------------

  EXTENDED-INTERSECTION                             "BASIC;BC-FNS"

     parameters: (VALUE-SPEC1 VALUE-SPEC2)

     called by: ADD-VAR-INFO-VALUES,
          INTERSECT-ASSOCIATED-VALUE-SPECS

     calls: INTERSECT-SETS

-------------------------------------------------------------------

  EXTENDED-MEMBER                                   "BASIC;BC-FNS"

     parameters: (VALUE VALUE-SPEC)

     calls: SYS:MEMBER-EQUAL

-------------------------------------------------------------------

  EXTERNAL-VALUE-ASS-P                              "BASIC;BC-MIXIN"

     parameters: (EXPRESSION)

     called by: EXTERNAL-VALUE-ASS-P

     calls: EXTERNAL-VALUE-ASS-P

   ueberprueft die Syntax der externen Darstellung einer
Variablenbelegung

-------------------------------------------------------------------

  FILTER-FIRST                                      "NORMAL;NR-DEVEL"

     parameters: (TERM TERMS)

     called by: (:METHOD RULE-DEVELOP-MIXIN :FILTER-TERMS)

     used as a constant by:
          (:METHOD RULE-DEVELOP-MIXIN :FILTER-TERMS)

     calls: SYS:*NCONC, MATCH-FIRST

     macros expanded: DO-NAMED

-------------------------------------------------------------------

  FILTER-OPTIONS                                    "META;KB-CORE"

     parameters: (KEY OPTIONS)

     called by: DEF-KB-CONFIGURATION

     calls: SYS:REMOVE*

-------------------------------------------------------------------

  FILTER-PLIST                                      "META;KB-CORE"

     parameters: (KEY PLIST)

     called by: KNOWLEDGE-BASE

     calls: SYS:*APPEND, LDIFF, SYS:MEMBER-EQL

-------------------------------------------------------------------

  FILTER-SECOND                                     "NORMAL;NR-DEVEL"

     parameters: (TERM TERMS)

     called by: (:METHOD RULE-DEVELOP-MIXIN :FILTER-TERMS)

     used as a constant by:
          (:METHOD RULE-DEVELOP-MIXIN :FILTER-TERMS)

     calls: SYS:*NCONC, MATCH-SECOND

     macros expanded: DO-NAMED

-------------------------------------------------------------------

  FIND-IMPLICATIONS                                 "BASIC;BR-MIXIN"

     parameters: (&OPTIONAL (RULE-SET-NAME NIL)
          (CONTROL-STRUCTURE :DO-ALL) (CONDITION T) (BINDINGS NIL))

     calls: SEND-KB

     uses keywords: :DO-ALL, :FIND-IMPLICATIONS

-------------------------------------------------------------------

  FIND-TRANSLATION                                  "KERNEL;REQUIRE"

     parameters: (STRING TYPE)

     called by: BAB-REQUIRE, TRANSFORM-PATHSTRING,
          TRANSFORM-PATHSTRING1

     calls: ASSOC, STRING-EQUAL

     macros expanded: CASE

     special variables: *BABYLON-TRANSLATIONS*

     uses keywords: :TEST

-------------------------------------------------------------------

  FORMAT-EXPECTATIONS                               "BASIC;FR-CORE"

     parameters: (DESIRED-VALUE NEGATION-FLAG RESTRICT-METHOD ARGS)

     called by: (:METHOD FRAME-CORE :ASK-FOR-SLOT-PROPERTY),
          (:METHOD FRAME-CORE :ASK-FOR-SLOT-VALUE),
          (:METHOD POSS-VAL-MIXIN :ANY-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :DEFAULT-READ-METHOD)

     calls: CONCATENATE, FORMAT, GETHASH

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  FORMAT-TRANSLATE-TRUE-OR-FALSE                    "FREETEXT;FT-
PROC"

     parameters: (FACT)

     called by: (:METHOD FREE-TEXT-PROCESSOR :ASK-USER),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER-WITHOUT-ADDING)

     calls: FORMAT, GETHASH

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  (:METHOD FRAME-BASE :INSPECT-FRAME)               "BASIC;FRAMES"

     parameters: (FRAME-NAME &OPTIONAL (STREAM *STANDARD-OUTPUT*))

     calls: COMPUTE-SLOT-NAMES, FORMAT, FORMAT::FORMAT-GET-STREAM,
          GET-FRAME-BEHAVIOR-SPECS, GET-FRAME-SLOTS,
          GET-INSTANCE-LIST, GET-SUPERS, PRIN1, TERPRI, WRITE-STRING

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

   describes frame named `<frame-name>` on `<stream>`.

-------------------------------------------------------------------

  (:METHOD FRAME-BASE :INSPECT-INSTANCE)            "BASIC;FRAMES"

     parameters: (INSTANCE-NAME &OPTIONAL (STREAM *STANDARD-OUTPUT*))

     calls: FORMAT, FORMAT::FORMAT-GET-STREAM,
          FORMAT::FORMAT-RETURN-STRING-STREAM, GET-INSTANCE-NAME,
          PRIN1, TERPRI, WRITE-STRING

     macros expanded: $SEND, DO-NAMED, GET-INSTANCE, SEND

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

     uses keywords: :GET, :GET-PROPERTIES, :INSTANCE, :SLOTS

   describes instance named `<instance-name>` on `<stream>`.

-------------------------------------------------------------------

  (:METHOD FRAME-BASE :NEW-BEHAVIOR-FORM)           "BASIC;FRAMES"

     parameters: (BEHAVIOR-SPECIFICATION LAMBDA-LIST BEHAVIOR-BODY)

     calls: ERROR, EVERY, GET-FRAME-NAME, GETHASH, KEYWORDP

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

   transforms a behavior definition into a method definition.

-------------------------------------------------------------------

  (:METHOD FRAME-BASE :NEW-FRAME-FORM)              "BASIC;FRAMES"

     parameters: (FRAME-NAME BODY)

     calls: CHECK-FRAME-DEFINITION, COMPUTE-SLOTS, GET-FRAME-NAME

     macros expanded: DO-NAMED, FRAME-OPTIONS, FRAME-SLOTS,
          FRAME-SUPERS, INHIBIT-STYLE-WARNINGS

     instance variables: FRAME-TYPE, FRCHECK

     uses keywords: :ADD-TO-FRAMES, :INITABLE-INSTANCE-VARIABLES

   transforms a frame definition into a flavor definition.

-------------------------------------------------------------------

  (:METHOD FRAME-BASE :NEW-INSTANCE)                "BASIC;FRAMES"

     parameters: (INSTANCE-NAME FRAME-NAME WITH-SPECIFICATION)

     calls: ADD-INSTANCE-TO-FRAME, CHECK-INSTANCE-DEFINITION,
          GET-FRAME-NAME-WITH-CHECK, MAKE-INSTANCE,
          REMOVE-NOISY-WORDS, SYS::SETPROP

     macros expanded: $SEND, MAKE-$INSTANCE, SEND

     instance variables: FRCHECK, META-PROCESSOR

     uses keywords: :ADD-TO-INSTANCES, :CHECK-YOUR-SELF,
          :INIT-ALL-SLOTS, :INITIALIZE, :INSTANCE,
          :INSTANCE-DEFINITION, :OBJECT-NAME

   generates an instance of frame-name.

-------------------------------------------------------------------

  (:METHOD FRAME-BASE :NEW-UNNAMED-INSTANCE)        "BASIC;FRAMES"

     parameters: (INSTANCE-NAME FRAME-NAME &OPTIONAL
          WITH-SPECIFICATION)

     calls: CHECK-INSTANCE-DEFINITION, GET-FRAME-NAME-WITH-CHECK,
          MAKE-INSTANCE, REMOVE-NOISY-WORDS

     macros expanded: $SEND, MAKE-$INSTANCE, SEND

     instance variables: FRCHECK

     uses keywords: :CHECK-YOUR-SELF, :INIT-ALL-SLOTS, :INITIALIZE,
          :OBJECT-NAME

   generates an unnamed instance of frame-name.

-------------------------------------------------------------------

  (:METHOD FRAME-BASE :TOGGLE-FRCHECK)              "BASIC;FRAMES"

     parameters: ()

     instance variables: FRCHECK

-------------------------------------------------------------------

  FRAME-BEHAVIORS               macro               "BASIC;FRAMES"

     parameters: (FRAME-INTERNAL-NAME)

     expanded in: ADD-TO-BEHAVIORS, GET-FRAME-BEHAVIORS,
          PRINT-FRAMES

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :%SET-OBJECT-NAME)            "BASIC;FR-CORE"

     parameters: (X)

     instance variables: OBJECT-NAME

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :/=-REL)                      "BASIC;FR-CORE"

     parameters: (FACET-VALUE EXPR-VALUE)

     calls: IS-MULTIPLE-ANSWER, SYS:MEMBER-EQL

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :<-REL)                       "BASIC;FR-CORE"

     parameters: (FACET-VALUE EXPR-VALUE)

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :<=-REL)                      "BASIC;FR-CORE"

     parameters: (FACET-VALUE EXPR-VALUE)

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :=-REL)                       "BASIC;FR-CORE"

     parameters: (FACET-VALUE EXPR-VALUE)

     calls: IS-MULTIPLE-ANSWER, SYS:MEMBER-EQL

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :>-REL)                       "BASIC;FR-CORE"

     parameters: (FACET-VALUE EXPR-VALUE)

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :>=-REL)                      "BASIC;FR-CORE"

     parameters: (FACET-VALUE EXPR-VALUE)

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :AFTER :INIT)                 "BASIC;FR-CORE"

     parameters: (&REST PLIST)

     calls: GET-SLOTS

     instance variables: SLOTS

     special variables: SELF

   stores user defined slots in instance variable slots.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :ALL-OF-REL)                  "BASIC;FR-CORE"

     parameters: (FACET-VALUE EXPR-VALUE)

     calls: EVERY

     macros expanded: $SEND, SEND

     uses keywords: :=-REL

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :ASK)                         "BASIC;FR-CORE"

     parameters: (SLOT
          &OPTIONAL ARG NEGATION-FLAG (STANDARD-OPTION NIL))

     calls: ERROR, GETHASH

     macros expanded: $SEND, BABERROR, GETENTRY, IS-FACET, KEYWORDP,
          SEND

     instance variables: OBJECT-NAME

     special variables: *KEYWORD-PACKAGE*, *LANGUAGE*

     uses keywords: :ASK-FOR-SLOT-PROPERTY, :ASK-FOR-SLOT-VALUE

   asks the user for the value (of a property) of a slot.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :ASK-FOR-SLOT-PROPERTY)       "BASIC;FR-CORE"

     parameters: (SLOT PROP-NAME
          &OPTIONAL DESIRED-VALUE NEGATION-FLAG STANDARD-OPTION)

     calls: FORMAT-EXPECTATIONS, GETHASH, IS-HELP, SEND-KB

     macros expanded: $SEND, GETENTRY, IS-VALUE, SEND

     instance variables: OBJECT-NAME

     special variables: *C-HELP-KEY*, *LANGUAGE*

     uses keywords: :ASK-FOR-SLOT-PROPERTY, :ASK-FOR-SLOT-VALUE,
          :BABYLON-FORMAT, :BABYLON-READ, :SET, :VALUE

   asks the user for the value of a property of a slot.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :ASK-FOR-SLOT-VALUE)          "BASIC;FR-CORE"

     parameters: (SLOT
          &OPTIONAL DESIRED-VALUE NEGATION-FLAG (STANDARD-OPTION
NIL))

     calls: FORMAT-EXPECTATIONS, IS-HELP, SEND-KB

     macros expanded: $SEND, SEND

     special variables: *C-HELP-KEY*

     uses keywords: :ASK-FOR-SLOT-VALUE, :BABYLON-FORMAT,
          :BABYLON-READ, :PROMPT-FOR-VALUE, :SET

   asks the user for the value  of `<slot>`.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :ASK-FOR-SLOT-VALUES)         "BASIC;FR-CORE"

     parameters: (&OPTIONAL LIST)

     macros expanded: $SEND, SEND

     instance variables: SLOTS

     uses keywords: :ASK

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :BETWEEN-REL)                 "BASIC;FR-CORE"

     parameters: (FACET-VALUE INTERVAL)

     calls: IS-IN-INTERVAL, IS-INTERVAL-SPECIFICATION

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :CHECK-YOUR-SELF)             "BASIC;FR-CORE"

     parameters: ()

   dummy method called on initialization.
intended to be specialized by the user.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :DELETE-PROPERTY)             "BASIC;FR-CORE"

     parameters: (A-SLOT-NAME PROP-NAME)

     calls: ERROR, GETHASH, MAKE-CONDITION, SYS:MEMBER-EQL,
          REMPROP, SIGNAL

     macros expanded: ASSERT, BABERROR, CASE, GET-SLOT-PLIST,
          GETENTRY, IS-VALUE, LOCF, REMF, SIGNAL-PROCEED-CASE,
          SYMBOL-VALUE-IN-$INSTANCE, SYMEVAL-IN-INSTANCE

     instance variables: OBJECT-NAME, SLOTS

     special variables: *LANGUAGE*, SELF

     uses keywords: :FORMAT-ARGS, :FORMAT-STRING, :PLACES,
          :PROCEED-TYPES, :VALUE

   deletes a property of a slot. :value property can't be deleted.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :GET)                         "BASIC;FR-CORE"

     parameters: (SLOT-NAME &OPTIONAL (PROP-NAME :VALUE))

     calls: GET-VALUE-ONLY, MAKE-CONDITION, SYS:MEMBER-EQL,
          SIGNAL

     macros expanded: ASSERT, CASE, GET-SLOT-PLIST,
          SIGNAL-PROCEED-CASE, SYMBOL-VALUE-IN-$INSTANCE,
          SYMEVAL-IN-INSTANCE

     instance variables: OBJECT-NAME, SLOTS

     special variables: SELF

     uses keywords: :FORMAT-ARGS, :FORMAT-STRING, :PLACES,
          :PROCEED-TYPES, :VALUE

   access method to a property of a slot. intended to be specialized.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :GET-PROPERTIES)              "BASIC;FR-CORE"

     parameters: (SLOT-NAME)

     calls: MAKE-CONDITION, SYS:MEMBER-EQL, NREVERSE, SIGNAL

     macros expanded: ASSERT, CASE, GET-SLOT-PLIST,
          SIGNAL-PROCEED-CASE, SYMBOL-VALUE-IN-$INSTANCE,
          SYMEVAL-IN-INSTANCE

     instance variables: OBJECT-NAME, SLOTS

     special variables: SELF

     uses keywords: :FORMAT-ARGS, :FORMAT-STRING, :PLACES,
          :PROCEED-TYPES, :VALUE

   provides all properties of a slot.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :GET-VALUE-ONLY)              "BASIC;FR-CORE"

     parameters: (SLOT-NAME &OPTIONAL (PROP-NAME :VALUE))

     calls: GET-VALUE-ONLY, MAKE-CONDITION, SYS:MEMBER-EQL,
          SIGNAL

     macros expanded: ASSERT, CASE, GET-SLOT-PLIST,
          SIGNAL-PROCEED-CASE, SYMBOL-VALUE-IN-$INSTANCE,
          SYMEVAL-IN-INSTANCE

     instance variables: OBJECT-NAME, SLOTS

     special variables: SELF

     uses keywords: :FORMAT-ARGS, :FORMAT-STRING, :PLACES,
          :PROCEED-TYPES, :VALUE

   basic access method to a property of a slot.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :INIT-ALL-SLOTS)              "BASIC;FR-CORE"

     parameters: (SLOT-SPECIFICATIONS &OPTIONAL (CHECK NIL))

     macros expanded: $SEND, SEND

     uses keywords: :INIT-ALL-SLOTS, :INIT-SLOT

   initializes all user defined slots using slot-specifications.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :INIT-SLOT)                   "BASIC;FR-CORE"

     parameters: (SLOT-NAME SLOT-SPEZIFICATION CHECK)

     calls: NORMALIZE-PLIST

     macros expanded: $SEND, SEND

     uses keywords: :SET

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :INITIALIZE)                  "BASIC;FR-CORE"

     parameters: (WITH-SPECIFICATION)

   dummy method. to be used as basic method for user defined daemons.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :INTERNAL-PROPERTIES)         "BASIC;FR-CORE"

     parameters: ()

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :IS-REL)                      "BASIC;FR-CORE"

     parameters: (FACET-VALUE EXPR-VALUE)

     calls: IS-MULTIPLE-ANSWER, SYS:MEMBER-EQL

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :ONE-OF-REL)                  "BASIC;FR-CORE"

     parameters: (FACET-VALUE EXPR-VALUE)

     calls: SOME

     macros expanded: $SEND, SEND

     uses keywords: :=-REL

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :PROMPT-FOR-VALUE)            "BASIC;FR-CORE"

     parameters: (SLOT)

     calls: EVAL, GETHASH, SEND-KB, SUBSTITUTE-O-AND-S

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: OBJECT-NAME

     special variables: *LANGUAGE*

     uses keywords: :ASK, :BABYLON-FORMAT, :GET

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :PUT)                         "BASIC;FR-CORE"

     parameters: (SLOT-NAME VALUE &OPTIONAL (PROP-NAME :VALUE))

     calls: MAKE-CONDITION, SYS:MEMBER-EQL, SET-VALUE-ONLY,
          SIGNAL

     macros expanded: ASSERT, CASE, GET-SLOT-PLIST,
          SIGNAL-PROCEED-CASE, SYMBOL-VALUE-IN-$INSTANCE,
          SYMEVAL-IN-INSTANCE

     instance variables: OBJECT-NAME, SLOTS

     special variables: SELF

     uses keywords: :FORMAT-ARGS, :FORMAT-STRING, :PLACES,
          :PROCEED-TYPES, :VALUE

   modification method for a property of a slot. intended to be
specialized.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :RECALL)                      "BASIC;FR-CORE"

     parameters: (SLOT-NAME RELATION EXPR &OPTIONAL (PROP-NAME
:VALUE))

     calls: COMPUTE-LIST-EXPR, INTERNAL-RELATION-NAME,
          IS-EQUALITY-RELATION, IS-UNDETERMINED

     macros expanded: $SEND, SEND

     special variables: SELF

     uses keywords: :GET, :VALUE

   compares a property of a slot with the specified expr using
relation.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :REMEMBER)                    "BASIC;FR-CORE"

     parameters: (SLOT-NAME RELATION EXPR &OPTIONAL (PROP-NAME
:VALUE))

     calls: COMPUTE-LIST-EXPR, INTERNAL-RELATION-NAME,
          IS-UNDETERMINED

     macros expanded: $SEND, SEND

     special variables: SELF

     uses keywords: :GET, :PUT, :VALUE

   sets a property of a slot to the specified expr.
returns nil, if the specified expr is identical to the old value.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :REPLACE)                     "BASIC;FR-CORE"

     parameters: (SLOT-NAME VALUE &OPTIONAL (PROP-NAME :VALUE))

     calls: MAKE-CONDITION, SYS:MEMBER-EQL, SET-VALUE-ONLY,
          SIGNAL

     macros expanded: ASSERT, CASE, GET-SLOT-PLIST,
          SIGNAL-PROCEED-CASE, SYMBOL-VALUE-IN-$INSTANCE,
          SYMEVAL-IN-INSTANCE

     instance variables: OBJECT-NAME, SLOTS

     special variables: SELF

     uses keywords: :FORMAT-ARGS, :FORMAT-STRING, :PLACES,
          :PROCEED-TYPES, :VALUE

   basic modification method for a property of a slot.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :RESET-SLOTS)                 "BASIC;FR-CORE"

     parameters: (&OPTIONAL (PROP-NAME :VALUE))

     calls: MAKE-CONDITION, SYS:MEMBER-EQL, SET-VALUE-ONLY,
          SIGNAL

     macros expanded: ASSERT, CASE, DO-NAMED, GET-SLOT-PLIST,
          INHIBIT-STYLE-WARNINGS, SIGNAL-PROCEED-CASE,
          SYMBOL-VALUE-IN-$INSTANCE, SYMEVAL-IN-INSTANCE

     instance variables: OBJECT-NAME, SLOTS

     special variables: SELF

     uses keywords: :FORMAT-ARGS, :FORMAT-STRING, :PLACES,
          :PROCEED-TYPES, :VALUE

   sets all user defined slots to undetermined.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :SET)                         "BASIC;FR-CORE"

     parameters: (SLOT-NAME VALUE &OPTIONAL (PROP-NAME :VALUE))

     calls: MAKE-CONDITION, SYS:MEMBER-EQL, SET-VALUE-ONLY,
          SIGNAL

     macros expanded: ASSERT, CASE, GET-SLOT-PLIST,
          SIGNAL-PROCEED-CASE, SYMBOL-VALUE-IN-$INSTANCE,
          SYMEVAL-IN-INSTANCE

     instance variables: OBJECT-NAME, SLOTS

     special variables: SELF

     uses keywords: :FORMAT-ARGS, :FORMAT-STRING, :PLACES,
          :PROCEED-TYPES, :VALUE

   modification method for a property of a slot. intended to be
specialized.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :SET-VALUE-ONLY)              "BASIC;FR-CORE"

     parameters: (SLOT-NAME VALUE &OPTIONAL (PROP-NAME :VALUE))

     calls: MAKE-CONDITION, SYS:MEMBER-EQL, SET-VALUE-ONLY,
          SIGNAL

     macros expanded: ASSERT, CASE, GET-SLOT-PLIST,
          SIGNAL-PROCEED-CASE, SYMBOL-VALUE-IN-$INSTANCE,
          SYMEVAL-IN-INSTANCE

     instance variables: OBJECT-NAME, SLOTS

     special variables: SELF

     uses keywords: :FORMAT-ARGS, :FORMAT-STRING, :PLACES,
          :PROCEED-TYPES, :VALUE

   basic modification method for a property of a slot.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :SLOT-MESSAGE)                "BASIC;FR-CORE"

     parameters: (SLOT-NAME &REST ARGS)

     calls: ERROR, EVERY, GETHASH, KEYWORDP

     macros expanded: $SEND, BABERROR, CHECK-FOR-EQUAL-RELATION,
          GETENTRY, IS-FACET, IS-PATH, KEYWORDP, NORMALIZE-ARGS,
          SEND

     special variables: *KEYWORD-PACKAGE*, *LANGUAGE*

     uses keywords: :GET, :RECALL, :REMEMBER, :STORE, :VALUE

   generic method to get or set a property of a slot.

```bnf
args := {<facet>} <relation> <expr> {<mode>}
```

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :STORE)                       "BASIC;FR-CORE"

     parameters: (SLOT-NAME EXPR &OPTIONAL (PROP-NAME :VALUE))

     calls: COMPUTE-LIST-EXPR

     macros expanded: $SEND, SEND

     special variables: SELF

     uses keywords: :PUT, :VALUE

   sets a property of a slot to the specified expr.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :TYPE)                        "BASIC;FR-CORE"

     parameters: (&OPTIONAL A-FRAME-NAME)

     calls: %GET-FRAME-NAME, GET-FRAME-NAME-WITH-CHECK, TYPE-OF,
          TYPEP

     macros expanded: FLAVOR-TYPE-OF, FLAVOR-TYPEP

     special variables: SELF

   provides the type of the receiver or checks whether the receiver
is of specified type.

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :UNPARSE-INSTANCE)            "BASIC;FR-CORE"

     parameters: (&OPTIONAL SLOT-LIST (ALL-PROPERTIES T)
          INTERNAL-PROPERTIES)

     calls: %GET-FRAME-NAME, TYPE-OF

     macros expanded: $SEND, DO-NAMED, FLAVOR-TYPE-OF,
          INHIBIT-STYLE-WARNINGS, SEND

     instance variables: OBJECT-NAME, SLOTS

     special variables: SELF

     uses keywords: :INTERNAL-PROPERTIES, :UNPARSE-SLOT

-------------------------------------------------------------------

  (:METHOD FRAME-CORE :UNPARSE-SLOT)                "BASIC;FR-CORE"

     parameters: (SLOT-NAME
          &OPTIONAL (ALL-PROPERTIES T) INTERNAL-PROPERTIES)

     calls: SYS:*APPEND, MAKE-CONDITION, SYS:MEMBER-EQL,
          REVERSE, SIGNAL

     macros expanded: $SEND, ASSERT, CASE, GET-SLOT-PLIST, SEND,
          SIGNAL-PROCEED-CASE, SYMBOL-VALUE-IN-$INSTANCE,
          SYMEVAL-IN-INSTANCE

     instance variables: OBJECT-NAME, SLOTS

     special variables: SELF

     uses keywords: :FORMAT-ARGS, :FORMAT-STRING, :GET-VALUE-ONLY,
          :INTERNAL-PROPERTIES, :PLACES, :PROCEED-TYPES, :VALUE

-------------------------------------------------------------------

  FRAME-DEFINITION              macro               "BASIC;FRAMES"

     parameters: (FRAME-INTERNAL-NAME)

     expanded in: %GET-FRAME-NAME, %IS-FRAME, %IS-FRAME-NAME,
          GET-FRAME-DEF, IS-FRAME

     used as a constant by: (:METHOD FRAME-BASE :NEW-FRAME-FORM)

-------------------------------------------------------------------

  FRAME-INSTANCES               macro               "BASIC;FRAMES"

     parameters: (FRAME-INTERNAL-NAME)

     expanded in: ADD-INSTANCE-TO-FRAME

-------------------------------------------------------------------

  (:METHOD FRAME-INTERPRETER :ASK)                  "BASIC;BF-INTER"

     parameters: (FRAME-REFERENCE &OPTIONAL (NEGATION-FLAG NIL))

     calls: GET-INSTANCE-NAME

     macros expanded: $SEND, GET-INSTANCE, SEND

     uses keywords: :ASK, :ASK-FOR-SLOT-VALUES, :INSTANCE

   asks the user for the value (of a property) of a slot of an
instance.

-------------------------------------------------------------------

  (:METHOD FRAME-INTERPRETER :DELETE-PROPERTY)      "BASIC;BF-INTER"

     parameters: (INSTANCE-NAME SLOT-NAME PROP-NAME)

     calls: GET-INSTANCE-NAME

     macros expanded: $SEND, GET-INSTANCE, SEND

     uses keywords: :DELETE-PROPERTY, :INSTANCE

   deletes a property of a slot of an instance.

-------------------------------------------------------------------

  (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE)       "BASIC;BF-INTER"

     parameters: (FRAME-REFERENCE &OPTIONAL (MODE :RECALL))

     calls: SYS:*APPEND, ERROR, EVAL, EVERY, GET-INSTANCE-NAME,
          GETHASH, INTERNAL-RELATION-NAME, KEYWORDP

     macros expanded: $SEND, BABERROR, CASE, GET-INSTANCE, GETENTRY,
          IS-FACET, IS-PATH, IS-USER-DEFINED-METHOD, KEYWORDP,
          LEXPR-$SEND, LEXPR-SEND, NORMALIZE-ARGS, SEND,
          SYS::XR-BQ-APPEND

     special variables: *KEYWORD-PACKAGE*, *LANGUAGE*

     uses keywords: :GET, :INSTANCE, :RECALL, :REMEMBER, :STORE,
          :VALUE

   generic method to get or set a property of a slot of an instance.

-------------------------------------------------------------------

  (:METHOD FRAME-INTERPRETER :GET)                  "BASIC;BF-INTER"

     parameters: (INSTANCE-NAME SLOT-NAME &OPTIONAL (PROP-NAME
:VALUE))

     calls: GET-INSTANCE-NAME

     macros expanded: $SEND, GET-INSTANCE, SEND

     uses keywords: :GET, :INSTANCE, :VALUE

   access method for a property of a slot of an instance.

-------------------------------------------------------------------

  (:METHOD FRAME-INTERPRETER :GET-VALUE-ONLY)       "BASIC;BF-INTER"

     parameters: (INSTANCE-NAME SLOT-NAME &OPTIONAL (PROP-NAME
:VALUE))

     calls: GET-INSTANCE-NAME

     macros expanded: $SEND, GET-INSTANCE, SEND

     uses keywords: :GET-VALUE-ONLY, :INSTANCE, :VALUE

   basic access method for a property of a slot of an instance.

-------------------------------------------------------------------

  (:METHOD FRAME-INTERPRETER :PUT)                  "BASIC;BF-INTER"

     parameters: (INSTANCE-NAME SLOT-NAME VALUE &OPTIONAL
          (PROP-NAME :VALUE))

     calls: GET-INSTANCE-NAME

     macros expanded: $SEND, GET-INSTANCE, SEND

     uses keywords: :INSTANCE, :PUT, :VALUE

   modification method for a property of a slot of an instance.

-------------------------------------------------------------------

  (:METHOD FRAME-INTERPRETER :REPLACE)              "BASIC;BF-INTER"

     parameters: (INSTANCE-NAME SLOT-NAME VALUE &OPTIONAL
          (PROP-NAME :VALUE))

     calls: GET-INSTANCE-NAME

     macros expanded: $SEND, GET-INSTANCE, SEND

     uses keywords: :INSTANCE, :REPLACE, :VALUE

   basic modification method for a property of a slot of an instance.

-------------------------------------------------------------------

  (:METHOD FRAME-INTERPRETER :SET)                  "BASIC;BF-INTER"

     parameters: (INSTANCE-NAME SLOT-NAME VALUE &OPTIONAL
          (PROP-NAME :VALUE))

     calls: GET-INSTANCE-NAME

     macros expanded: $SEND, GET-INSTANCE, SEND

     uses keywords: :INSTANCE, :SET, :VALUE

   modification method for a property of a slot of an instance.

-------------------------------------------------------------------

  (:METHOD FRAME-INTERPRETER :TYPE)                 "BASIC;BF-INTER"

     parameters: (INSTANCE-NAME &OPTIONAL A-FRAME-NAME)

     calls: GET-INSTANCE-NAME

     macros expanded: $SEND, GET-INSTANCE, SEND

     uses keywords: :INSTANCE, :TYPE

   provides the type of an instance or checks whether the instance is
of specified type.

-------------------------------------------------------------------

  FRAME-OPTIONS                 macro               "BASIC;FRAMES"

     parameters: (FRAME-BODY)

     expanded in: CHECK-FRAME-DEFINITION,
          (:METHOD FRAME-BASE :NEW-FRAME-FORM)

-------------------------------------------------------------------

  FRAME-SLOTS                   macro               "BASIC;FRAMES"

     parameters: (FRAME-BODY)

     expanded in: CHECK-FRAME-DEFINITION,
          (:METHOD FRAME-BASE :NEW-FRAME-FORM), GET-FRAME-SLOTS

-------------------------------------------------------------------

  FRAME-SUBCLASSES              macro               "BASIC;FRAMES"

     parameters: (FRAME-INTERNAL-NAME)

     expanded in: ADD-SUBFRAME, GET-SUBFRAMES

-------------------------------------------------------------------

  FRAME-SUPERS                  macro               "BASIC;FRAMES"

     parameters: (FRAME-BODY)

     expanded in: CHECK-FRAME-DEFINITION,
          (:METHOD FRAME-BASE :NEW-FRAME-FORM), GET-SUPERS

-------------------------------------------------------------------

  FRAME-TYPE                    macro               "BASIC;BF-MIXIN"

     parameters: (REQUEST)

-------------------------------------------------------------------

  (:METHOD FREE-TEXT-MIXIN :AFTER :INIT)            "FREETEXT;FT-
MIXIN"

     parameters: (&REST PLIST)

     macros expanded: $SEND, SEND

     instance variables: FREE-TEXT-PROCESSOR, PROCS

     uses keywords: :GENERATE-FREE-TEXT-PROCESSOR

-------------------------------------------------------------------

  (:METHOD FREE-TEXT-MIXIN :ASK-USER)               "FREETEXT;FT-
MIXIN"

     parameters: (FACT MODE &OPTIONAL (NEGATION-FLAG NIL))

     calls: GETHASH

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: ACTIVE-PROC, FREE-TEXT-PROCESSOR,
          SYSTEM-TRACE

     special variables: *LANGUAGE*

     uses keywords: :ASK-USER, :FORMAT, :HELP,
          :SEND-SYSTEM-TRACE-WINDOW

-------------------------------------------------------------------

  (:METHOD FREE-TEXT-MIXIN :ASK-USER-FOR-PROLOG)    "FREETEXT;FT-
MIXIN"

     parameters: (FACT MODE)

     macros expanded: $SEND, CASE, SEND

     instance variables: FREE-TEXT-PROCESSOR

     uses keywords: :ASK-USER, :HELP, :PROLOG-WHY

-------------------------------------------------------------------

  (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT)         "FREETEXT;FT-
MIXIN"

     parameters: (FACT MODE)

     calls: GETHASH

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: ACTIVE-PROC, FREE-TEXT-PROCESSOR,
          SYSTEM-TRACE

     special variables: *LANGUAGE*

     uses keywords: :FORMAT, :RECALL, :RECALL-IMMEDIATE, :REMEMBER,
          :SEND-SYSTEM-TRACE-WINDOW, :STORE

-------------------------------------------------------------------

  (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT-FOR-PROLOG)
                                                    "FREETEXT;FT-
MIXIN"

     parameters: (REQUEST MODE)

     calls: CONTAINS-VARS, GETHASH, IS-FREE-TEXT-META-PREDICATE,
          IS-UNDETERMINED, TRANSLATE-FREE-TEXTS-INTO-PROLOG-FACTS

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: ACTIVE-PROC, FREE-TEXT-PROCESSOR,
          SYSTEM-TRACE

     special variables: *LANGUAGE*

     uses keywords: :ASK-USER-FOR-PROLOG,
          :EVAL-FREE-TEXT-META-PREDICATE, :FORMAT,
          :GET-TRUE-FACTS-FOR, :RECALL, :SEND-SYSTEM-TRACE-WINDOW

-------------------------------------------------------------------

  (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT-META-PREDICATE)
                                                    "FREETEXT;FT-
MIXIN"

     parameters: (REQUEST MODE)

     calls: SYS:*APPEND, CONTAINS-VARS, IS-VARIABLE,
          SYS:MEMBER-EQUAL, NREVERSE

     macros expanded: $SEND, CASE, SEND

     instance variables: FREE-TEXT-PROCESSOR

     uses keywords: :FALSE-FACTS, :TRUE-FACTS

-------------------------------------------------------------------

  (:METHOD FREE-TEXT-MIXIN :GENERATE-FREE-TEXT-PROCESSOR)
                                                    "FREETEXT;FT-
MIXIN"

     parameters: ()

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: FREE-TEXT-PROCESSOR

     special variables: SELF

     uses keywords: :META-PROCESSOR

-------------------------------------------------------------------

  (:METHOD FREE-TEXT-PROCESSOR :ADD)                "FREETEXT;FT-
PROC"

     parameters: (FACT MODE)

     macros expanded: CASE

     instance variables: FALSE-FACTS, TRUE-FACTS

   Store fact as true or false

-------------------------------------------------------------------

  (:METHOD FREE-TEXT-PROCESSOR :ASK-USER)           "FREETEXT;FT-
PROC"

     parameters: (FACT &OPTIONAL (NEGATION-FLAG NIL))

     calls: FORMAT-TRANSLATE-TRUE-OR-FALSE, GETHASH,
          NORMALIZE-ANSWER, TRANSLATE-ANSWER

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *HELP-KEY*, *LANGUAGE*

     uses keywords: :ADD, :BABYLON-FORMAT, :BABYLON-READ,
          :CHOOSE-FROM-MENU

-------------------------------------------------------------------

  (:METHOD FREE-TEXT-PROCESSOR :ASK-USER-WITHOUT-ADDING)
                                                    "FREETEXT;FT-
PROC"

     parameters: (FACT)

     calls: FORMAT-TRANSLATE-TRUE-OR-FALSE, GETHASH,
          NORMALIZE-ANSWER, TRANSLATE-ANSWER

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *HELP-KEY*, *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :BABYLON-READ,
          :CHOOSE-FROM-MENU

-------------------------------------------------------------------

  (:METHOD FREE-TEXT-PROCESSOR :GET-TRUE-FACTS-FOR)  "FREETEXT;FT-
PROC"

     parameters: (PREDICATE &OPTIONAL
          (TEST
          #'(LAMBDA (ATOM LIST) (AND (CONSP LIST) (EQ ATOM (FIRST
LIST))))))

     calls: NREVERSE

     instance variables: TRUE-FACTS

   Yields a list of all non atomic true facts whose first element
equals predicate.

-------------------------------------------------------------------

  (:METHOD FREE-TEXT-PROCESSOR :RECALL)             "FREETEXT;FT-
PROC"

     parameters: (FACT)

     calls: IS-NEGATED-TERM, SYS:MEMBER-EQUAL

     instance variables: FALSE-FACTS, TRUE-FACTS

   Recall the status of a (negated) fact.

-------------------------------------------------------------------

  (:METHOD FREE-TEXT-PROCESSOR :REMEMBER)           "FREETEXT;FT-
PROC"

     parameters: (FACT)

     calls: SYS:MEMBER-EQUAL

     instance variables: TRUE-FACTS

   Remember the status of a fact.
Returns nil if already known, fact otherwise.

-------------------------------------------------------------------

  (:METHOD FREE-TEXT-PROCESSOR :RESET-PROC)         "FREETEXT;FT-
PROC"

     parameters: ()

     instance variables: FALSE-FACTS, TRUE-FACTS

   Reset free text data base to initial state.

-------------------------------------------------------------------

  (:METHOD FREE-TEXT-PROCESSOR :STORE)              "FREETEXT;FT-
PROC"

     parameters: (FACT)

     calls: SYS:MEMBER-EQUAL

     instance variables: TRUE-FACTS

   Store the status of a fact.
Returns the fact in any case.

-------------------------------------------------------------------

  FREE-TEXT-TYPE                macro               "FREETEXT;FT-
MIXIN"

     parameters: (REQUEST)

-------------------------------------------------------------------

  FREEZE-VAR-INFO-VALUES                            "BASIC;CSTRNET"

     parameters: (INFO-ASSOC)

     called by: (:METHOD CONSTRAINT-NET :FREEZE-STATE)

     macros expanded: GET-VAR-INFO

-------------------------------------------------------------------

  FROM-LIST-TO-STRING                               "COMMON;C-FNS"

     parameters: (LIST)

     called by: MAKE-FACTS-CHOICE, MAKE-REC-CLAUSE-ITEMS,
          MAKE-TERM-ITEM, (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-WHY-NOT-TREE),
          (:METHOD RULE-TRACE-MIXIN :NEEDED-TO-SHOW)

     calls: COPY-SEQ, FORMAT::GET-FORMAT-STRING, PRIN1,
          FORMAT::RETURN-FORMAT-STRING

     special variables: *PRINT-PRETTY*, *STANDARD-OUTPUT*,
          FORMAT::FORMAT-STRING

-------------------------------------------------------------------

  FURTHER-SLOT-RESTRICTION-P                        "NORMAL;RSTREVAL"

     parameters: (SLOT-REF NET-SPEC)

     called by: MAKE-VALUE-ASS-OF-POSTED-SLOTS

     calls: SYS:ASSOC-EQUAL, GET-VALUE-OF-REFERENCED-SLOT,
          GET-VAR-INFO-VALUES, SLOT-VALUE-TO-VALUE-SPEC,
          UNDETERMINED-SLOT-VALUE-P

   	liefert T, falls der Slotwert im Vergleich zum Wert im
  	Constraint-Netz eine neue Restriction darstellt, also falls
gilt

  	{ sv( slot) } -= cv( slot) und
  	sv( slot) -= undetermined

-------------------------------------------------------------------

  GEN-CHOOSE-AXIOMS-ITEM-LIST                       "BASIC;BP-MIXIN"

     parameters: (AXIOM-SETS CURRENT-AXSETS)

     called by: (:METHOD BASIC-PROLOG-MIXIN :SELECT-LOAD-AXIOMS)

     calls: SYS:*APPEND, GEN-MULT-AXSET-ITEM-LIST,
          GENERATE-CURRENT-ITEM-LIST

-------------------------------------------------------------------

  GEN-MULT-AXSET-ITEM-LIST                          "BASIC;BP-MIXIN"

     parameters: (AXIOM-SETS)

     called by: GEN-CHOOSE-AXIOMS-ITEM-LIST

     calls: COPY-SEQ, FORMAT::GET-FORMAT-STRING, PRIN1,
          FORMAT::RETURN-FORMAT-STRING, WRITE-CHAR

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

-------------------------------------------------------------------

  GEN-MULT-CHOOSE-ITEM-LIST                         "NORMAL;NR-DEVEL"

     parameters: (EXPR-LIST)

     called by: (:METHOD RULE-DEVELOP-MIXIN :INSPECT-TERMS)

     calls: COPY-SEQ, FORMAT::GET-FORMAT-STRING, PRINC,
          FORMAT::RETURN-FORMAT-STRING

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

-------------------------------------------------------------------

  GEN-VAR-VALUE-LIST                                "BASIC;AX-SC"

     parameters: (VARCELLS TYPE)

     called by: (:METHOD BASIC-PROLOG-MIXIN :SHOW-VARS),
          (:METHOD PROC-SC-MIXIN :RETURN-VARS)

     calls: SYS:REMOVE-IF*, SUBST-PROLOG-VARS, VALUE-IS-VAR

     macros expanded: CASE, DO-NAMED, INHIBIT-STYLE-WARNINGS

-------------------------------------------------------------------

  GEN-VARCELL                   macro               "BASIC;AX-SC"

     parameters: (VAR)

     expanded in: TRANS-CLAUSE1

     uses keywords: :VARNAME

   generates a varcell for var using *maxvar* as internal number.

-------------------------------------------------------------------

  GENERATE-CURRENT-ITEM-LIST                        "BASIC;BP-MIXIN"

     parameters: (CURRENT)

     called by: GEN-CHOOSE-AXIOMS-ITEM-LIST

     calls: COPY-SEQ, FORMAT::GET-FORMAT-STRING, PRIN1,
          FORMAT::RETURN-FORMAT-STRING, WRITE-STRING

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

-------------------------------------------------------------------

  GENERATE-HOW-MENU-ITEMS                           "NORMAL;NR-EXPL"

     parameters: (TRUE-FACTS ALL-FACTS UNPROVABLE-FACTS)

     called by: (:METHOD RULE-EXPLAIN-MIXIN :ASK-FOR-HOW)

     calls: APPEND, GETHASH

     macros expanded: GETENTRY, SYS::XR-BQ-APPEND

     special variables: *LANGUAGE*

     uses keywords: :DOCUMENTATION, :VALUE

-------------------------------------------------------------------

  GENERIC-EXPR-P                                    "NORMAL;RSTRBASE"

     parameters: (RESTRICTION)

     called by: GET-SLOT-REFS, INST-RESTRICTION, INSTANTIATE-SLOTS

     uses keywords: :FOR-ALL

-------------------------------------------------------------------

  GET-ACTION-TYPE               macro               "BASIC;RULES"

     parameters: (RIGHT-HAND-SIDE)

     expanded in: (:METHOD BASIC-RULE-MIXIN :LIST-RULE),
          CHECK-RULE-SYNTAX,
          (:METHOD MINI-RULE-MIXIN :DISPLAY-TRACE-ELEMENT),
          (:METHOD RULE-DEVELOP-MIXIN :MAKE-RULE-ITEMS),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-ACTION),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-PREMISE),
          (:METHOD RULE-EXPLAIN-MIXIN :TRANSLATE-STATUS-INTO-STRING),
          (:METHOD RULE-INTERPRETER :TRY-RULE),
          (:METHOD RULE-TRACE-MIXIN :NEEDED-TO-SHOW)

     used as a constant by: USETHEN

-------------------------------------------------------------------

  GET-ALL-INSTANCES                                 "BASIC;FRAMES"

     parameters: (FRAME-NAME)

     called by:
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-CLASS-REFERENCE),
          DETERMINE-SET-OF-INSTANCES,
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF-READ-METHOD)

     calls: SYS:*APPEND, GET-ALL-SUBFRAMES, GET-INSTANCE-LIST

-------------------------------------------------------------------

  GET-ALL-SUBFRAMES                                 "BASIC;FRAMES"

     parameters: (FRAME-NAME)

     called by: GET-ALL-INSTANCES

     calls: SYS:*APPEND, GET-SUBFRAMES, SYS:MEMBER-EQL

     macros expanded: POP, PUSH

-------------------------------------------------------------------

  GET-ALL-SUPERS                                    "BASIC;FRAMES"

     parameters: (FRAME-NAME)

     called by:
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-META-PREDICATE-
REFERENCE)

     calls: SYS:*APPEND, GET-SUPERS, SYS:MEMBER-EQL

     macros expanded: POP, PUSH

-------------------------------------------------------------------

  GET-ASSOCIATED-CONSTRAINTS                        "BASIC;CSTRNET"

     parameters: (C-EXPRESSIONS NET-VAR)

     called by: CREATE-VAR-INFO-ALIST, GET-ASSOCIATED-CONSTRAINTS

     calls: GET-ASSOCIATED-CONSTRAINTS, SYS:MEMBER-EQUAL

     macros expanded: GET-PARAMETERS

-------------------------------------------------------------------

  GET-BINDINGS                                      "BASIC;RULES"

     parameters: (BINDINGS)

     called by: CHECK-BINDINGS, SUBSTITUTE-VARIABLES-IN-RULE-SET

-------------------------------------------------------------------

  GET-CHECK-RESULT                                  "MINI;POS-VALS"

     parameters: (CHECK-RESULT)

     called by: (:METHOD ACTIVE-VALUE-MIXIN :PUT),
          (:METHOD POSS-VAL-MIXIN :ANY-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :ASK-FOR-SLOT-VALUE),
          (:METHOD POSS-VAL-MIXIN :DEFAULT-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :PUT)

-------------------------------------------------------------------

  GET-CLAUSES                                       "BASIC;AXIOMS"

     parameters: (PREDICATE AXIOM-SET)

-------------------------------------------------------------------

  GET-CLAUSES-DIRECT                                "BASIC;AXIOMS"

     parameters: (GOAL AXIOM-SETS)

     called by: (:METHOD AX-DEVELOP-MIXIN :MOM-SHOW-PREMISE),
          COLLECT-CLAUSES, PRINT-PRED,
          (:METHOD PROC-SC-MIXIN :GET-CLAUSES)

     macros expanded: PRED

   gets the relevant clauses for `<goal>` from `<axiom-sets>`.

-------------------------------------------------------------------

  GET-CONDITION                 macro               "BASIC;BC-FNS"

     parameters: (REL-ELEM)

     expanded in: EVALUATE-RELATION-ELEMENT

-------------------------------------------------------------------

  GET-CONSTR-NAME               macro               "BASIC;BC-FNS"

     parameters: (C-EXPR)

     expanded in: (:METHOD CONSTRAINT-BASE :SATISFIED-P),
          (:METHOD CONSTRAINT-BASE :SATISFY),
          (:METHOD CONSTRAINT-NET :PROPAGATE), GLOBAL-TO-LOCAL,
          INST-UNINSTANTIATED-RESTRICTION, LOCAL-TO-GLOBAL

-------------------------------------------------------------------

  GET-CONSTRAINT                                    "BASIC;CSTRBASE"

     parameters: (CONSTRAINT-NAME)

     called by: (:METHOD CONSTRAINT-BASE :SATISFIED-P),
          (:METHOD CONSTRAINT-BASE :SATISFY),
          (:METHOD CONSTRAINT-NET :PROPAGATE), GLOBAL-TO-LOCAL,
          LOCAL-TO-GLOBAL

     calls: ERROR, GETHASH, SEND-CONSTRAINT-PROCESSOR

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :GET

    ermittelt das zugehoerige primitive oder
      zusammengesetzte Constraint
      liefert Fehlermeldung, falls Constraint nicht definiert ist

-------------------------------------------------------------------

  GET-CURR-METHOD               macro               "MINI;MP-PREDS"

     parameters: (GOAL)

     expanded in: (:METHOD GOALBOX-TRACE-MIXIN :PROVE-GOAL)

   provides the right proof method for goal.

-------------------------------------------------------------------

  GET-CURR-METHOD-FOR-PRED      macro               "MINI;MP-PREDS"

     parameters: (PRED)

     expanded in: (:METHOD GOALBOX-TRACE-MIXIN :PROVE-GOAL)

   provides the right proof method for pred(icate).

-------------------------------------------------------------------

  GET-DEF-CONDITION                                 "BASIC;CSTRBASE"

     parameters: (DEF-BODY)

     called by: DEFCONSTRAINT

     calls: ERROR, GETHASH

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :CONDITION

    sucht in def-body einen Ausdruck der Form
    (:condition <activation-condition>)

-------------------------------------------------------------------

  GET-DEF-EXPRESSIONS                               "BASIC;CSTRBASE"

     parameters: (DEF-BODY)

     called by: DEFCONSTRAINT

     calls: ERROR, GETHASH

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :CONSTRAINT-EXPRESSIONS

    sucht in def-body einen Ausdruck der Form
    (:constraint-expressions . list( <constraint-expression> )

-------------------------------------------------------------------

  GET-DEF-INTERFACE                                 "BASIC;CSTRBASE"

     parameters: (DEF-BODY)

     called by: DEFCONSTRAINT

     calls: ERROR, GETHASH

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :INTERFACE

    sucht in def-body einen Ausdruck der Form
   (:interface <variable-list>)

-------------------------------------------------------------------

  GET-DEF-RELATION                                  "BASIC;CSTRBASE"

     parameters: (DEF-BODY)

     called by: DEFCONSTRAINT

     calls: ERROR, GETHASH, PARSE-RELATION

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :RELATION

    sucht in def-body einen Ausdruck der Form (:relation <relation>)
    und ueberprueft die Syntax von `<relation>`

-------------------------------------------------------------------

  GET-DEF-TYP                                       "BASIC;CSTRBASE"

     parameters: (DEF-BODY)

     called by: DEFCONSTRAINT

     calls: ERROR, GETHASH

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :TYPE

    sucht in def-body einen Ausdruck der Form (:type <constraint-typ>)

   	mit  <constraint-typ> ::= primitive | compound

-------------------------------------------------------------------

  GET-EXPRESSIONS               macro               "BASIC;BC-FNS"

     parameters: (REL-ELEM)

     expanded in: EVALUATE-RELATION-ELEMENT, PARSE-REL-ELEM

-------------------------------------------------------------------

  GET-EXTERNAL-VALUE-ASS                            "BASIC;CSTRBASE"

     parameters: (EXPRESSION)

     called by: (:METHOD CONSTRAINT-BASE :SATISFIED-P),
          (:METHOD CONSTRAINT-BASE :SATISFY)

     uses keywords: :WITH

-------------------------------------------------------------------

  GET-FRAME-BEHAVIOR-SPECS                          "BASIC;FRAMES"

     parameters: (FRAME-NAME)

     called by: (:METHOD BASIC-FRAME-MIXIN :DESCRIBE-FRAME),
          (:METHOD FRAME-BASE :INSPECT-FRAME)

     calls: GET-FRAME-BEHAVIORS

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

-------------------------------------------------------------------

  GET-FRAME-BEHAVIORS                               "BASIC;FRAMES"

     parameters: (FRAME-NAME)

     called by: GET-FRAME-BEHAVIOR-SPECS

     calls: GET-FRAME-NAME-WITH-CHECK

     macros expanded: FRAME-BEHAVIORS

     uses keywords: :BEHAVIORS

-------------------------------------------------------------------

  GET-FRAME-DEF                                     "BASIC;FRAMES"

     parameters: (FRAME-NAME)

     called by:
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-META-PREDICATE-
REFERENCE),
          GET-FRAME-SLOTS, GET-SUPERS, PRINT-FRAME-DEFINITION

     calls: GET-FRAME-NAME-WITH-CHECK

     macros expanded: FRAME-DEFINITION

     uses keywords: :FRAME-DEFINITION

-------------------------------------------------------------------

  GET-FRAME-NAME                                    "BASIC;FRAMES"

     parameters: (FRAME-NAME)

     called by: ADD-TO-BEHAVIORS,
          (:METHOD FRAME-BASE :NEW-BEHAVIOR-FORM),
          (:METHOD FRAME-BASE :NEW-FRAME-FORM)

     calls: %GET-OBJECT-NAME, ERROR, GETHASH, SEND-KB

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :KB-NAME

-------------------------------------------------------------------

  GET-FRAME-NAME-OR-SIGNAL-ERROR                    "BASIC;FRAMES"

     parameters: (BEHAVIOR-SPECIFICATION)

     called by: DEFINE-POSSIBLE-VALUES-BEHAVIOR,
          DEFINE-RELATION-BEHAVIOR

     calls: %GET-OBJECT-NAME, %IS-FRAME, ERROR, GETHASH, SEND-KB

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :KB-NAME

-------------------------------------------------------------------

  GET-FRAME-NAME-WITH-CHECK                         "BASIC;FRAMES"

     parameters: (FRAME-NAME)

     called by: ADD-INSTANCE-TO-FRAME, ADD-SUBFRAME,
          (:METHOD FRAME-BASE :NEW-INSTANCE),
          (:METHOD FRAME-BASE :NEW-UNNAMED-INSTANCE),
          (:METHOD FRAME-CORE :TYPE), GET-FRAME-BEHAVIORS,
          GET-FRAME-DEF, GET-INSTANCE-LIST, GET-SUBFRAMES,
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF),
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF-READ-METHOD)

     calls: %GET-OBJECT-NAME, %IS-FRAME, ERROR, GETHASH, SEND-KB

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :KB-NAME

-------------------------------------------------------------------

  GET-FRAME-SLOT-NAMES                              "BASIC;FRAMES"

     parameters: (FRAME-NAME)

     calls: COMPUTE-SLOT-NAMES, GET-FRAME-SLOTS

-------------------------------------------------------------------

  GET-FRAME-SLOTS                                   "BASIC;FRAMES"

     parameters: (FRAME-NAME)

     called by: (:METHOD BASIC-FRAME-MIXIN :DESCRIBE-FRAME),
          (:METHOD FRAME-BASE :INSPECT-FRAME), GET-FRAME-SLOT-NAMES

     calls: GET-FRAME-DEF

     macros expanded: FRAME-SLOTS

-------------------------------------------------------------------

  GET-GLOBAL-VAR                macro               "BASIC;BC-FNS"

     parameters: (VAR-ASSOC)

-------------------------------------------------------------------

  GET-GUARDED-SLOTS                                 "NORMAL;RSTRBASE"

     parameters: (EXPR)

     called by: DEFRESTRICTION

     uses keywords: :GUARDED-SLOTS

-------------------------------------------------------------------

  GET-INST-ASSIGNMENT           macro               "NORMAL;RSTRBASE"

     parameters: (GENERIC-RESTRICTION)

     expanded in: GET-INSTANCE-COMBINATIONS, GET-SLOT-REFS,
          INST-SLOT-SET

-------------------------------------------------------------------

  GET-INSTANCE                  macro               "BASIC;FRAMES"

     parameters: (INSTANCE-NAME)

     expanded in: (:METHOD BASIC-FRAME-MIXIN :DESCRIBE-INSTANCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-BEHAVIOR-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-CLASS-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-META-PREDICATE-
REFERENCE),
          COMPUTE-LIST-EXPR, COPY-POSSIBLE-VALUES, COPY-SLOT-VALUE,
          (:METHOD FRAME-BASE :INSPECT-INSTANCE),
          (:METHOD FRAME-INTERPRETER :ASK),
          (:METHOD FRAME-INTERPRETER :DELETE-PROPERTY),
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE),
          (:METHOD FRAME-INTERPRETER :GET),
          (:METHOD FRAME-INTERPRETER :GET-VALUE-ONLY),
          (:METHOD FRAME-INTERPRETER :PUT),
          (:METHOD FRAME-INTERPRETER :REPLACE),
          (:METHOD FRAME-INTERPRETER :SET),
          (:METHOD FRAME-INTERPRETER :TYPE),
          GET-VALUE-OF-REFERENCED-SLOT,
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF),
          REPLACE-POSSIBLE-VALUES, REPLACE-SLOT-VALUE,
          (:METHOD RESTRICTION-NET :MAKE-ACTIVE-VALUES),
          SEND-TO-INSTANCE-OR-SELF

     used as a constant by: GET-VALUE, PUT-VALUE

-------------------------------------------------------------------

  GET-INSTANCE-COMBINATIONS                         "NORMAL;RSTRBASE"

     parameters: (RESTRICTION)

     called by: INST-GENERIC-RESTRICTION

     calls: GET-INSTANCE-CONDITION, MAKE-$INSTANCE-ALIST,
          PURGE-INSTANCE-ALIST, SELECT-INSTANCE-COMBINATIONS,
          SPLIT-VARIABLE-ALIST

     macros expanded: GET-INST-ASSIGNMENT, GET-PARAMETERS

   	liefert die Menge von Assoziationslisten,
  	fuer die die eingeschlossene restriction
  	instantiiert werden soll

-------------------------------------------------------------------

  GET-INSTANCE-CONDITION                            "NORMAL;RSTRBASE"

     parameters: (EXPR)

     called by: GET-INSTANCE-COMBINATIONS, GET-INSTANCE-CONDITION

     calls: GET-INSTANCE-CONDITION

     uses keywords: :IF

-------------------------------------------------------------------

  GET-INSTANCE-DEF                                  "BASIC;FRAMES"

     parameters: (INSTANCE-NAME)

     called by:
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-META-PREDICATE-
REFERENCE),
          (:METHOD BASIC-FRAME-PROCESSOR :RESET-PROC),
          PRINT-INSTANCE-DEF

     used as a constant by: RESET-INSTANCE

     calls: GET-INSTANCE-NAME-WITH-CHECK

     macros expanded: INSTANCE-DEFINITION

     uses keywords: :INSTANCE-DEFINITION

-------------------------------------------------------------------

  GET-INSTANCE-LIST                                 "BASIC;FRAMES"

     parameters: (FRAME-NAME)

     called by: (:METHOD BASIC-FRAME-MIXIN :DESCRIBE-FRAME),
          (:METHOD FRAME-BASE :INSPECT-FRAME), GET-ALL-INSTANCES,
          PRINT-INSTANCES

     calls: GET-FRAME-NAME-WITH-CHECK, SYS:INTERSECTION*,
          SEND-KB

     uses keywords: :INSTANCES

-------------------------------------------------------------------

  GET-INSTANCE-NAME                                 "BASIC;FRAMES"

     parameters: (INSTANCE-NAME)

     called by: (:METHOD BASIC-FRAME-MIXIN :DESCRIBE-INSTANCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-BEHAVIOR-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-CLASS-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-META-PREDICATE-
REFERENCE),
          COMPUTE-LIST-EXPR, COPY-POSSIBLE-VALUES, COPY-SLOT-VALUE,
          (:METHOD FRAME-BASE :INSPECT-INSTANCE),
          (:METHOD FRAME-INTERPRETER :ASK),
          (:METHOD FRAME-INTERPRETER :DELETE-PROPERTY),
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE),
          (:METHOD FRAME-INTERPRETER :GET),
          (:METHOD FRAME-INTERPRETER :GET-VALUE-ONLY),
          (:METHOD FRAME-INTERPRETER :PUT),
          (:METHOD FRAME-INTERPRETER :REPLACE),
          (:METHOD FRAME-INTERPRETER :SET),
          (:METHOD FRAME-INTERPRETER :TYPE),
          GET-VALUE-OF-REFERENCED-SLOT,
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF),
          REPLACE-POSSIBLE-VALUES, REPLACE-SLOT-VALUE,
          (:METHOD RESTRICTION-NET :MAKE-ACTIVE-VALUES),
          SEND-TO-INSTANCE-OR-SELF

     used as a constant by: GET-INSTANCE

     calls: %GET-OBJECT-NAME, ERROR, GETHASH, SEND-KB

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :KB-NAME

-------------------------------------------------------------------

  GET-INSTANCE-NAME-WITH-CHECK                      "BASIC;FRAMES"

     parameters: (INSTANCE-NAME)

     called by: GET-INSTANCE-DEF

     used as a constant by: $INST, GET-INSTANCE-WITH-CHECK,
          SET-INSTANCE-POINTER

     calls: %GET-OBJECT-NAME, %IS-INSTANCE, ERROR, GETHASH, SEND-KB

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :KB-NAME

-------------------------------------------------------------------

  GET-INSTANCE-OR-SELF          macro               "BASIC;FRAMES"

     parameters: (INSTANCE-NAME)

     used as a constant by: <--

-------------------------------------------------------------------

  GET-INSTANCE-WITH-CHECK       macro               "BASIC;FRAMES"

     parameters: (INSTANCE-NAME)

     used as a constant by: GET-INSTANCE-OR-SELF

-------------------------------------------------------------------

  GET-INTERFACE-MIXINS-TO-INCLUDE                   "META;KB-CORE"

     parameters: (PLIST)

     called by: KNOWLEDGE-BASE

     special variables: *DEFAULT-INTERFACE*

     uses keywords: :INTERFACE

-------------------------------------------------------------------

  GET-JUNCTOR                   macro               "BASIC;RULES"

     parameters: (LEFT-HAND-SIDE)

     expanded in: (:METHOD BASIC-RULE-MIXIN :LIST-RULE),
          CHECK-RULE-SYNTAX,
          (:METHOD RULE-DEVELOP-MIXIN :MAKE-RULE-ITEMS),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-WHY-NOT-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-ACTION),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-PREMISE),
          (:METHOD RULE-INTERPRETER :TRY-RULE)

     used as a constant by: TESTIF

-------------------------------------------------------------------

  GET-KB-CONFIGURATION                              "META;KB-CORE"

     parameters: ()

     called by: KNOWLEDGE-BASE

     special variables: *DEFAULT-KB-CONFIGURATION*

-------------------------------------------------------------------

  GET-KEYWORD                   macro               "BASIC;BC-FNS"

     parameters: (REL-ELEM)

     expanded in: EVALUATE-RELATION-ELEMENT, PARSE-REL-ELEM

-------------------------------------------------------------------

  GET-KNOWN-AXIOM-SETS                              "BASIC;AXIOMS"

     parameters: ()

     called by: (:METHOD AX-DEVELOP-MIXIN :INSPECT-AXIOMS),
          (:METHOD BASIC-PROLOG-MIXIN :LIST-AXIOMS),
          GET-KNOWN-FREE-AXIOM-SETS, RESET-AXIOM-SET

     special variables: *AXIOM-SETS*

-------------------------------------------------------------------

  GET-KNOWN-FREE-AXIOM-SETS                         "BASIC;AXIOMS"

     parameters: ()

     called by: (:METHOD BASIC-PROLOG-MIXIN :SELECT-LOAD-AXIOMS),
          KNOWN-AXIOM-SET

     calls: SYS:REMOVE-IF*

-------------------------------------------------------------------

  GET-LIST-OF-CHOICES                               "BASIC;BC-MIXIN"

     parameters: (EXPRESSION VALUE-ASS)

     called by: GET-LIST-OF-CHOICES

     calls: SYS:ASSOC-EQL, ERROR, GET-LIST-OF-CHOICES, GETHASH

     macros expanded: BABERROR, GET-VALUE-SPEC, GETENTRY

     special variables: *LANGUAGE*

    Eingabe:  eine Zuordnung von Prolog-Variablen zu
  	      lokalen Constraint-Variablen,
  	      eine Wertebelegung der lokalen Variablen

    Ausgabe:  eine Liste von Wertemengen , so dass gilt:
  	      das i-te Element ist die Wertemenge der mit dem
  	      i-ten Prolog-Term assoziierten Variable

-------------------------------------------------------------------

  GET-LOCAL-CONDITION                               "BASIC;CSTRBASE"

     parameters: (RELATION-ELEMENT)

     called by: SELECT-LOCAL-CONDITIONS

     uses keywords: :IF

-------------------------------------------------------------------

  GET-LOCAL-VAR                 macro               "BASIC;BC-FNS"

     parameters: (VAR-ASSOC)

-------------------------------------------------------------------

  GET-METHOD-FOR-PRED           macro               "BASIC;BP-PREDS"

     parameters: (PRED)

     expanded in: (:METHOD BASIC-GOALBOX :PROVE-GOAL)

   provides the right proof method for pred(icate).

-------------------------------------------------------------------

  GET-NAME-OF-C-ASSOC           macro               "BASIC;BC-FNS"

     parameters: (CONSTRAINT-ASSOC)

     expanded in:
          (:METHOD BASIC-CONSTRAINT-MIXIN :ACTIVATE-INTERACTIVE),
          (:METHOD BASIC-CONSTRAINT-MIXIN :DISPLAY),
          BUILD-CONSTRAINT-TRACE-ITEM-LIST,
          CHOOSE-SPECIAL-CONSTRAINT, PRINT-CONSTRAINT-LIST,
          UPDATE-CONSTRAINT-TRACE-MODE

-------------------------------------------------------------------

  GET-NEGATION                                      "COMMON;C-FNS"

     parameters: (TERM)

     called by: (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-WHY-NOT-TREE)

-------------------------------------------------------------------

  GET-NET-VAR                   macro               "BASIC;CSTRNET"

     parameters: (INFO-ASSOC)

     expanded in: (:METHOD CONSTRAINT-NET :CONSISTENT-P),
          (:METHOD CONSTRAINT-NET :NET-VARIABLES),
          (:METHOD CONSTRAINT-NET :STORE-STATE),
          (:METHOD RESTRICTION-NET :COPY-POSSIBLE-VALUES),
          (:METHOD RESTRICTION-NET :COPY-VALUES),
          (:METHOD RESTRICTION-NET :REPLACE-POSSIBLE-VALUES),
          (:METHOD RESTRICTION-NET :REPLACE-VALUES)

-------------------------------------------------------------------

  GET-OBJECT-OF-C-ASSOC         macro               "BASIC;BC-FNS"

     parameters: (CONSTRAINT-ASSOC)

     expanded in:
          (:METHOD BASIC-CONSTRAINT-MIXIN :ACTIVATE-INTERACTIVE),
          (:METHOD BASIC-CONSTRAINT-MIXIN :DISPLAY),
          (:METHOD BASIC-CONSTRAINT-PROCESSOR :GET),
          (:METHOD BASIC-CONSTRAINT-PROCESSOR :RESET-PROC),
          CONSTRAINT-ASSOC-TRACEDP, (:METHOD CONSTRAINT-BASE :GET),
          (:METHOD NORMAL-CONSTRAINT-PROCESSOR :AFTER :RESET-PROC),
          (:METHOD NORMAL-CONSTRAINT-PROCESSOR :GET),
          PRINT-CONSTRAINT-LIST,
          (:METHOD RESTRICTION-BASE :GET-RESTRICTIONS),
          (:METHOD RESTRICTION-BASE :REDEFINE-ALL),
          UPDATE-CONSTRAINT-TRACE-MODE

-------------------------------------------------------------------

  GET-OBJECT-OF-SLOT-REF        macro               "NORMAL;RESTRICT"

     parameters: (SLOT-REF)

     expanded in: COPY-POSSIBLE-VALUES, COPY-SLOT-VALUE,
          GET-VALUE-OF-REFERENCED-SLOT, INST-SLOT-REF,
          OCCURS-IN-RESTRICTION, REPLACE-POSSIBLE-VALUES,
          REPLACE-SLOT-VALUE,
          (:METHOD RESTRICTION-NET :MAKE-ACTIVE-VALUES)

     	liefert Instanz oder Variable der Slot-referenz

-------------------------------------------------------------------

  GET-OP-DEF                                        "BASIC;BR-INTER"

     parameters: (SYMBOL INDEX)

     called by: (:METHOD RULE-INTERPRETER :TRY-RULE)

     used as a constant by: TESTIF, USETHEN

     calls: ERROR, GETHASH

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

   Retrieves selector-names attached with operators which may appear
in rules.

-------------------------------------------------------------------

  GET-PARAMETERS                macro               "BASIC;BC-FNS"

     parameters: (C-EXPR)

     expanded in:
          (:METHOD CONSTRAINT-TRACE-MIXIN :EVALUATE-EXPRESSION),
          DETERMINE-NET-VARIABLES, GET-ASSOCIATED-CONSTRAINTS,
          GET-INSTANCE-COMBINATIONS, GLOBAL-TO-LOCAL,
          INST-UNINSTANTIATED-RESTRICTION, LOCAL-TO-GLOBAL

-------------------------------------------------------------------

  GET-POSITIVE-TERM                                 "COMMON;C-FNS"

     parameters: (NEGATED-TERM)

     called by: COMPUTE-TERM, (:METHOD DATA-BASE :RECALL),
          (:METHOD DATA-BASE :RECALL-WITHOUT-ASKING),
          (:METHOD FREE-TEXT-PROCESSOR :RECALL),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-WHY-NOT-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-PREMISE),
          (:METHOD RULE-INTERPRETER :VERIFY)

-------------------------------------------------------------------

  GET-POSS-VAL-ARGS                                 "MINI;POS-VALS"

     parameters: (POSSIBLE-VALUES)

     called by: (:METHOD ACTIVE-VALUE-MIXIN :CHECK-INIT-VALUE),
          (:METHOD POSS-VAL-MIXIN :ANY-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :CHECK-CORRECT-VALUE),
          (:METHOD POSS-VAL-MIXIN :CHECK-INIT-VALUE),
          (:METHOD POSS-VAL-MIXIN :CHECK-VALUE),
          (:METHOD POSS-VAL-MIXIN :DEFAULT-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :NOT),
          (:METHOD POSS-VAL-MIXIN :ONE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :SOME-OF-READ-METHOD),
          (:INTERNAL (:METHOD POSS-VAL-MIXIN :OR) 0),
          (:INTERNAL (:METHOD POSS-VAL-MIXIN :AND) 0)

-------------------------------------------------------------------

  GET-POSS-VAL-TYPE                                 "MINI;POS-VALS"

     parameters: (POSSIBLE-VALUES)

     called by: (:METHOD ACTIVE-VALUE-MIXIN :CHECK-INIT-VALUE),
          (:INTERNAL (:METHOD POSS-VAL-MIXIN :AND) 0),
          (:METHOD POSS-VAL-MIXIN :ANY-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :CHECK-CORRECT-VALUE),
          (:METHOD POSS-VAL-MIXIN :CHECK-INIT-VALUE),
          (:METHOD POSS-VAL-MIXIN :CHECK-VALUE),
          (:METHOD POSS-VAL-MIXIN :DEFAULT-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :GET-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :NOT),
          (:INTERNAL (:METHOD POSS-VAL-MIXIN :OR) 0)

-------------------------------------------------------------------

  GET-PREDICATES                                    "BASIC;AXIOMS"

     parameters: (AXSET-NAME)

     called by: (:METHOD BASIC-PROLOG-MIXIN :LIST-AXSET),
          (:METHOD BASIC-PROLOG-MIXIN :SELECT-LIST-PREDICATE),
          (:METHOD MINI-PROLOG-MIXIN :SELECT-FOR-TRACE),
          (:METHOD MINI-PROLOG-MIXIN :SELECT-PREDS-FOR-TRACING),
          (:METHOD PROLOG-TRACE-MIXIN :GET-PREDS-WITH-MARK)

     macros expanded: GET-PREDS

-------------------------------------------------------------------

  GET-PREDS                     macro               "BASIC;AXIOMS"

     parameters: (AXIOM-SET)

     expanded in: (:METHOD AX-DEVELOP-MIXIN :INSPECT-AXIOMS),
          (:METHOD BASIC-GOALBOX :PROVE-ABOLISH), GET-PREDICATES,
          PRINT-AXIOM-SET, PROLOG-ASSERT, REM-CLAUSE,
          REMOVE-ALL-CLAUSES

     used as a constant by: REM-PRED

   gets the list of predicates of `<axiom-set>`.

-------------------------------------------------------------------

  GET-PROC-MIXINS-TO-INCLUDE                        "META;KB-CORE"

     parameters: (PLIST)

     called by: KNOWLEDGE-BASE

     special variables: *DEFAULT-PROCS*

     uses keywords: :PROCS

-------------------------------------------------------------------

  GET-PROTECTED-SLOTS                               "NORMAL;RSTRBASE"

     parameters: (EXPR)

     called by: DEFRESTRICTION

     uses keywords: :PROTECTED-SLOTS

-------------------------------------------------------------------

  GET-PROVE-METHOD              macro               "BASIC;BP-PREDS"

     parameters: (GOAL)

     expanded in: (:METHOD BASIC-GOALBOX :PROVE-GOAL)

   provides the right proof method for goal.

-------------------------------------------------------------------

  GET-RESTRICTIONS                                  "NORMAL;RSTRBASE"

     parameters: (EXPR)

     called by: DEFRESTRICTION

     calls: ERROR, GETHASH

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :RESTRICTIONS

-------------------------------------------------------------------

  GET-RULE-ACTIONS              macro               "BASIC;RULES"

     parameters: (RIGHT-HAND-SIDE)

     expanded in: (:METHOD BASIC-RULE-MIXIN :LIST-RULE),
          (:METHOD RULE-BASE :FIND-MATCHING-CONCLUSIONS),
          (:METHOD RULE-BASE :INTHEN),
          (:METHOD RULE-DEVELOP-MIXIN :MAKE-RULE-ITEMS),
          (:METHOD RULE-DEVELOP-MIXIN :USED-TERMS),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-ACTION),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-PREMISE),
          (:METHOD RULE-INTERPRETER :TRY-RULE),
          (:METHOD RULE-TRACE-MIXIN :NEEDED-TO-SHOW)

     used as a constant by: USETHEN

-------------------------------------------------------------------

  GET-RULE-CONDITIONS           macro               "BASIC;RULES"

     parameters: (LEFT-HAND-SIDE)

     expanded in: (:METHOD BASIC-RULE-MIXIN :LIST-RULE),
          (:METHOD RULE-BASE :INIF),
          (:METHOD RULE-DEVELOP-MIXIN :MAKE-RULE-ITEMS),
          (:METHOD RULE-DEVELOP-MIXIN :USED-TERMS),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-WHY-NOT-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-ACTION),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-PREMISE),
          (:METHOD RULE-INTERPRETER :TRY-RULE)

     used as a constant by: TESTIF

-------------------------------------------------------------------

  GET-RULE-MARK                                     "MINI;MR-TRACE"

     parameters: (RULE-NAME RULE-SET-NAME INDICATOR)

     called by: (:METHOD RULE-TRACE-MIXIN :GET-RULES-WITH-MARK),
          (:METHOD RULE-TRACE-MIXIN :TOGGLE-RULES),
          TRACE-ELEMENT-TO-SHOW

     calls: SYS:MEMBER-EQL

-------------------------------------------------------------------

  GET-RULE-SET-VARIABLES                            "BASIC;RULES"

     parameters: (RULE-SET)

     called by: CHECK-RULE-SET-SYNTAX,
          SUBSTITUTE-VARIABLES-IN-RULE-SET

-------------------------------------------------------------------

  GET-SET-OF-INSTANCES          macro               "NORMAL;RSTRBASE"

     parameters: (INST-ASS)

     expanded in: MAKE-$INSTANCE-ALIST

-------------------------------------------------------------------

  GET-SIMPLE-VALUE              macro               "BASIC;BC-FNS"

     parameters: (SIMPLE-VALUE-ASSOC)

     expanded in: COMPATIBLE-VALUE-P, CONVERT-SIMPLE-TO-MULTIPLE,
          INST-SLOT-REF, SUBSTITUTE-IF-POSSIBLE

-------------------------------------------------------------------

  GET-SLOT-OF-SLOT-REF          macro               "NORMAL;RESTRICT"

     parameters: (SLOT-REF)

     expanded in: COPY-POSSIBLE-VALUES, COPY-SLOT-VALUE,
          GET-VALUE-OF-REFERENCED-SLOT, INST-SLOT-REF,
          REPLACE-POSSIBLE-VALUES, REPLACE-SLOT-VALUE,
          (:METHOD RESTRICTION-NET :MAKE-ACTIVE-VALUES)

-------------------------------------------------------------------

  GET-SLOT-OF-TERM                                  "NORMAL;NR-DEVEL"

     parameters: (TERM)

     called by: COMPUTE-USED-SLOTS

     calls: COMPUTE-TERM

-------------------------------------------------------------------

  GET-SLOT-PLIST                macro               "BASIC;FR-CORE"

     parameters: (SLOT-NAME)

     expanded in: (:METHOD ACTIVE-VALUE-MIXIN :GET),
          (:METHOD FRAME-CORE :DELETE-PROPERTY),
          (:METHOD FRAME-CORE :GET),
          (:METHOD FRAME-CORE :GET-PROPERTIES),
          (:METHOD FRAME-CORE :GET-VALUE-ONLY),
          (:METHOD FRAME-CORE :PUT), (:METHOD FRAME-CORE :REPLACE),
          (:METHOD FRAME-CORE :RESET-SLOTS),
          (:METHOD FRAME-CORE :SET),
          (:METHOD FRAME-CORE :SET-VALUE-ONLY),
          (:METHOD FRAME-CORE :UNPARSE-SLOT)

-------------------------------------------------------------------

  GET-SLOT-REFS                                     "NORMAL;RSTRBASE"

     parameters: (EXPR)

     called by: GET-SLOT-REFS, INST-SLOT-SET

     calls: ERROR, GENERIC-EXPR-P, GET-SLOT-REFS, GETHASH

     macros expanded: BABERROR, GET-INST-ASSIGNMENT, GETENTRY,
          INST-ASSIGNMENT-P, NEXT-INST-ASSIGNMENT

     special variables: *LANGUAGE*

     uses keywords: :IF

-------------------------------------------------------------------

  GET-SLOTS                                         "BASIC;FR-CORE"

     parameters: (INSTANCE)

     called by: (:METHOD FRAME-CORE :AFTER :INIT)

     calls: GET-FLAVOR-INSTANCE-SLOTS, SYS:REMOVE*

-------------------------------------------------------------------

  GET-SPECIAL-MIXINS-TO-INCLUDE                     "META;KB-CORE"

     parameters: (PLIST)

     called by: KNOWLEDGE-BASE

     uses keywords: :SPECIAL

-------------------------------------------------------------------

  GET-STRING                    macro               "COMMON;C-FNS"

     parameters: (KEY TABLE)

-------------------------------------------------------------------

  GET-SUBFRAMES                                     "BASIC;FRAMES"

     parameters: (FRAME-NAME)

     called by: GET-ALL-SUBFRAMES

     calls: GET-FRAME-NAME-WITH-CHECK

     macros expanded: FRAME-SUBCLASSES

     uses keywords: :SUBCLASSES

-------------------------------------------------------------------

  GET-SUBGOAL-PREDICATES                            "BASIC;AXIOMS"

     parameters: (CLAUSE)

     calls: IS-VARIABLE, NORMALIZE-CLAUSE, NREVERSE

     macros expanded: BODY, PRED

   yields the predicates used in the subgoals of `<clause>`.

-------------------------------------------------------------------

  GET-SUPERS                                        "BASIC;FRAMES"

     parameters: (FRAME-NAME)

     called by: (:METHOD BASIC-FRAME-MIXIN :DESCRIBE-FRAME),
          (:METHOD FRAME-BASE :INSPECT-FRAME), GET-ALL-SUPERS

     calls: GET-FRAME-DEF

     macros expanded: FRAME-SUPERS

-------------------------------------------------------------------

  GET-TRACE-CONSTR              macro               "BASIC;BC-FNS"

     parameters: (TRACE-ELEM)

-------------------------------------------------------------------

  GET-TRACE-VALUE-ASS           macro               "BASIC;BC-FNS"

     parameters: (TRACE-ELEM)

     expanded in: TRACE-TEST

-------------------------------------------------------------------

  GET-TUPEL                     macro               "BASIC;BC-FNS"

     parameters: (REL-ELEM)

     expanded in: EVALUATE-RELATION-ELEMENT, PARSE-REL-ELEM

-------------------------------------------------------------------

  GET-UNINSTANTIATED-RESTRICTION                    "NORMAL;RSTRBASE"

     parameters: (RESTRICTION)

     called by: GET-INSTANCE-COMBINATIONS, INST-GENERIC-RESTRICTION

-------------------------------------------------------------------

  GET-VALUE                     macro               "BASIC;FR-CORE"

     parameters: (INSTANCE-NAME SLOT-NAME &OPTIONAL (PROP-NAME
:VALUE))

     used as a constant by:
          (:PROPERTY GET-VALUE SYS::SETF-METHOD)

     uses keywords: :GET, :VALUE

-------------------------------------------------------------------

  (:PROPERTY GET-VALUE SYS::SETF-METHOD)  macro     "BASIC;FR-CORE"

     parameters: (OBJECT-NAME SLOT-NAME &OPTIONAL (PROP-NAME :VALUE))

     calls: GENSYM

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

     uses keywords: :VALUE

-------------------------------------------------------------------

  GET-VALUE-OF-REFERENCED-SLOT                      "NORMAL;RSTREVAL"

     parameters: (SLOT-REF)

     called by: ADMISSIBLE-SLOT-VALUE-P, FURTHER-SLOT-RESTRICTION-P

     calls: GET-INSTANCE-NAME

     macros expanded: $SEND, GET-INSTANCE, GET-OBJECT-OF-SLOT-REF,
          GET-SLOT-OF-SLOT-REF, SEND

     uses keywords: :GET, :INSTANCE

      ermittelt Wert des Slots

-------------------------------------------------------------------

  GET-VALUE-ONLY                                    "BASIC;FR-CORE"

     parameters: (SLOT-PLIST PROP-NAME)

     called by: (:METHOD ACTIVE-VALUE-MIXIN :GET),
          (:METHOD FRAME-CORE :GET),
          (:METHOD FRAME-CORE :GET-VALUE-ONLY)

     macros expanded: GETF, IS-VALUE, KEYWORDP, LOCF

     special variables: *KEYWORD-PACKAGE*

     uses keywords: :VALUE

-------------------------------------------------------------------

  GET-VALUE-SPEC                macro               "BASIC;BC-FNS"

     parameters: (VALUE-ASSOC)

     expanded in: ADJUST-VALUE-ASS, COMBINE-TWO-ALISTS,
          CONSISTENT-VALUE-ASS-P, GET-LIST-OF-CHOICES,
          INTERSECT-ASSOCIATED-VALUE-SPECS, MAKE-GLOBAL-VALUE-ASS,
          (:METHOD MINI-CONSTRAINT-MIXIN :PROTOCOL),
          MODIFY-NET-VALUE-ASS, PRINT-VALUE-ASS,
          SELECT-RELEVANT-CONSTRAINTS, SOME-NEW-RESTRICTIONS-P,
          SPLIT-AND-PUT-ASSOCIATION, STATE-OF-VALUE-ASS,
          UPDATE-NET-VALUE-ASS

-------------------------------------------------------------------

  GET-VAR                       macro               "BASIC;BC-FNS"

     parameters: (VALUE-ASSOC)

     expanded in: COMBINE-TWO-ALISTS, CONVERT-SIMPLE-TO-MULTIPLE,
          INTERSECT-ASSOCIATED-VALUE-SPECS,
          (:METHOD MINI-CONSTRAINT-MIXIN :PROTOCOL),
          MODIFY-NET-VALUE-ASS, PRINT-VALUE-ASS,
          PURGE-INSTANCE-ALIST, SELECT-RELEVANT-CONSTRAINTS,
          SOME-NEW-RESTRICTIONS-P, SPLIT-AND-PUT-ASSOCIATION,
          UPDATE-NET-VALUE-ASS

-------------------------------------------------------------------

  GET-VAR-INFO                  macro               "BASIC;CSTRNET"

     parameters: (INFO-ASSOC)

     expanded in: ADD-VAR-INFO-VALUES, FREEZE-VAR-INFO-VALUES,
          GET-VAR-INFO-CONSTRAINTS, GET-VAR-INFO-VALUES,
          INIT-VAR-INFO-VALUES, REPLACE-VAR-INFO-VALUES,
          RESET-VAR-INFO-VALUES

-------------------------------------------------------------------

  GET-VAR-INFO-CONSTRAINTS                          "BASIC;CSTRNET"

     parameters: (INFO-ASSOC)

     called by: SELECT-ALL-CONSTRAINTS, SELECT-RELEVANT-CONSTRAINTS

     macros expanded: GET-VAR-INFO

-------------------------------------------------------------------

  GET-VAR-INFO-VALUES                               "BASIC;CSTRNET"

     parameters: (INFO-ASSOC)

     called by: ADMISSIBLE-SLOT-VALUE-P,
          (:METHOD CONSTRAINT-NET :CONSISTENT-P),
          (:METHOD CONSTRAINT-NET :INTERFACE-ASSIGNMENT),
          (:METHOD CONSTRAINT-NET :STORE-STATE),
          FURTHER-SLOT-RESTRICTION-P, MAKE-LOCAL-VALUE-ASS,
          (:METHOD RESTRICTION-NET :REPLACE-POSSIBLE-VALUES),
          (:METHOD RESTRICTION-NET :REPLACE-VALUES),
          SELECT-MULTIPLE-VALUED-VARIABLE, STATE-OF-NET-SPEC

     calls: ERROR, GETHASH

     macros expanded: BABERROR, GET-VAR-INFO, GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  GET-VAR-OF-INST-ASS           macro               "NORMAL;RSTRBASE"

     parameters: (INST-ASS)

     expanded in: MAKE-$INSTANCE-ALIST

-------------------------------------------------------------------

  GET-VARIABLES                                     "BASIC;RULES"

     parameters: (VARIABLES-SPECIFICATION)

     called by: (:INTERNAL CHECK-BINDINGS 0)

-------------------------------------------------------------------

  GETENTRY                      macro               "COMMON;C-FNS"

     parameters: (KEY TABLE)

     expanded in: <--,
          (:METHOD ACTIVE-VALUE-MIXIN :CHECK-INIT-VALUE),
          (:METHOD ACTIVE-VALUE-MIXIN :NO-UPDATE-PERMITTED),
          (:METHOD AX-DEVELOP-MIXIN :INSPECT-AXIOMS),
          (:METHOD AX-DEVELOP-MIXIN :MOM-SHOW-PREMISE),
          (:METHOD AXSET-BASIC :ADDAX),
          (:METHOD AXSET-BASIC :KB-INFORM),
          (:METHOD AXSET-BASIC :PRINT),
          (:METHOD AXSET-BASIC :USE-AXIOM-SETS),
          (:METHOD BASIC-CONSTRAINT-MIXIN :CHOOSE-C-TYPE),
          (:METHOD BASIC-CONSTRAINT-MIXIN :PRINT-EXIT),
          (:METHOD BASIC-CONSTRAINT-MIXIN :READ),
          (:METHOD BASIC-CONSTRAINT-PROCESSOR :KB-INFORM),
          (:METHOD BASIC-FRAME-MIXIN :ASK-EVAL-FRAME-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-BEHAVIOR-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-CLASS-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-META-PREDICATE-
REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-PROLOG-FRAME-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :GET-ASK),
          (:METHOD BASIC-FRAME-MIXIN :SELECT-DESCRIBE-FRAME),
          (:METHOD BASIC-FRAME-MIXIN :SELECT-DESCRIBE-INSTANCE),
          (:METHOD BASIC-FRAME-PROCESSOR :KB-INFORM),
          (:METHOD BASIC-FRAME-PROCESSOR :PRINT),
          (:METHOD BASIC-GOALBOX :ABORT),
          (:METHOD BASIC-GOALBOX :PROVE-ABOLISH),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTA),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTZ),
          (:METHOD BASIC-GOALBOX :PROVE-ASSUME),
          (:METHOD BASIC-GOALBOX :PROVE-CALL),
          (:METHOD BASIC-GOALBOX :PROVE-CALLPRED),
          (:METHOD BASIC-GOALBOX :PROVE-CLAUSE),
          (:METHOD BASIC-GOALBOX :PROVE-RETRACT),
          (:METHOD BASIC-GOALBOX :PROVE-VAR),
          (:METHOD BASIC-GOALBOX :PROVE-VARPRED),
          (:METHOD BASIC-PROLOG-MIXIN :ASK-SET-GOAL),
          (:METHOD BASIC-PROLOG-MIXIN :DISPLAY-RESULT),
          (:METHOD BASIC-PROLOG-MIXIN :EVAL-GOAL),
          (:METHOD BASIC-PROLOG-MIXIN :LIST-PREDICATE),
          (:METHOD BASIC-PROLOG-MIXIN :PROVE-DISPLAY),
          (:METHOD BASIC-PROLOG-MIXIN :READ-CLAUSES),
          (:METHOD BASIC-PROLOG-MIXIN :SELECT-AXSET-NAME),
          (:METHOD BASIC-PROLOG-MIXIN :SELECT-FORMAT),
          (:METHOD BASIC-PROLOG-MIXIN :SELECT-LIST-PREDICATE),
          (:METHOD BASIC-PROLOG-MIXIN :SHOW-AXIOMS),
          (:METHOD BASIC-PROLOG-MIXIN :SHOW-FORM),
          (:METHOD BASIC-PROLOG-MIXIN :SHOW-VARS),
          (:METHOD BASIC-RULE-MIXIN :BEFORE :ADD-TO-RULES),
          (:METHOD BASIC-RULE-MIXIN :EVAL-RULE-META-REFERENCE-FOR-
PROLOG),
          (:METHOD BASIC-RULE-MIXIN :OBTAIN),
          (:METHOD BASIC-RULE-MIXIN :SELECT-LIST-RULE),
          (:METHOD BASIC-RULE-MIXIN :SELECT-RULE-SET-NAME),
          (:METHOD BASIC-RULE-MIXIN :TEST-HYPOTHESES),
          BUILD-CONSTRAINT-TRACE-ITEM-LIST, CHECK-BINDINGS,
          CHECK-FRAME-DEFINITION, CHECK-INSTANCE-DEFINITION,
          CHECK-RULE-SET-SYNTAX,
          CHECK-RULE-SET-VARIABLES-SPECIFICATION, CHECK-RULE-SYNTAX,
          CHOOSE-CONSTRAINT-TRACE-MODE, CHOOSE-ELEMENT-TYPE,
          CHOOSE-NUMBER-OF-RESULTS, CHOOSE-RELATION,
          CHOOSE-SPECIAL-CONSTRAINT,
          (:METHOD CONSTRAINT-NET :RESTORE-STATE), CURRENT-KB-TYPEP,
          (:METHOD DATA-BASE :ASK-USER),
          (:METHOD DATA-BASE :PRINT-HYPOTHESES-VERIFIED),
          (:METHOD DATA-BASE :PRINT-TRUE-FACTS),
          DETERMINE-CONSISTENCY-LEVEL, EVAL-FIRST-VALUE-ASS,
          EXCEPTION-COMMENT, FORMAT-EXPECTATIONS,
          FORMAT-TRANSLATE-TRUE-OR-FALSE,
          (:METHOD FRAME-BASE :NEW-BEHAVIOR-FORM),
          (:METHOD FRAME-CORE :ASK),
          (:METHOD FRAME-CORE :ASK-FOR-SLOT-PROPERTY),
          (:METHOD FRAME-CORE :DELETE-PROPERTY),
          (:METHOD FRAME-CORE :PROMPT-FOR-VALUE),
          (:METHOD FRAME-CORE :SLOT-MESSAGE),
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE),
          (:METHOD FREE-TEXT-MIXIN :ASK-USER),
          (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT),
          (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT-FOR-PROLOG),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER-WITHOUT-ADDING),
          GENERATE-HOW-MENU-ITEMS, GET-CONSTRAINT, GET-DEF-CONDITION,
          GET-DEF-EXPRESSIONS, GET-DEF-INTERFACE, GET-DEF-RELATION,
          GET-DEF-TYP, GET-FRAME-NAME,
          GET-FRAME-NAME-OR-SIGNAL-ERROR, GET-FRAME-NAME-WITH-CHECK,
          GET-INSTANCE-NAME, GET-INSTANCE-NAME-WITH-CHECK,
          GET-LIST-OF-CHOICES, GET-OP-DEF, GET-RESTRICTIONS,
          GET-SLOT-REFS, GET-VAR-INFO-VALUES,
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-ABOLISH),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-ASSERT),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-ASSUME),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-CUT),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-EQUAL),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-EXT-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-FAIL),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-FORMAT),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-IS),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-LISP),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NOEQUAL),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NORMAL-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NORMAL-BEFORE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-READ),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-REPEAT),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TOP-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TOP-BEFORE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TRY-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TRY-BEFORE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TYPE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-WRITE),
          (:METHOD KB-PROCESSOR-CORE :KB-INFORM),
          (:METHOD KB-PROCESSOR-CORE :RESET-KB-CONFIRMED),
          (:METHOD KB-PROCESSOR-CORE :START-KB-CONFIRMED),
          (:METHOD KB-STUB :EVAL), KNOWN-AXIOM-SET,
          MAKE-DEFINSTANCE-EXAMPLE, MAKE-FRAME-DEFINITION-EXAMPLE,
          MAKE-FULL-RULE-EXAMPLE, MAKE-GLOBAL-VALUE-ASS,
          MAKE-LHS-EXAMPLE, MAKE-LOCAL-VALUE-ASS, MAKE-RHS-EXAMPLE,
          MAKE-RULE-HEADER, MAKE-SLOT-SPECIFICATION-EXAMPLE,
          MAKE-SUPERS-SPECIFICATION-EXAMPLE, MENU-CHOOSE-TRANSLATE,
          MENU-MULT-CHOOSE-TRANSLATE,
          (:METHOD META-PROCESSOR-CORE :BEFORE :EVAL),
          (:METHOD META-PROCESSOR-CORE :EVAL),
          (:METHOD META-PROCESSOR-CORE :TRACE-STATUS),
          (:METHOD MINI-CONSTRAINT-MIXIN :PROTOCOL),
          (:METHOD MINI-CONSTRAINT-PROCESSOR :TRACE-STATUS),
          (:METHOD MINI-PROLOG-MIXIN :SELECT-PREDS-FOR-TRACING),
          (:METHOD MINI-PROLOG-MIXIN :SELECT-PREDS-TO-TOGGLE),
          (:METHOD MINI-PROLOG-MIXIN :SET-PROLOG-TRACE-OPTIONS),
          (:METHOD MINI-PROLOG-MIXIN :SHOW-TRACE-STATUS),
          (:METHOD MINI-RULE-MIXIN :DISPLAY-RULE-TRACE),
          (:METHOD MINI-RULE-MIXIN :DISPLAY-TRACE-ELEMENT),
          (:METHOD MINI-RULE-MIXIN :SELECT-RULES-FOR-TRACING),
          (:METHOD MINI-RULE-MIXIN :SELECT-RULES-TO-TOGGLE),
          (:METHOD MINI-RULE-MIXIN :SET-RULE-TRACE-OPTIONS),
          (:METHOD NORMAL-CONSTRAINT-PROCESSOR :AFTER :KB-INFORM),
          NORMALIZE-ANSWER, NORMALIZE-CLAUSE,
          (:METHOD POSS-VAL-MIXIN :ANY-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :CHECK-CORRECT-VALUE),
          (:METHOD POSS-VAL-MIXIN :CHECK-FORMAT-OF-EXPLAIN-ANSWERS),
          (:METHOD POSS-VAL-MIXIN :CHECK-INIT-VALUE),
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :ONE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :PROVIDE-LOCAL-HELP),
          (:METHOD POSS-VAL-MIXIN :SOME-OF-READ-METHOD),
          (:METHOD PROC-EXPLAIN-MIXIN :EXPLAIN-KONTEXT),
          (:METHOD PROC-EXPLAIN-MIXIN :WHY-GOAL),
          (:METHOD PROC-SC-MIXIN :RETURN-FORM),
          (:METHOD PROC-SC-MIXIN :RETURN-RESULT),
          (:METHOD PROC-SC-MIXIN :RETURN-VARS),
          (:METHOD PROLOG-INTERPRETER :PROVE-RETURN),
          (:METHOD PROLOG-INTERPRETER :WHY),
          (:METHOD PROLOG-TRACE-MIXIN :TRACE-STATUS),
          RESET-AXIOM-SET,
          (:METHOD RESTRICTION-NET :MAKE-SLOT-RESTRICTION),
          (:METHOD RULE-BASE :GET-RULE-SET),
          (:METHOD RULE-BASE :MODIFY-RULE),
          (:METHOD RULE-BASE :RULE-STATISTICS),
          (:METHOD RULE-BASE :UNPARSE-RULES),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-RULES-FOR-TERM),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-TERMS-FOR-INSPECTION),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-TERMS-FOR-
INSPECTION2),
          (:METHOD RULE-DEVELOP-MIXIN :FILTER-TERMS),
          (:METHOD RULE-DEVELOP-MIXIN :INSPECT-TERMS),
          (:METHOD RULE-DEVELOP-MIXIN :INSPECT-TERMS2),
          (:METHOD RULE-DEVELOP-MIXIN :PRINT-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-RULE-SET),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-TERM),
          (:METHOD RULE-EXPLAIN-MIXIN :DISPLAY-TERM-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :DISPLAY-UNPROVABLE-TERM-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-ACTION),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-PREMISE),
          (:METHOD RULE-EXPLAIN-MIXIN :GET-INPUT-TYPE),
          (:METHOD RULE-EXPLAIN-MIXIN :HOW),
          (:METHOD RULE-EXPLAIN-MIXIN :HOW-ULTIMATELY),
          (:METHOD RULE-EXPLAIN-MIXIN :TRANSLATE-STATUS-INTO-STRING),
          (:METHOD RULE-EXPLAIN-MIXIN :WHICH-FACT),
          (:METHOD RULE-EXPLAIN-MIXIN :WHY),
          (:METHOD RULE-TRACE-MIXIN :DISPLAY-TRACED-RULE),
          (:METHOD RULE-TRACE-MIXIN :NEEDED-TO-SHOW),
          (:METHOD RULE-TRACE-MIXIN :TRACE-STATUS), SEARCH-FOR-KB,
          SIGNAL-UNKNOWN-FRAME, SPLIT-AND-PUT-ASSOCIATION,
          TRANSLATE-ANSWER, USE-OLD-KB?, VALUE-SPEC-TEST,
          WARN-IF-NO-PROLOG

-------------------------------------------------------------------

  GETENTRY2                     macro               "COMMON;C-FNS"

     parameters: (KEY TABLE)

     calls: GETHASH

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  GLOBAL-TO-LOCAL                                   "BASIC;NET-PROP"

     parameters: (C-EXPR NET-SPEC)

     called by: (:METHOD CONSTRAINT :EVALUATE-EXPRESSION),
          (:METHOD CONSTRAINT-NET :EVALUATE-EXPRESSION),
          (:METHOD CONSTRAINT-TRACE-MIXIN :EVALUATE-EXPRESSION)

     calls: GET-CONSTRAINT, MAKE-LOCAL-VALUE-ASS

     macros expanded: $SEND, GET-CONSTR-NAME, GET-PARAMETERS, SEND

     uses keywords: :INTERFACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-GOAL)         "MINI;MP-PREDS"

     parameters: (MODE)

     calls: VARCELL-P

     macros expanded: $SEND, GET-CURR-METHOD,
          GET-CURR-METHOD-FOR-PRED, PRED, SEND

     instance variables: GOAL

     uses keywords: :ABORT, :PROVE-VAR, :PROVE-VARPRED

   fetches the right method to prove the goal and executes that
method.

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-!)      "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-CUT, :TRACE-CUT

   encapsulated method to prove and trace system predicate !

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-%NORMAL)  "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-NORMAL, :TRACE-NORMAL-AFTER,
          :TRACE-NORMAL-BEFORE

   encapsulated method to prove and trace system predicate %normal

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-%TOP)   "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-TOP, :TRACE-TOP-AFTER, :TRACE-TOP-BEFORE

   encapsulated method to prove and trace system predicate %top

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-/=)     "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-NOEQUAL, :TRACE-NOEQUAL

   encapsulated method to prove and trace system predicate /=

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-/==)    "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-LISP, :TRACE-LISP

   encapsulated method to prove and trace system predicate /==

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-<)      "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-LISP, :TRACE-LISP

   encapsulated method to prove and trace system predicate <

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-=)      "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-EQUAL, :TRACE-EQUAL

   encapsulated method to prove and trace system predicate =

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-=.=)    "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-LISP, :TRACE-LISP

   encapsulated method to prove and trace system predicate =.=

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-=/=)    "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-LISP, :TRACE-LISP

   encapsulated method to prove and trace system predicate =/=

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-=<)     "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-LISP, :TRACE-LISP

   encapsulated method to prove and trace system predicate =<

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-==)     "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-LISP, :TRACE-LISP

   encapsulated method to prove and trace system predicate ==

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE->)      "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-LISP, :TRACE-LISP

   encapsulated method to prove and trace system predicate >

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE->=)     "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-LISP, :TRACE-LISP

   encapsulated method to prove and trace system predicate >=

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-ABOLISH)  "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-ABOLISH, :TRACE-ABOLISH

   encapsulated method to prove and trace system predicate abolish

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-AND)    "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-AND, :TRACE-NORMAL-AFTER,
          :TRACE-NORMAL-BEFORE

   encapsulated method to prove and trace system predicate and

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-ASSERTA)  "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-ASSERTA, :TRACE-ASSERT

   encapsulated method to prove and trace system predicate asserta

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-ASSERTZ)  "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-ASSERTZ, :TRACE-ASSERT

   encapsulated method to prove and trace system predicate assertz

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-ASSUME)  "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-ASSUME, :TRACE-ASSUME

   encapsulated method to prove and trace system predicate assume

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-ATOM)   "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-TYPE, :TRACE-TYPE

   encapsulated method to prove and trace system predicate atom

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-ATOMIC)  "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-TYPE, :TRACE-TYPE

   encapsulated method to prove and trace system predicate atomic

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-BAGOF)  "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-BAGOF, :TRACE-TRY-AFTER,
          :TRACE-TRY-BEFORE

   encapsulated method to prove and trace system predicate bagof

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-CALL)   "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-CALL, :TRACE-NOTHING

   encapsulated method to prove and trace system predicate call

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-CALLPRED)  "MINI;MP-
PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-CALLPRED, :TRACE-NOTHING

   encapsulated method to prove and trace system predicate callpred

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-CLAUSE)  "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-CLAUSE, :TRACE-EXT-AFTER,
          :TRACE-NORMAL-BEFORE

   encapsulated method to prove and trace system predicate clause

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-COND)   "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-COND, :TRACE-NORMAL-AFTER,
          :TRACE-NORMAL-BEFORE

   encapsulated method to prove and trace system predicate cond

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-CUT)    "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-CUT, :TRACE-CUT

   encapsulated method to prove and trace system predicate cut

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-FAIL)   "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-FAIL, :TRACE-FAIL

   encapsulated method to prove and trace system predicate fail

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-FORMAT)  "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-FORMAT, :TRACE-FORMAT

   encapsulated method to prove and trace system predicate format

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-INTEGER)  "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-TYPE, :TRACE-TYPE

   encapsulated method to prove and trace system predicate integer

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-IS)     "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-IS, :TRACE-IS

   encapsulated method to prove and trace system predicate is

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-LISP)   "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-LISP, :TRACE-LISP

   encapsulated method to prove and trace system predicate lisp

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-NOT)    "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-NOT, :TRACE-TRY-AFTER, :TRACE-TRY-BEFORE

   encapsulated method to prove and trace system predicate not

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-ONCE)   "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-ONCE, :TRACE-TRY-AFTER, :TRACE-TRY-BEFORE

   encapsulated method to prove and trace system predicate once

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-OR)     "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-OR, :TRACE-NORMAL-AFTER,
          :TRACE-NORMAL-BEFORE

   encapsulated method to prove and trace system predicate or

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-READ)   "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-READ, :TRACE-READ

   encapsulated method to prove and trace system predicate read

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-REPEAT)  "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-REPEAT, :TRACE-REPEAT

   encapsulated method to prove and trace system predicate repeat

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-RETRACT)  "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-RETRACT, :TRACE-EXT-AFTER,
          :TRACE-NORMAL-BEFORE

   encapsulated method to prove and trace system predicate retract

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-TRUE)   "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-TRUE, :TRACE-NOTHING

   encapsulated method to prove and trace system predicate true

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-VAR)    "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-TYPE, :TRACE-TYPE

   encapsulated method to prove and trace system predicate var

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :PROVE-TRACE-WRITE)  "MINI;MP-PREDS"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-WRITE, :TRACE-WRITE

   encapsulated method to prove and trace system predicate write

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-ABOLISH)      "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: CLAUSES, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-ASSERT)       "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: CLAUSES, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-ASSUME)       "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: CLAUSES, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-CUT)          "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: GOAL-LEVEL, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-EQUAL)        "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH, REST-SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: GOAL, INIT-ENV-DEPTH, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-EXT-AFTER)    "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, GETENTRY, PRED, SEND

     instance variables: GOAL, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-FAIL)         "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-FORMAT)       "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: CLAUSES, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-IS)           "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH, REST-SUBST-PROLOG-VARS, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: CLAUSES, GOAL, INIT-ENV-DEPTH,
          PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-LISP)         "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: GOAL, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NOEQUAL)      "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: GOAL, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NORMAL-AFTER)  "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, GETENTRY, PRED, SEND

     instance variables: GOAL, GOAL-LEVEL, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NORMAL-BEFORE)  "MINI;MP-PREDS"

     parameters: (MODE)

     calls: GETHASH, REST-SUBST-PROLOG-VARS, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: GOAL, INIT-ENV-DEPTH, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NOTHING)      "MINI;MP-PREDS"

     parameters: (MODE RES)

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-READ)         "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH, REST-SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: CLAUSES, GOAL, INIT-ENV-DEPTH,
          PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-REPEAT)       "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: CLAUSES, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TOP-AFTER)    "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TOP-BEFORE)   "MINI;MP-PREDS"

     parameters: (MODE)

     calls: GETHASH, REST-SUBST-PROLOG-VARS, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: CLAUSES, INIT-ENV-DEPTH, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TRY-AFTER)    "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, GETENTRY, PRED, SEND

     instance variables: GOAL, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TRY-BEFORE)   "MINI;MP-PREDS"

     parameters: (MODE)

     calls: GETHASH, SUBST-PROLOG-VARS

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: GOAL, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TYPE)         "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: CLAUSES, GOAL, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  (:METHOD GOALBOX-TRACE-MIXIN :TRACE-WRITE)        "MINI;MP-PREDS"

     parameters: (MODE RES)

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: CLAUSES, PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :FORMAT-TRACE

-------------------------------------------------------------------

  HAS-CONDITION-P                                   "BASIC;CSTRBASE"

     parameters: (RELATION-ELEMENT)

     called by: SELECT-LOCAL-CONDITIONS

     uses keywords: :IF

-------------------------------------------------------------------

  HEAD                          macro               "BASIC;AXIOMS"

     parameters: (RULE)

     expanded in: (:METHOD BASIC-GOALBOX :PROVE-ASSERTA),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTZ),
          (:METHOD BASIC-GOALBOX :PROVE-ASSUME),
          (:METHOD BASIC-GOALBOX :PROVE-CLAUSE),
          (:METHOD BASIC-GOALBOX :PROVE-RETRACT),
          (:METHOD PROC-SC-MIXIN :TRANS-UNIFY), PROLOG-ASSERT,
          REM-CLAUSE

-------------------------------------------------------------------

  HYPOTHESES                    macro               "BASIC;BR-MIXIN"

     parameters: (&REST HYPOTHESES)

     used as a constant by: (:METHOD RULE-BASE :UNPARSE-RULES)

     uses keywords: :SET-HYPOTHESES

-------------------------------------------------------------------

  INIT-AXSET                                        "BASIC;AXIOMS"

     parameters: (AXSET-NAME &OPTIONAL KB-NAME)

     called by: ASSERT-AXIOMS,
          (:METHOD BASIC-PROLOG-MIXIN :INIT-KBAXSET)

     calls: SYS:MEMBER-EQL, REMOVE-ALL-CLAUSES, SYS::SETPROP

     macros expanded: PUSH

     special variables: *AXIOM-SETS*

   builds an empty axiom set named `<axset-name>`.
if `<kb-name>` is not NIL, `<axset-name>` is marked to be associated with
`<kb-name>`.

-------------------------------------------------------------------

  INIT-VAR-INFO-VALUES                              "BASIC;CSTRNET"

     parameters: (INFO-ASSOC)

     called by: (:METHOD CONSTRAINT-NET :GET-INITIALE-STATE)

     macros expanded: GET-VAR-INFO

-------------------------------------------------------------------

  INST-ASSIGNMENT-P             macro               "NORMAL;RSTRBASE"

     parameters: (INST-ASS)

     expanded in: GET-SLOT-REFS, MAKE-$INSTANCE-ALIST

    	ueberprueft, ob der Anfang der Liste inst-ass eine
  	Belegung einer variablen darstellt

-------------------------------------------------------------------

  INST-GENERIC-RESTRICTION                          "NORMAL;RSTRBASE"

     parameters: (RESTRICTION)

     called by: INST-RESTRICTION

     calls: GET-INSTANCE-COMBINATIONS,
          INST-UNINSTANTIATED-RESTRICTION

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

   	fuer alle Wertekombinationen der Variablen wird
  	die eingeschlossene uninstantiierte Restriction
  	instantiiert, falls die Variablen die angegebene
  	Bedingung erfuellen

-------------------------------------------------------------------

  INST-RESTRICTION                                  "NORMAL;RSTRBASE"

     parameters: (RESTRICTION)

     called by: INSTANTIATE-RESTRICTIONS

     calls: GENERIC-EXPR-P, INST-GENERIC-RESTRICTION

   	ermittelt Menge aller Restrictions, die durch
  	list-of-restrictions beschrieben werden

-------------------------------------------------------------------

  INST-SIMPLE-RESTRICTION                           "NORMAL;RSTRBASE"

     parameters: (RESTRICTION)

     called by: INST-RESTRICTION

-------------------------------------------------------------------

  INST-SLOT-REF                                     "NORMAL;RSTRBASE"

     parameters: (SLOT-REF SIMPLE-ALIST)

     called by: INST-SLOT-REF-LIST

     calls: SYS:ASSOC-EQUAL

     macros expanded: GET-OBJECT-OF-SLOT-REF, GET-SIMPLE-VALUE,
          GET-SLOT-OF-SLOT-REF, MAKE-SLOT-REF

   	falls die erste Komponente von slot-ref in simple-alist
  	auftritt, wird sie durch die entsprechende Instanz ersetzt

-------------------------------------------------------------------

  INST-SLOT-REF-LIST                                "NORMAL;RSTRBASE"

     parameters: (SLOT-REF-LIST SIMPLE-ALIST)

     called by: INST-SLOT-SET, INST-UNINSTANTIATED-RESTRICTION

     calls: INST-SLOT-REF

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

   	instantiiert alle Slots in slot-ref-list

-------------------------------------------------------------------

  INST-SLOT-SET                                     "NORMAL;RSTRBASE"

     parameters: (SLOT-DESCRIPTION)

     called by: INSTANTIATE-SLOTS

     calls: SYS:*NCONC, GET-SLOT-REFS, INST-SLOT-REF-LIST,
          MAKE-$INSTANCE-ALIST, SYS:REMOVE-DUPLICATES*,
          SPLIT-VARIABLE-ALIST

     macros expanded: DO-NAMED, GET-INST-ASSIGNMENT

   	instantiiert die eingeschlossenen Slot-Referenzen

-------------------------------------------------------------------

  INST-UNINSTANTIATED-RESTRICTION                   "NORMAL;RSTRBASE"

     parameters: (RESTRICTION SIMPLE-ALIST)

     called by: INST-GENERIC-RESTRICTION

     calls: INST-SLOT-REF-LIST

     macros expanded: GET-CONSTR-NAME, GET-PARAMETERS, MAKE-C-EXPR

   	ersetzt die Variablen in restriction durch die Instanz,
  	die ihnen simple-alist zuweist

-------------------------------------------------------------------

  INSTALL-SUBFRAME                                  "BASIC;FRAMES"

     parameters: (FRAME-NAME SUPERS)

     used as a constant by: (:METHOD FRAME-BASE :NEW-FRAME-FORM)

     calls: ADD-SUBFRAME

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

-------------------------------------------------------------------

  INSTANCE-DEFINITION           macro               "BASIC;FRAMES"

     parameters: (INSTANCE-INTERNAL-NAME)

     expanded in: %IS-INSTANCE, %IS-INSTANCE-NAME, GET-INSTANCE-DEF,
          IS-INSTANCE

-------------------------------------------------------------------

  INSTANTIATE-PATTERN           macro               "BASIC;BR-INTER"

     parameters: (ALIST PATTERN)

     expanded in: (:METHOD RULE-INTERPRETER :TRY-RULE)

-------------------------------------------------------------------

  INSTANTIATE-RESTRICTIONS                          "NORMAL;RSTRBASE"

     parameters: (LIST-OF-RESTRICTION)

     called by: INSTANTIATE-RESTRICTIONS,
          (:METHOD RESTRICTION-BASE :NEW-RESTRICTION),
          (:METHOD RESTRICTION-NET :REDEFINE-ONE)

     calls: INST-RESTRICTION, INSTANTIATE-RESTRICTIONS, UNION-SETS

   	ermittelt Menge aller Restrictions, die durch
  	list-of-restrictions beschrieben werden

-------------------------------------------------------------------

  INSTANTIATE-SLOTS                                 "NORMAL;RSTRBASE"

     parameters: (SET-OF-SLOTS)

     called by: DETERMINE-SLOTS, INSTANTIATE-SLOTS

     calls: GENERIC-EXPR-P, INST-SLOT-SET, INSTANTIATE-SLOTS,
          UNION-SETS

-------------------------------------------------------------------

  INSTRUCTIONS                  macro               "META;KB-CORE"

     parameters: (&REST INSTRUCTIONS)

     uses keywords: :SET-INSTRUCTIONS

   assigns instructions to the instructions slot of the current kb.

-------------------------------------------------------------------

  INTERNAL-RELATION-NAME                            "BASIC;FR-CORE"

     parameters: (RELATION)

     called by: <--, (:METHOD FRAME-CORE :RECALL),
          (:METHOD FRAME-CORE :REMEMBER),
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE)

     calls: INTERN, STRING-APPEND, SYS::STRING-AUX

     macros expanded: KEYWORDP, STRING, TYPECASE

     special variables: *KEYWORD-PACKAGE*

     uses keywords: :KEYWORD

-------------------------------------------------------------------

  INTERSECT-ASSOCIATED-VALUE-SPECS                  "BASIC;NET-PROP"

     parameters: (VARIABLE VALUE-ASS)

     called by: INTERSECT-ASSOCIATED-VALUE-SPECS,
          MAKE-DETERMINED-VALUE-ASS

     calls: EXTENDED-INTERSECTION, INTERSECT-ASSOCIATED-VALUE-SPECS

     macros expanded: GET-VALUE-SPEC, GET-VAR

-------------------------------------------------------------------

  INTERSECT-SETS                                    "BASIC;BC-FNS"

     parameters: (SET1 SET2)

     called by: EXTENDED-INTERSECTION

     calls: SYS:INTERSECTION*

-------------------------------------------------------------------

  IS-ACTIVATED-KB                                   "META;KB-CORE"

     parameters: ()

     called by: (:METHOD KB-PROCESSOR-CORE :MAKE-YOURSELF-CURRENT),
          TOGGLE-SYSTEM-TRACE

     macros expanded: FLAVOR-TYPEP

     special variables: *CURRENT-KNOWLEDGE-BASE*

-------------------------------------------------------------------

  IS-ACTIVE-VALUE                                   "NORMAL;ACT-VALS"

     parameters: (VALUE)

     called by: (:METHOD ACTIVE-VALUE-MIXIN :ACTIVE-VALUE-GET),
          (:METHOD ACTIVE-VALUE-MIXIN :ACTIVE-VALUE-SET),
          (:METHOD ACTIVE-VALUE-MIXIN :CHECK-INIT-VALUE),
          (:METHOD ACTIVE-VALUE-MIXIN :INIT-SLOT),
          NORMALIZE-PLIST-WITH-ACT-VALS

-------------------------------------------------------------------

  IS-BINDINGS                                       "BASIC;RULES"

     parameters: (X)

     called by: CHECK-BINDINGS

     uses keywords: :BINDINGS

-------------------------------------------------------------------

  IS-BOUND                      macro               "BASIC;AX-SC"

     parameters: (VARCELL)

     expanded in: DEREF, SUBST-PROLOG-VARS

-------------------------------------------------------------------

  IS-ENTRY                      macro               "COMMON;C-FNS"

     parameters: (KEY TABLE)

-------------------------------------------------------------------

  IS-EQUALITY-RELATION                              "BASIC;FR-CORE"

     parameters: (RELATION-NAME)

     called by: (:METHOD FRAME-CORE :RECALL)

-------------------------------------------------------------------

  IS-FACET                      macro               "BASIC;FRAMES"

     parameters: (X)

     expanded in: <--, (:METHOD FRAME-CORE :ASK),
          (:METHOD FRAME-CORE :SLOT-MESSAGE),
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE)

     used as a constant by: NORMALIZE-ARGS

-------------------------------------------------------------------

  IS-FACT                       macro               "BASIC;AXIOMS"

     parameters: (CLAUSE)

     expanded in: MAKE-REC-CLAUSE-ITEMS

-------------------------------------------------------------------

  IS-FRAME                                          "BASIC;FRAMES"

     parameters: (NAME)

     called by: SIGNAL-UNKNOWN-FRAME

     calls: %GET-OBJECT-NAME

     macros expanded: FRAME-DEFINITION

     uses keywords: :FRAME-DEFINITION

-------------------------------------------------------------------

  IS-FRAME-META-PREDICATE                           "BASIC;BF-MIXIN"

     parameters: (X)

     used as a constant by: FRAME-TYPE

     calls: SYS:MEMBER-EQL

     special variables: *FRAME-META-PREDICATES*

-------------------------------------------------------------------

  IS-FREE-TEXT-META-PREDICATE                       "FREETEXT;FT-
MIXIN"

     parameters: (X)

     called by: (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT-FOR-PROLOG)

     calls: SYS:MEMBER-EQL

     special variables: *FREE-TEXT-META-PREDICATES*

-------------------------------------------------------------------

  IS-HELP                                           "COMMON;C-FNS"

     parameters: (X)

     called by: (:METHOD BASIC-FRAME-MIXIN :ASK-WITH-HELP),
          (:METHOD FRAME-CORE :ASK-FOR-SLOT-PROPERTY),
          (:METHOD FRAME-CORE :ASK-FOR-SLOT-VALUE)

-------------------------------------------------------------------

  IS-IN-INTERVAL                                    "BASIC;FR-CORE"

     parameters: (X INTERVAL)

     called by: (:METHOD FRAME-CORE :BETWEEN-REL),
          (:METHOD POSS-VAL-MIXIN :INTERVAL)

-------------------------------------------------------------------

  IS-INSTANCE                                       "BASIC;FRAMES"

     parameters: (NAME)

     called by:
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-CLASS-REFERENCE),
          COMPUTE-LIST-EXPR, (:METHOD POSS-VAL-MIXIN :INSTANCE-OF)

     calls: %GET-OBJECT-NAME

     macros expanded: INSTANCE-DEFINITION

     uses keywords: :INSTANCE-DEFINITION

-------------------------------------------------------------------

  IS-INTERVAL-SPECIFICATION                         "BASIC;FR-CORE"

     parameters: (LIST)

     called by: (:METHOD FRAME-CORE :BETWEEN-REL)

-------------------------------------------------------------------

  IS-LISTE                                          "BASIC;CSTRBASE"

     parameters: (LISTE)

     called by: IS-LISTE, PARSE-REL-ELEM

     calls: IS-LISTE

-------------------------------------------------------------------

  IS-METHOD-OF                                      "MINI;POS-VALS"

     parameters: (SELF POSSIBLE-VALUES-TYPE)

     called by: (:METHOD ACTIVE-VALUE-MIXIN :CHECK-INIT-VALUE),
          (:METHOD POSS-VAL-MIXIN :CHECK-INIT-VALUE)

     macros expanded: $SEND, KEYWORDP, SEND

     special variables: *KEYWORD-PACKAGE*, SELF

     uses keywords: :OPERATION-HANDLED-P

-------------------------------------------------------------------

  IS-MULTIPLE-ANSWER                                "COMMON;C-FNS"

     parameters: (X)

     called by: (:METHOD FRAME-CORE :/=-REL),
          (:METHOD FRAME-CORE :=-REL), (:METHOD FRAME-CORE :IS-REL)

     uses keywords: :MULTIPLE-VALUE

-------------------------------------------------------------------

  IS-MULTIPLE-VALUE                                 "COMMON;C-FNS"

     parameters: (X)

     called by: MAKE-CLAUSES, NORMALIZE-PLIST,
          NORMALIZE-PLIST-WITH-ACT-VALS,
          (:METHOD POSS-VAL-MIXIN :SOME-OF)

     uses keywords: :MULTIPLE-VALUE

-------------------------------------------------------------------

  IS-NEGATED-TERM                                   "COMMON;C-FNS"

     parameters: (TERM)

     called by: COMPUTE-TERM, (:METHOD DATA-BASE :RECALL),
          (:METHOD DATA-BASE :RECALL-WITHOUT-ASKING),
          (:METHOD FREE-TEXT-PROCESSOR :RECALL),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-WHY-NOT-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-PREMISE),
          (:METHOD RULE-INTERPRETER :AND-FORWARD-ASKING-IF-
UNDETERMINED),
          (:METHOD RULE-INTERPRETER :OR-FORWARD-ASKING-IF-
UNDETERMINED),
          (:METHOD RULE-INTERPRETER :VERIFY)

-------------------------------------------------------------------

  IS-PATH                       macro               "BASIC;FRAMES"

     parameters: (X)

     expanded in: <--, (:METHOD FRAME-CORE :SLOT-MESSAGE),
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE)

     used as a constant by: NORMALIZE-ARGS

-------------------------------------------------------------------

  IS-PROLOG-JUNCTOR-FOR-RULES                       "BASIC;BP-MIXIN"

     parameters: (X)

     called by: (:METHOD BASIC-PROLOG-MIXIN :EVAL-GOAL)

     used as a constant by: PROLOG-TYPE

     calls: SYS:MEMBER-EQL

     special variables: *PROLOG-JUNCTOR-FOR-RULES*

-------------------------------------------------------------------

  IS-REST-BOUND                 macro               "BASIC;AX-SC"

     parameters: (VARCELL NR)

     expanded in: REST-DEREF, REST-SUBST-PROLOG-VARS

-------------------------------------------------------------------

  IS-RULE-CLAUSE                macro               "BASIC;AXIOMS"

     parameters: (CLAUSE)

     expanded in: CHECK-FOR-CLAUSE

-------------------------------------------------------------------

  IS-RULE-META-PREDICATE                            "BASIC;BR-MIXIN"

     parameters: (X)

     used as a constant by: RULE-REFERENCE-TYPE

     calls: SYS:MEMBER-EQL

     special variables: *RULE-META-PREDICATES*

-------------------------------------------------------------------

  IS-RULE-SET-WITH-VARIABLES                        "BASIC;RULES"

     parameters: (RULE-SET)

     called by: CHECK-RULE-SET-SYNTAX,
          (:METHOD RULE-BASE :GET-RULE-SET), RULE-SET-RULES

     calls: IS-VARIABLES-SPECIFICATION

-------------------------------------------------------------------

  IS-RULE-VARIABLE                                  "BASIC;RULES"

     parameters: (X)

     called by: CHECK-RULE-SET-VARIABLES-SPECIFICATION

     macros expanded: STRING, TYPECASE

-------------------------------------------------------------------

  IS-SIMPLE-CLAUSE              macro               "BASIC;AXIOMS"

     parameters: (CLAUSE)

     expanded in: CHECK-FOR-CLAUSE

-------------------------------------------------------------------

  IS-SIMPLE-LIST                                    "COMMON;C-FNS"

     parameters: (L)

     called by: CHECK-FRAME-DEFINITION, EXPLAIN-ANSWERS-CHOICES

     calls: EVERY

-------------------------------------------------------------------

  IS-T                          macro               "BASIC;AX-SC"

     parameters: (ASSERTIONS)

     expanded in: (:METHOD PROC-SC-MIXIN :GET-CLAUSES)

-------------------------------------------------------------------

  IS-TRUE-LIST                                      "COMMON;C-FNS"

     parameters: (X)

     called by: CHECK-FRAME-DEFINITION, CHECK-INSTANCE-DEFINITION

     used as a constant by: FRAME-TYPE

-------------------------------------------------------------------

  IS-UNDETERMINED                                   "COMMON;C-FNS"

     parameters: (X)

     called by:
          (:METHOD BASIC-FRAME-MIXIN :EVAL-PROLOG-FRAME-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :GET-ASK),
          (:METHOD DATA-BASE :RECALL),
          (:METHOD DATA-BASE :RECALL-WITHOUT-ASKING),
          (:METHOD FRAME-CORE :RECALL),
          (:METHOD FRAME-CORE :REMEMBER),
          (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT-FOR-PROLOG),
          IS-UNDETERMINED-OR-NULL, (:METHOD POSS-VAL-MIXIN :AND),
          (:METHOD POSS-VAL-MIXIN :ANY),
          (:METHOD POSS-VAL-MIXIN :BOOLEAN),
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF),
          (:METHOD POSS-VAL-MIXIN :INTERVAL),
          (:METHOD POSS-VAL-MIXIN :LIST),
          (:METHOD POSS-VAL-MIXIN :NOT),
          (:METHOD POSS-VAL-MIXIN :NUMBER),
          (:METHOD POSS-VAL-MIXIN :ONE-OF),
          (:METHOD POSS-VAL-MIXIN :OR),
          (:METHOD POSS-VAL-MIXIN :SOME-OF),
          (:METHOD POSS-VAL-MIXIN :STRING),
          (:METHOD POSS-VAL-MIXIN :SYMBOL),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-PREMISE),
          (:METHOD RULE-INTERPRETER :AND-FORWARD-ASKING-IF-
UNDETERMINED),
          (:METHOD RULE-INTERPRETER :EXECUTE-ASK),
          (:METHOD RULE-INTERPRETER :OR-FORWARD-ASKING-IF-
UNDETERMINED),
          (:METHOD RULE-INTERPRETER :VERIFY)

     used as a constant by: DEFINE-POSSIBLE-VALUES-METHOD

     calls: SYS:MEMBER-EQL

-------------------------------------------------------------------

  IS-UNDETERMINED-OR-NULL                           "BASIC;BR-INTER"

     parameters: (VALUE)

     called by: (:METHOD RULE-INTERPRETER :AND-FORWARD),
          (:METHOD RULE-INTERPRETER :OR-FORWARD)

     calls: IS-UNDETERMINED

   Returns t if value is nil or undetermined, nil otherwise.

-------------------------------------------------------------------

  IS-UNKNOWN                                        "COMMON;C-FNS"

     parameters: (X)

     called by: (:METHOD POSS-VAL-MIXIN :AND),
          (:METHOD POSS-VAL-MIXIN :ANY),
          (:METHOD POSS-VAL-MIXIN :BOOLEAN),
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF),
          (:METHOD POSS-VAL-MIXIN :INTERVAL),
          (:METHOD POSS-VAL-MIXIN :LIST),
          (:METHOD POSS-VAL-MIXIN :NOT),
          (:METHOD POSS-VAL-MIXIN :NUMBER),
          (:METHOD POSS-VAL-MIXIN :ONE-OF),
          (:METHOD POSS-VAL-MIXIN :OR),
          (:METHOD POSS-VAL-MIXIN :SOME-OF),
          (:METHOD POSS-VAL-MIXIN :STRING),
          (:METHOD POSS-VAL-MIXIN :SYMBOL)

     used as a constant by: DEFINE-POSSIBLE-VALUES-METHOD

     calls: SYS:MEMBER-EQL

-------------------------------------------------------------------

  IS-USER-DEFINED-METHOD        macro               "BASIC;FRAMES"

     parameters: (X)

     expanded in: <--, COMPUTE-LIST-EXPR,
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE)

-------------------------------------------------------------------

  IS-VALUE                      macro               "BASIC;FRAMES"

     parameters: (PROP-NAME)

     expanded in: (:METHOD ACTIVE-VALUE-MIXIN :GET),
          (:METHOD ACTIVE-VALUE-MIXIN :PUT),
          (:METHOD ACTIVE-VALUE-MIXIN :SET),
          (:METHOD FRAME-CORE :ASK-FOR-SLOT-PROPERTY),
          (:METHOD FRAME-CORE :DELETE-PROPERTY), GET-VALUE-ONLY,
          NORMALIZE-PLIST, NORMALIZE-PLIST-WITH-ACT-VALS,
          (:METHOD POSS-VAL-MIXIN :PUT), SET-VALUE-ONLY

-------------------------------------------------------------------

  IS-VALUE-SPEC                                     "BASIC;CSTRBASE"

     parameters: (EXPR)

     called by: IS-VALUE-SPEC, VALUE-SPEC-TEST

     calls: IS-VALUE-SPEC

    ueberprueft, ob Consat-Wertemenge vorliegt
    (laesst u.a. keine Dotted-Pairs zu)

-------------------------------------------------------------------

  IS-VAR                        macro               "BASIC;AX-SC"

     parameters: (X)

     expanded in: (:METHOD BASIC-GOALBOX :PROVE-ABOLISH),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTA),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTZ),
          (:METHOD BASIC-GOALBOX :PROVE-ASSUME),
          (:METHOD BASIC-GOALBOX :PROVE-TYPE), EXCEPTION-COMMENT,
          TRANS-CLAUSE1, VALUE-IS-VAR

-------------------------------------------------------------------

  IS-VARIABLE                                       "COMMON;C-FNS"

     parameters: (X)

     called by: (:METHOD BASIC-FRAME-MIXIN :EVAL-BEHAVIOR-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-CLASS-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-META-PREDICATE-
REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-PREDICATE-
REFERENCE),
          (:METHOD BASIC-RULE-MIXIN :EVAL-RULE-META-REFERENCE-FOR-
PROLOG),
          CONTAINS-VARS,
          (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT-META-PREDICATE),
          GET-SUBGOAL-PREDICATES,
          (:METHOD LISP-MIXIN :EVAL-LISP-FORM-FOR-PROLOG)

     macros expanded: STRING, TYPECASE

-------------------------------------------------------------------

  IS-VARIABLES-SPECIFICATION                        "BASIC;RULES"

     parameters: (X)

     called by: IS-RULE-SET-WITH-VARIABLES

     uses keywords: :VARIABLES

-------------------------------------------------------------------

  IS-YES-LIST                                       "BASIC;BP-INTER"

     parameters: (LIST)

     called by: (:METHOD PROLOG-INTERPRETER :SOME-ANSWERS)

-------------------------------------------------------------------

  JUSTIFICATION-JUSTIFICAND     defsubst            "BASIC;DATA"

     parameters: (JUSTIFICATION)

     expanded in: (:METHOD DATA-BASE :GET-ALL-FACTS),
          (:METHOD DATA-BASE :GET-TRUE-FACTS),
          (:METHOD DATA-BASE :GET-UNPROVABLE-FACTS),
          (:INTERNAL (:METHOD DATA-BASE :IS-UNPROVABLE) 0),
          (:METHOD RULE-EXPLAIN-MIXIN :GET-LAST-STATUS),
          (:METHOD RULE-EXPLAIN-MIXIN :GET-STATUS)

-------------------------------------------------------------------

  JUSTIFICATION-JUSTIFICANS     defsubst            "BASIC;DATA"

     parameters: (JUSTIFICATION)

     expanded in: (:METHOD DATA-BASE :GET-TRUE-FACTS),
          (:METHOD DATA-BASE :GET-UNPROVABLE-FACTS),
          (:METHOD DATA-BASE :IS-UNPROVABLE),
          (:METHOD RULE-EXPLAIN-MIXIN :GET-LAST-STATUS),
          (:METHOD RULE-EXPLAIN-MIXIN :GET-STATUS)

-------------------------------------------------------------------

  JUSTIFICATION-P                                   "BASIC;DATA"

     parameters: (OBJECT)

-------------------------------------------------------------------

  JUSTIFICATION-TIME-TAG        defsubst            "BASIC;DATA"

     parameters: (JUSTIFICATION)

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :DESCRIBE-KB)          "META;KB-CORE"

     parameters: ()

     macros expanded: $SEND, SEND

     uses keywords: :DIALOG-STREAM, :KB-INFORM

   prints statistics about the kb to the dialog-stream of the kb.

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :DESELECT-KB)          "META;KB-CORE"

     parameters: ()

   method to be specialized by interface mixins.

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :GLOBAL-TRACE-STATUS)  "META;KB-CORE"

     parameters: ()

     calls: SYS:DELETE*

     macros expanded: $SEND, DO-NAMED, INHIBIT-STYLE-WARNINGS, SEND

     instance variables: PROCS

     uses keywords: :PROT-STATUS, :SEND-IF-HANDLES, :TRACE-STATUS

   provides information on trace in form of a menu item list.

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :INITIALIZE)           "META;KB-CORE"

     parameters: ()

   method to be specialized by the user.

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :KB-INFORM)            "META;KB-CORE"

     parameters: (&OPTIONAL (STREAM *STANDARD-OUTPUT*))

     calls: FORMAT, FORMAT::FORMAT-GET-STREAM, GETHASH, TERPRI

     macros expanded: $SEND, DO-NAMED, GETENTRY, SEND

     instance variables: KB-NAME, PROCS

     special variables: *LANGUAGE*, *STANDARD-OUTPUT*,
          FORMAT::FORMAT-STRING

     uses keywords: :KB-INFORM, :SEND-IF-HANDLES

   prints statistics about the kb to stream.

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :KILL-KB)              "META;KB-CORE"

     parameters: ()

     calls: CURRENT-P

     macros expanded: $SEND, SEND

     instance variables: KB-NAME

     special variables: *CURRENT-KNOWLEDGE-BASE*,
          *KNOWN-KNOWLEDGE-BASES*, SELF

     uses keywords: :MAKE-YOURSELF-CURRENT, :MAKE-YOURSELF-UNKNOWN

   makes the kb unaccessable.
if the kb was current one of the remaining known kbs is made current.

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :MAKE-YOURSELF-CURRENT)  "META;KB-CORE"

     parameters: ()

     calls: IS-ACTIVATED-KB

     macros expanded: $SEND, SEND

     instance variables: LANGUAGE

     special variables: *CURRENT-KNOWLEDGE-BASE*, *LANGUAGE*, SELF

     uses keywords: :DESELECT-KB

   makes the kb to the current one and its language to the current
language.

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :MAKE-YOURSELF-KNOWN)  "META;KB-CORE"

     parameters: ()

     calls: SYS:MEMBER-EQL

     macros expanded: PUSH

     instance variables: KB-NAME

     special variables: *KNOWN-KNOWLEDGE-BASES*

   internal method.
adds the the name of the kb to the list of known kbs.

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :MAKE-YOURSELF-UNKNOWN)  "META;KB-CORE"

     parameters: ()

     calls: SYS:REMOVE*

     instance variables: KB-NAME

     special variables: *KNOWN-KNOWLEDGE-BASES*

   internal method.
removes the name of the kb from the list of known kbs.

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :RESET-KB)             "META;KB-CORE"

     parameters: ()

     macros expanded: $SEND, DO-NAMED, SEND

     instance variables: PROCS

     special variables: *CURRENT-KNOWLEDGE-BASE*, SELF

     uses keywords: :RESET-PROC, :SEND-IF-HANDLES

   sends all processors a :reset message.

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :RESET-KB-CONFIRMED)   "META;KB-CORE"

     parameters: ()

     calls: FORMAT, GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: KB-NAME

     special variables: *LANGUAGE*

     uses keywords: :CONFIRM, :RESET-KB

   asks whether to reset the kb resetting it eventually.

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :RUN)                  "META;KB-CORE"

     parameters: ()

   method to be overwritten by one of the diverse interface mixins.
it is called by :select-kb which is used normally to activate a kb.

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :SELECT-KB)            "META;KB-CORE"

     parameters: ()

     macros expanded: $SEND, SEND

     uses keywords: :MAKE-YOURSELF-CURRENT, :RUN

   activates a kb making it current.

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :START)                "META;KB-CORE"

     parameters: (&OPTIONAL (LIST-OF-INSTRUCTIONS NIL))

     macros expanded: $SEND, SEND

     special variables: *CURRENT-KNOWLEDGE-BASE*, *LANGUAGE*, SELF

     uses keywords: :INITIALIZE, :LANGUAGE, :START-EXECUTION

   initializes the kb and calls :start-execution within an
environment
where *current-knowledge-base* is bound to the kb and *language* to
its language.
:start-execution is evaluated within a catch-form with tag knowledge-
base-stop-tag
which is used by the functiom stop-kb-execution.

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :START-EXECUTION)      "META;KB-CORE"

     parameters: (&OPTIONAL (LIST-OF-INSTRUCTIONS NIL))

     calls: EVAL, SYS:SUBST-EQL

     instance variables: INSTRUCTIONS

     special variables: $SELF, SELF

   evaluates the instructions provided by the parameter list-of-
instructions
or those from the slot instructions within a progn form with self
bound to the kb.

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :START-KB)             "META;KB-CORE"

     parameters: (&OPTIONAL (LIST-OF-INSTRUCTIONS NIL))

     macros expanded: $SEND, SEND

     uses keywords: :START

   same as :start.

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :START-KB-CONFIRMED)   "META;KB-CORE"

     parameters: ()

     calls: FORMAT, GETHASH

     macros expanded: $SEND, GETENTRY, LEXPR-$SEND, LEXPR-SEND, SEND

     instance variables: KB-NAME

     special variables: *LANGUAGE*, SELF

     uses keywords: :BABYLON-FORMAT, :CONFIRM, :GLOBAL-TRACE-STATUS,
          :KB-NAME, :START

   asks whether to start the kb starting it eventually.

-------------------------------------------------------------------

  (:METHOD KB-PROCESSOR-CORE :STORE-DEKLARATION)    "META;KB-CORE"

     parameters: (SPEC)

   internal method.

-------------------------------------------------------------------

  (:METHOD KB-STUB :EVAL)                           "META;KB-STUB"

     parameters: (GOAL MODE SOURCE &REST ARGS)

     calls: ERROR, GETHASH

     macros expanded: BABERROR, GETENTRY, LEXPR-$SEND, LEXPR-SEND

     special variables: *CURRENT-KNOWLEDGE-BASE*, *LANGUAGE*

   asks the user via free-text-processor to evaluate a request.

-------------------------------------------------------------------

  KB-STUB-HANDLER                                   "META;KB-STUB"

     parameters: (SELF IGNORE SELECTOR &REST ARGS)

     macros expanded: $SEND, LEXPR-$SEND, LEXPR-SEND, SEND

     special variables: SELF

     uses keywords: :META-PROCESSOR

-------------------------------------------------------------------

  KNOWLEDGE-BASE                macro               "META;KB-CORE"

     parameters: (KB-NAME &REST INIT-PLIST)

     used as a constant by: KNOWLEDGE-BASE

     calls: COPY-SEQ, FILTER-PLIST, FORMAT::GET-FORMAT-STRING,
          GET-INTERFACE-MIXINS-TO-INCLUDE,
          GET-PROC-MIXINS-TO-INCLUDE, GET-SPECIAL-MIXINS-TO-INCLUDE,
          INTERN, PRIN1, FORMAT::RETURN-FORMAT-STRING, WRITE-STRING

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

     uses keywords: :INTERFACE, :PROCS, :SPECIAL, :STORE-DEKLARATION

   knowledge base constructor.
generates eventually a kb configuration named `PROCESSOR-FOR-<kb-name>`
and
makes an instance of this configuration. init-plist is searched for
values
of the keys :special, :procs and :interface. these are used to build
the
:special, :procs and :interface options of the def-kb-configuration
form.
if one of the values is missing defaults are used instead. if no
values
for :special, :procs and :interface are specified, a default kb-
configuration
is used instead of creating a new one. defaults are taken from
*default-procs*,
*default-interface* and *default-kb-configuration* respectively.

-------------------------------------------------------------------

  KNOWN-AXIOM-SET                                   "BASIC;AXIOMS"

     parameters: (AXSET-NAME)

     called by: (:METHOD AXSET-BASIC :ADDAX),
          (:METHOD AXSET-BASIC :USE-AXIOM-SETS)

     calls: GET-KNOWN-FREE-AXIOM-SETS, GETHASH, SYS:MEMBER-EQL,
          SEND-KB

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT

   checks whether `<axset-name>` is the name of a known axiom set.
returns `<axset-name>`, if it is known and NIL otherwise.

-------------------------------------------------------------------

  LISP                          macro               "COMMON;C-FNS"

     parameters: (&REST FORMLIST)

     expanded in: (:METHOD MINI-RULE-MIXIN :DISPLAY-TRACE-ELEMENT)

-------------------------------------------------------------------

  (:METHOD LISP-MIXIN :EVAL-LISP)                   "META;L-MIXIN"

     parameters: (FORM MODE)

     calls: EVAL

     instance variables: ACTIVE-PROC

     special variables: SELF

   Method to evaluate lisp functions in the context of a kb.

-------------------------------------------------------------------

  (:METHOD LISP-MIXIN :EVAL-LISP-FORM-FOR-PROLOG)   "META;L-MIXIN"

     parameters: (FORM MODE)

     calls: SYS:*APPEND, BUTLAST, CONTAINS-VARS, IS-VARIABLE,
          SYS:MEMBER-EQL, NREVERSE

     macros expanded: SYS::XR-BQ-APPEND

     instance variables: ACTIVE-PROC

     special variables: SELF

   This implements the gentle method to evaluate lisp forms in
Prolog!
  method :EVAL-LISP represents the crude mode.
  get an error, if (first form) is a MACRO or a special function!!!

-------------------------------------------------------------------

  LISP-TYPE                     macro               "META;L-MIXIN"

     parameters: (REQUEST)

-------------------------------------------------------------------

  LOCAL-TO-GLOBAL                                   "BASIC;NET-PROP"

     parameters: (C-EXPR LOCAL-VALUE-ASS)

     called by: (:METHOD CONSTRAINT :EVALUATE-EXPRESSION),
          (:METHOD CONSTRAINT-NET :EVALUATE-EXPRESSION),
          (:METHOD CONSTRAINT-TRACE-MIXIN :EVALUATE-EXPRESSION)

     calls: GET-CONSTRAINT, MAKE-DETERMINED-VALUE-ASS,
          MAKE-GLOBAL-VALUE-ASS, SYS:REMOVE-DUPLICATES*

     macros expanded: $SEND, GET-CONSTR-NAME, GET-PARAMETERS, SEND

     uses keywords: :INTERFACE

-------------------------------------------------------------------

  MAKE-$INSTANCE-ALIST                              "NORMAL;RSTRBASE"

     parameters: (INST-ASS)

     called by: GET-INSTANCE-COMBINATIONS, INST-SLOT-SET,
          MAKE-$INSTANCE-ALIST

     calls: DETERMINE-SET-OF-INSTANCES, MAKE-$INSTANCE-ALIST

     macros expanded: GET-SET-OF-INSTANCES, GET-VAR-OF-INST-ASS,
          INST-ASSIGNMENT-P, MAKE-VALUE-ASSOC, NEXT-INST-ASSIGNMENT

     uses keywords: :IF

   	baut eine Assoziationsliste fuer die variablen
  	des for-all-Konstrukts

-------------------------------------------------------------------

  MAKE-AGENDA-ELEM                                  "BASIC;CSTRNET"

     parameters: (&REST INITS)

     called by: (:METHOD RESTRICTION-NET :REDEFINE-ONE)

     calls: ERROR, SYS:INTERNAL-MAKE-SIMPLE-VECTOR,
          MAKE-ARRAY-INTO-NAMED-STRUCTURE

     macros expanded: LOCF, PUSH

     uses keywords: :ALLOW-OTHER-KEYS, :FILTERED-P, :INIT-TRACE,
          :QUEUE, :TRACE

-------------------------------------------------------------------

  MAKE-BEHAVIOR-DEF                                 "BASIC;FRAMES"

     parameters: (BEHAVIOR-BODY)

     called by: PRINT-FRAME-BEHAVIOR

-------------------------------------------------------------------

  MAKE-BLANKS                                       "COMMON;C-FNS"

     parameters: (NR)

     calls: MAKE-SEQUENCE

     uses keywords: :INITIAL-ELEMENT

-------------------------------------------------------------------

  MAKE-C-EXPR                   macro               "BASIC;BC-FNS"

     parameters: (C-NAME VAR-ALIST)

     expanded in: INST-UNINSTANTIATED-RESTRICTION

-------------------------------------------------------------------

  MAKE-CLAUSES                                      "BASIC;BF-MIXIN"

     parameters: (PRED AN-INSTANCE-NAME VALUES &REST PROP-NAME)

     called by:
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-PREDICATE-REFERENCE)

     calls: SYS:*APPEND, IS-MULTIPLE-VALUE

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS,
          SYS::XR-BQ-APPEND

   make clauses according to Prolog syntax.

-------------------------------------------------------------------

  MAKE-CONSTRAINT-ASSOC         macro               "BASIC;BC-FNS"

     parameters: (NAME CONSTRAINT)

     expanded in: (:METHOD CONSTRAINT-BASE :PUT-COMPOUND),
          (:METHOD CONSTRAINT-BASE :PUT-PRIMITIVE),
          (:METHOD RESTRICTION-BASE :PUT-RESTRICTIONS)

-------------------------------------------------------------------

  MAKE-DEFINSTANCE-EXAMPLE                          "BASIC;FRAMES"

     parameters: ()

     called by: CHECK-INSTANCE-DEFINITION

     calls: FORMAT, GETHASH

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  MAKE-DETERMINED-VALUE-ASS                         "BASIC;NET-PROP"

     parameters: (VARIABLES VALUE-ASS)

     called by: LOCAL-TO-GLOBAL

     calls: INTERSECT-ASSOCIATED-VALUE-SPECS

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS,
          MAKE-VALUE-ASSOC

-------------------------------------------------------------------

  MAKE-FACTS-CHOICE                                 "NORMAL;NR-EXPL"

     parameters: (NUMBERED-FACTS &OPTIONAL (ITEM-LEN *ITEM-WIDTH*))

     called by: MAKE-FACTS-CHOICE,
          (:METHOD RULE-EXPLAIN-MIXIN :WHICH-FACT)

     calls: COMPLETE-TO-N, FROM-LIST-TO-STRING, MAKE-FACTS-CHOICE

     special variables: *ITEM-WIDTH*

     uses keywords: :VALUE

-------------------------------------------------------------------

  MAKE-FRAME-DEFINITION-EXAMPLE                     "BASIC;FRAMES"

     parameters: ()

     called by: CHECK-FRAME-DEFINITION

     calls: FORMAT, GETHASH

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  MAKE-FRAME-NAME                                   "BASIC;FRAMES"

     parameters: (FRAME-NAME)

     called by: (:METHOD FRAME-BASE :NEW-FRAME-FORM)

     calls: %MAKE-OBJECT-NAME

-------------------------------------------------------------------

  MAKE-FULL-RULE-EXAMPLE                            "BASIC;RULES"

     parameters: ()

     called by: CHECK-RULE-SYNTAX

     calls: FORMAT, GETHASH, MAKE-LHS-EXAMPLE, MAKE-RHS-EXAMPLE

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  MAKE-GLOBAL-VALUE-ASS                             "BASIC;NET-PROP"

     parameters: (GLOBAL-VARS LOCAL-VARS LOCAL-VALUE-ASS)

     called by: LOCAL-TO-GLOBAL, MAKE-GLOBAL-VALUE-ASS

     calls: SYS:ASSOC-EQUAL, ERROR, GETHASH,
          MAKE-GLOBAL-VALUE-ASS

     macros expanded: BABERROR, GET-VALUE-SPEC, GETENTRY,
          MAKE-VALUE-ASSOC

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  MAKE-INFO-ASSOC               macro               "BASIC;CSTRNET"

     parameters: (VAR VAR-INFO)

     expanded in: CREATE-VAR-INFO-ALIST

-------------------------------------------------------------------

  MAKE-INSTANCE-NAME                                "BASIC;FRAMES"

     parameters: (INSTANCE-NAME)

     called by: (:METHOD FRAME-BASE :NEW-INSTANCE)

     used as a constant by: SET-INSTANCE-POINTER

     calls: %MAKE-OBJECT-NAME

-------------------------------------------------------------------

  MAKE-JUSTIFICATION                                "BASIC;DATA"

     parameters: (&REST INITS)

     called by: (:METHOD DATA-BASE :ADD-AS-NEGATIVE),
          (:METHOD DATA-BASE :ADD-AS-POSITIVE),
          (:METHOD DATA-BASE :ADD-AS-UNKNOWN),
          (:METHOD DATA-BASE :ADD-DIRECT-DEDUCED),
          (:METHOD DATA-BASE :ADD-UNPROVABLE)

     calls: ERROR, SYS:INTERNAL-MAKE-SIMPLE-VECTOR,
          MAKE-ARRAY-INTO-NAMED-STRUCTURE

     macros expanded: LOCF

     uses keywords: :ALLOW-OTHER-KEYS

-------------------------------------------------------------------

  MAKE-LHS-EXAMPLE                                  "BASIC;RULES"

     parameters: ()

     called by: MAKE-FULL-RULE-EXAMPLE

     calls: FORMAT, GETHASH

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  MAKE-LOCAL-VALUE-ASS                              "BASIC;NET-PROP"

     parameters: (GLOBAL-VARS LOCAL-VARS NET-SPEC)

     called by:
          (:METHOD CONSTRAINT-TRACE-MIXIN :EVALUATE-EXPRESSION),
          GLOBAL-TO-LOCAL, MAKE-LOCAL-VALUE-ASS

     calls: SYS:ASSOC-EQUAL, ERROR, GET-VAR-INFO-VALUES, GETHASH,
          MAKE-LOCAL-VALUE-ASS

     macros expanded: BABERROR, GETENTRY, MAKE-VALUE-ASSOC

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  MAKE-MULTIPLE-ANSWER                              "COMMON;C-FNS"

     parameters: (X)

     called by: (:METHOD POSS-VAL-MIXIN :SOME-OF-READ-METHOD)

     uses keywords: :MULTIPLE-VALUE

-------------------------------------------------------------------

  MAKE-MULTIPLE-VALUE                               "COMMON;C-FNS"

     parameters: (X)

     uses keywords: :MULTIPLE-VALUE

-------------------------------------------------------------------

  MAKE-NUMBERED-FACTS                               "NORMAL;NR-EXPL"

     parameters: (FACTS)

     called by: (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-ACTION),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-PREMISE),
          (:METHOD RULE-EXPLAIN-MIXIN :HOW)

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

-------------------------------------------------------------------

  MAKE-OP-HEADER                                    "NORMAL;NR-DEVEL"

     parameters: (OP ITEM-LEN SIDE)

     called by: (:METHOD RULE-DEVELOP-MIXIN :MAKE-RULE-ITEMS)

     calls: COMPLETE-TO-N, COPY-SEQ, FORMAT::GET-FORMAT-STRING,
          PRIN1, FORMAT::RETURN-FORMAT-STRING, WRITE-CHAR,
          WRITE-STRING

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

-------------------------------------------------------------------

  MAKE-REC-CLAUSE-ITEMS                             "NORMAL;NP-DEVEL"

     parameters: (CLAUSE AXIOM-SETS
          &OPTIONAL PREVIOUS-PREDICATE (ITEM-LEN 60))

     called by: (:METHOD AX-DEVELOP-MIXIN :MOM-SHOW-PREMISE)

     calls: COMPLETE-TO-N, CONCATENATE, FROM-LIST-TO-STRING,
          MAKE-STRING-OF-LENGTH, REVERSE

     macros expanded: BODY, IS-FACT, PUSH

     uses keywords: :MOM-SHOW-PREMISE, :VALUE

-------------------------------------------------------------------

  MAKE-RHS-EXAMPLE                                  "BASIC;RULES"

     parameters: ()

     called by: MAKE-FULL-RULE-EXAMPLE

     calls: FORMAT, GETHASH

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  MAKE-RULE-HEADER                                  "NORMAL;NR-DEVEL"

     parameters: (RULE-NAME ITEM-LEN)

     called by: (:METHOD RULE-DEVELOP-MIXIN :MAKE-RULE-ITEMS)

     calls: COMPLETE-TO-N, FORMAT, GETHASH

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  MAKE-SIMPLE-VAL-ASSOC         macro               "BASIC;BC-FNS"

     parameters: (VAR VALUE)

     expanded in: SPLIT-AND-PUT-ASSOCIATION

-------------------------------------------------------------------

  MAKE-SLOT-REF                 macro               "NORMAL;RESTRICT"

     parameters: (OBJECT SLOT)

     expanded in: INST-SLOT-REF, (:METHOD RESTRICTED-SLOT :PUT)

-------------------------------------------------------------------

  MAKE-SLOT-SPECIFICATION-EXAMPLE                   "BASIC;FRAMES"

     parameters: ()

     called by: CHECK-FRAME-DEFINITION

     calls: FORMAT, GETHASH

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  MAKE-STACK-ELEM                                   "BASIC;CSTRNET"

     parameters: (&REST INITS)

     called by: (:METHOD CONSTRAINT-NET :STORE-STATE)

     calls: ERROR, SYS:INTERNAL-MAKE-SIMPLE-VECTOR,
          MAKE-ARRAY-INTO-NAMED-STRUCTURE

     macros expanded: LOCF, PUSH

     uses keywords: :ALLOW-OTHER-KEYS, :QUEUE, :TRACE, :VALUES

-------------------------------------------------------------------

  MAKE-STRING-OF-LENGTH                             "COMMON;C-FNS"

     parameters: (NR &OPTIONAL (Z #\SPACE))

     called by: (:METHOD AX-DEVELOP-MIXIN :MOM-SHOW-PREMISE),
          MAKE-REC-CLAUSE-ITEMS,
          "hd: SC80:BABYLON:KERNEL:META:KB-TAB-G"

     calls: CHARACTER, MAKE-SEQUENCE

     uses keywords: :INITIAL-ELEMENT

-------------------------------------------------------------------

  MAKE-SUPERS-SPECIFICATION-EXAMPLE                 "BASIC;FRAMES"

     parameters: ()

     called by: CHECK-FRAME-DEFINITION

     calls: FORMAT, GETHASH

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  MAKE-TERM-ITEM                                    "NORMAL;NR-DEVEL"

     parameters: (TERM MODE RULES ITEM-LEN SPACES-FOR-ITEM)

     called by: (:METHOD RULE-DEVELOP-MIXIN :MAKE-RULE-ITEMS)

     calls: COMPLETE-TO-N, COPY-SEQ, FROM-LIST-TO-STRING,
          FORMAT::GET-FORMAT-STRING, PRINC,
          FORMAT::RETURN-FORMAT-STRING

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

     uses keywords: :VALUE

-------------------------------------------------------------------

  MAKE-TRACE-ELEM               macro               "BASIC;BC-FNS"

     parameters: (C-EXPR VALUE-ALIST)

     expanded in: (:METHOD CONSTRAINT-NET :UPDATE-AGENDA)

-------------------------------------------------------------------

  MAKE-TRACE-ELEMENT                                "MINI;MR-TRACE"

     parameters: (&REST INITS)

     called by: (:METHOD RULE-TRACE-MIXIN :BEFORE :IN-THEN-PART),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :REMEMBER),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :STORE),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :ASK-USER),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :TRY-RULE),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :VERIFY-HYPOTHESIS)

     calls: ERROR, SYS:INTERNAL-MAKE-SIMPLE-VECTOR,
          MAKE-ARRAY-INTO-NAMED-STRUCTURE

     macros expanded: LOCF

     uses keywords: :ALLOW-OTHER-KEYS

-------------------------------------------------------------------

  MAKE-VALUE-ASS-OF-POSTED-SLOTS                    "NORMAL;RSTREVAL"

     parameters: (LIST-OF-SLOTS NET-SPEC)

     called by: MAKE-VALUE-ASS-OF-POSTED-SLOTS,
          (:METHOD RESTRICTION-NET :GET-STABLE-STATE)

     calls: COPY-SLOT-VALUE, FURTHER-SLOT-RESTRICTION-P,
          MAKE-VALUE-ASS-OF-POSTED-SLOTS

     macros expanded: MAKE-VALUE-ASSOC

   	liefert Wertebelegung derjenigen Slots, die seit dem
  	letzten stabilen Zustand staerker eingeschraenkt wurden

-------------------------------------------------------------------

  MAKE-VALUE-ASSOC              macro               "BASIC;BC-FNS"

     parameters: (VAR VALUE-SPEC)

     expanded in: ADJUST-VALUE-ASS, CHOOSE-VALUE-ASSIGNMENT,
          COMBINE-TWO-ALISTS,
          (:METHOD CONSTRAINT-NET :INTERFACE-ASSIGNMENT),
          (:METHOD CONSTRAINT-NET :STORE-STATE),
          (:METHOD CONSTRAINT-NET :TEST-CHOICES),
          (:METHOD CONSTRAINT-TRACE-MIXIN :BEFORE :TEST-CHOICES),
          CONVERT-SIMPLE-TO-MULTIPLE, EMPTY-ALIST,
          EVAL-FIRST-VALUE-ASS, MAKE-$INSTANCE-ALIST,
          MAKE-DETERMINED-VALUE-ASS, MAKE-GLOBAL-VALUE-ASS,
          MAKE-LOCAL-VALUE-ASS, MAKE-VALUE-ASS-OF-POSTED-SLOTS,
          NEW-ASSOCIATION, (:METHOD RESTRICTED-SLOT :PUT)

-------------------------------------------------------------------

  MAKE-VAR-ASSOC                macro               "BASIC;BC-FNS"

     parameters: (LOCAL GLOBAL)

-------------------------------------------------------------------

  MAKE-VAR-INFO                                     "BASIC;CSTRNET"

     parameters: (&REST INITS)

     called by: CREATE-VAR-INFO-ALIST

     calls: ERROR, SYS:INTERNAL-MAKE-SIMPLE-VECTOR,
          MAKE-ARRAY-INTO-NAMED-STRUCTURE

     macros expanded: LOCF, PUSH

     uses keywords: :ALLOW-OTHER-KEYS, :CONSTRAINTS, :INIT-VALUES,
          :VALUES

-------------------------------------------------------------------

  MAKE-VARCELL                                      "BASIC;AX-SC"

     parameters: (&REST INITS)

     called by: TRANS-CLAUSE1

     used as a constant by: GEN-VARCELL

     calls: ERROR, SYS:INTERNAL-MAKE-SIMPLE-VECTOR

     macros expanded: LOCF

     uses keywords: :ALLOW-OTHER-KEYS

-------------------------------------------------------------------

  MARK-PRED                                         "MINI;MP-TRACE"

     parameters: (PRED)

     called by: (:METHOD PROLOG-TRACE-MIXIN :SYNCHRONIZE-TRACE)

     calls: SYS::SETPROP

-------------------------------------------------------------------

  MATCH-FIRST                                       "BASIC;RULES"

     parameters: (X Y)

     called by: FILTER-FIRST, (:METHOD RULE-INTERPRETER :OBTAIN)

-------------------------------------------------------------------

  MATCH-FIRST-AND-SECOND                            "BASIC;RULES"

     parameters: (X Y)

     called by: (:METHOD RULE-INTERPRETER :OBTAIN)

-------------------------------------------------------------------

  MATCH-SECOND                                      "BASIC;RULES"

     parameters: (X Y)

     called by: FILTER-SECOND

-------------------------------------------------------------------

  MENU-CHOOSE-TRANSLATE                             "MINI;ASK-SUPP"

     parameters: (DESIRED-VALUE NEGATION-FLAG)

     called by: (:METHOD POSS-VAL-MIXIN :INSTANCE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :ONE-OF-READ-METHOD)

     calls: FORMAT, GETHASH

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  MENU-MULT-CHOOSE-TRANSLATE                        "MINI;ASK-SUPP"

     parameters: (DESIRED-VALUE NEGATION-FLAG)

     called by: (:METHOD POSS-VAL-MIXIN :SOME-OF-READ-METHOD)

     calls: FORMAT, GETHASH

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  (:METHOD META-PROCESSOR-CORE :AFTER :INIT)        "META;M-MIXIN"

     parameters: (&REST PLIST)

     instance variables: ACTIVE-PROC

     special variables: SELF

-------------------------------------------------------------------

  (:METHOD META-PROCESSOR-CORE :BEFORE :EVAL)       "META;M-MIXIN"

     parameters: (EXPRESSION MODE PROCESSOR &REST ARGS)

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: SYSTEM-TRACE

     special variables: *LANGUAGE*

     uses keywords: :FORMAT, :SEND-SYSTEM-TRACE-WINDOW

   Trace :eval messages.

-------------------------------------------------------------------

  (:METHOD META-PROCESSOR-CORE :EVAL)               "META;M-MIXIN"

     parameters: (EXPRESSION MODE PROCESSOR &REST ARGS)

     calls: ERROR, GETHASH

     macros expanded: $SEND, BABERROR, GETENTRY, LEXPR-$SEND,
          LEXPR-SEND, SEND

     special variables: *LANGUAGE*, SELF

     uses keywords: :GET-TYPE

   Evaluate an expression in mode mode for processor processor.

-------------------------------------------------------------------

  (:METHOD META-PROCESSOR-CORE :HELP)               "META;M-MIXIN"

     parameters: ()

-------------------------------------------------------------------

  (:METHOD META-PROCESSOR-CORE :RETURN-NIL)         "META;M-MIXIN"

     parameters: (EXPRESSION MODE &REST ARGS)

   Always returns nil.

-------------------------------------------------------------------

  (:METHOD META-PROCESSOR-CORE :SEND-SYSTEM-TRACE-WINDOW)
                                                    "META;M-MIXIN"

     parameters: (SELECTOR &REST ARGS)

     macros expanded: LEXPR-$SEND, LEXPR-SEND

     instance variables: SYSTEM-TRACE-WINDOW

-------------------------------------------------------------------

  (:METHOD META-PROCESSOR-CORE :TOGGLE-SYSTEM-TRACE)  "META;M-MIXIN"

     parameters: ()

     instance variables: SYSTEM-TRACE

   Toggles system trace mode.

-------------------------------------------------------------------

  (:METHOD META-PROCESSOR-CORE :TRACE-STATUS)       "META;M-MIXIN"

     parameters: ()

     calls: FORMAT, GETHASH

     macros expanded: GETENTRY

     instance variables: SYSTEM-TRACE

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  (:METHOD MINI-CONSTRAINT-MIXIN :CHOOSE-TRACE-MODE)  "MINI;MC-MIXIN"

     parameters: ()

     calls: BUILD-CONSTRAINT-TRACE-ITEM-LIST,
          CHOOSE-CONSTRAINT-TRACE-MODE, UPDATE-CONSTRAINT-TRACE-MODE

     macros expanded: $SEND, SEND

     uses keywords: :CHOOSE-C-TYPE

   ermoeglicht dem Benutzer das An- und Ausschalten von trace-Modes

-------------------------------------------------------------------

  (:METHOD MINI-CONSTRAINT-MIXIN :GENERATE-CONSTRAINT-PROCESSOR)
                                                    "MINI;MC-MIXIN"

     parameters: ()

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: CONSTRAINT-PROCESSOR

     special variables: SELF

     uses keywords: :META-PROCESSOR

   erzeugt einen Constraint-Prozessor

-------------------------------------------------------------------

  (:METHOD MINI-CONSTRAINT-MIXIN :PROTOCOL)         "MINI;MC-MIXIN"

     parameters: (EXPR-TYPE EXPR)

     calls: COPY-SEQ, FORMAT, FORMAT::GET-FORMAT-STRING, GETHASH,
          PRIN1, FORMAT::RETURN-FORMAT-STRING, WRITE-STRING

     macros expanded: $SEND, CASE, GET-VALUE-SPEC, GET-VAR, GETENTRY,
          SEND

     special variables: *LANGUAGE*, *STANDARD-OUTPUT*,
          FORMAT::FORMAT-STRING

     uses keywords: :CHOICE, :ENTER, :EXIT, :FAIL, :FORMAT,
          :SEND-CONSAT-TRACE-WINDOW

    Eingabe: expr-type = :enter, :exit, :choice

-------------------------------------------------------------------

  (:METHOD MINI-CONSTRAINT-MIXIN :SEND-CONSAT-TRACE-WINDOW)
                                                    "MINI;MC-MIXIN"

     parameters: (SELECTOR &REST ARGS)

     macros expanded: LEXPR-$SEND, LEXPR-SEND

     instance variables: CONSAT-TRACE-WINDOW

   passes messages to consat-trace-window.

-------------------------------------------------------------------

  (:METHOD MINI-CONSTRAINT-MIXIN :SET-UP-CONSTRAINT-CMDS)
                                                    "MINI;MC-MIXIN"

     parameters: ()

     calls: GETHASH

     macros expanded: $SEND, SEND

     uses keywords: :ADD-OPERATIONS, :ADD-SUB-OPERATIONS, :CONSAT,
          :LANGUAGE, :OPERATION-HANDLED-P, :TOP

-------------------------------------------------------------------

  (:METHOD MINI-CONSTRAINT-MIXIN :UPDATE-CONSTRAINT-TRACE)
                                                    "MINI;MC-MIXIN"

     parameters: ()

     calls: CONSTRAINT-ASSOC-TRACEDP, SOME

     macros expanded: $SEND, SEND

     instance variables: CONSTRAINT-NETS, CONSTRAINT-PROCESSOR,
          CONSTRAINTS

     uses keywords: :SET-TRACE

-------------------------------------------------------------------

  (:METHOD MINI-CONSTRAINT-PROCESSOR :TRACE-STATUS)  "MINI;MC-PROC"

     parameters: ()

     calls: FORMAT, GETHASH

     macros expanded: GETENTRY

     instance variables: TRACE

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  (:METHOD MINI-FRAME-MIXIN :GENERATE-FRAME-PROCESSOR)  "MINI;MF-
MIXIN"

     parameters: ()

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: FRAME-PROCESSOR

     special variables: SELF

     uses keywords: :META-PROCESSOR

   generates an instance of mini-frame-processor.

-------------------------------------------------------------------

  (:METHOD MINI-FRAME-PROCESSOR :AFTER :INIT)       "MINI;MF-PROC"

     parameters: (&REST PLIST)

     instance variables: FRAME-TYPE

-------------------------------------------------------------------

  (:METHOD MINI-PROLOG-MIXIN :AFTER :SHOW-STATUS)   "MINI;MP-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     uses keywords: :SHOW-TRACE-STATUS

-------------------------------------------------------------------

  (:METHOD MINI-PROLOG-MIXIN :AFTER :MAKE-YOURSELF-CURRENT)
                                                    "MINI;MP-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: PROLOG-PROCESSOR

     uses keywords: :SYNCHRONIZE-TRACE

-------------------------------------------------------------------

  (:METHOD MINI-PROLOG-MIXIN :GENERATE-PROLOG-PROCESSOR)
                                                    "MINI;MP-MIXIN"

     parameters: ()

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: PROLOG-PROCESSOR

     special variables: SELF

     uses keywords: :ALTERNATE-META-PROCESSOR, :META-PROCESSOR,
          :ROOT-TYPE

   generates an instance of mini-prolog-processor.
the instance is bound to the instance variable prolog-processor.

-------------------------------------------------------------------

  (:METHOD MINI-PROLOG-MIXIN :SELECT-FOR-TRACE)     "MINI;MP-MIXIN"

     parameters: (&OPTIONAL CLEAR)

     calls: SYS:*NCONC, COPY-LIST, DIFF-LIST, GET-PREDICATES,
          SYS:REMOVE*

     macros expanded: $SEND, DO-NAMED, SEND

     instance variables: PROLOG-PROCESSOR

     uses keywords: :AXIOMS, :SELECT-AXSET-NAME,
          :SELECT-PREDS-FOR-TRACING, :SET-TRACE-LIST,
          :SYNCHRONIZE-TRACE, :TRACE-LIST

-------------------------------------------------------------------

  (:METHOD MINI-PROLOG-MIXIN :SELECT-PREDS-FOR-TRACING)
                                                    "MINI;MP-MIXIN"

     parameters: (AXSET-NAME)

     calls: CONCATENATE, GET-PREDICATES, GETHASH, SYS::STRING-AUX

     macros expanded: $SEND, CASE, GETENTRY, SEND, STRING, TYPECASE

     special variables: *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU, :SELECT-PREDS-TO-TOGGLE

-------------------------------------------------------------------

  (:METHOD MINI-PROLOG-MIXIN :SELECT-PREDS-TO-TOGGLE)  "MINI;MP-
MIXIN"

     parameters: (AXSET-NAME)

     calls: CONCATENATE, COPY-SEQ, FORMAT::GET-FORMAT-STRING,
          GETHASH, SYS:MEMBER-EQL, NREVERSE, PRIN1, PRINC,
          FORMAT::RETURN-FORMAT-STRING, SYS::STRING-AUX,
          WRITE-CHAR

     macros expanded: $SEND, DO-NAMED, GETENTRY,
          INHIBIT-STYLE-WARNINGS, SEND, STRING, TYPECASE

     instance variables: PROLOG-PROCESSOR

     special variables: *LANGUAGE*, *STANDARD-OUTPUT*,
          FORMAT::FORMAT-STRING

     uses keywords: :GET-PREDS-WITH-MARK, :MULT-CHOOSE-FROM-MENU

-------------------------------------------------------------------

  (:METHOD MINI-PROLOG-MIXIN :SEND-PROLOG-TRACE-WINDOW)
                                                    "MINI;MP-MIXIN"

     parameters: (SELECTOR &REST ARGS)

     macros expanded: LEXPR-$SEND, LEXPR-SEND

     instance variables: PROLOG-TRACE-WINDOW

   passes messages to prolog-trace-window.

-------------------------------------------------------------------

  (:METHOD MINI-PROLOG-MIXIN :SET-PROLOG-TRACE-MODE)  "MINI;MP-MIXIN"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     instance variables: PROLOG-PROCESSOR

     uses keywords: :SET-TRACE-MODE

   sets the trace mode.

-------------------------------------------------------------------

  (:METHOD MINI-PROLOG-MIXIN :SET-PROLOG-TRACE-OPTIONS)
                                                    "MINI;MP-MIXIN"

     parameters: ()

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, LEXPR-$SEND, LEXPR-SEND, SEND

     special variables: *LANGUAGE*, SELF

     uses keywords: :CHOOSE-FROM-MENU

-------------------------------------------------------------------

  (:METHOD MINI-PROLOG-MIXIN :SET-UP-PROLOG-CMDS)   "MINI;MP-MIXIN"

     parameters: ()

     calls: GETHASH

     macros expanded: $SEND, SEND

     uses keywords: :ADD-OPERATIONS, :ADD-SUB-OPERATIONS, :LANGUAGE,
          :OPERATION-HANDLED-P, :PROLOG, :PROLOG-TRACE, :TOP

-------------------------------------------------------------------

  (:METHOD MINI-PROLOG-MIXIN :SHOW-TRACE-STATUS)    "MINI;MP-MIXIN"

     parameters: ()

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: PROLOG-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :PROLOG-TRACE, :TRACE-LIST,
          :TRACE-MODE

   displays all predicates currently traced and the trace modus
selected

-------------------------------------------------------------------

  (:METHOD MINI-PROLOG-MIXIN :TOGGLE-PROLOG-TRACE)  "MINI;MP-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: PROLOG-PROCESSOR

     uses keywords: :TOGGLE-PROLOG-TRACE

   toggles rule tracing.

-------------------------------------------------------------------

  (:METHOD MINI-PROLOG-MIXIN :TRACE-PREDS)          "MINI;MP-MIXIN"

     parameters: (PREDS)

     macros expanded: $SEND, SEND

     instance variables: PROLOG-PROCESSOR

     uses keywords: :SET-TRACE-LIST, :SYNCHRONIZE-TRACE

-------------------------------------------------------------------

  (:METHOD MINI-RULE-MIXIN :CALL-RULE-TRACE-DISPLAYER)  "MINI;MR-
MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: RULE-TRACE-DISPLAYER

-------------------------------------------------------------------

  (:METHOD MINI-RULE-MIXIN :DISPLAY-RULE-TRACE)     "MINI;MR-MIXIN"

     parameters: (&OPTIONAL (FILTER #'IDENTITY))

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: RULE-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :DISPLAY-TRACE-ELEMENT, :FILTER-TRACE-LIST,
          :FORMAT, :SEND-RULE-TRACE-WINDOW

-------------------------------------------------------------------

  (:METHOD MINI-RULE-MIXIN :DISPLAY-RULES-ASKING)   "MINI;MR-MIXIN"

     parameters: ()

     calls: RULE-ASKING-P

     macros expanded: $SEND, SEND

     uses keywords: :DISPLAY-RULE-TRACE

-------------------------------------------------------------------

  (:METHOD MINI-RULE-MIXIN :DISPLAY-RULES-TRIED)    "MINI;MR-MIXIN"

     parameters: ()

     calls: RULE-TRIED-P

     macros expanded: $SEND, SEND

     uses keywords: :DISPLAY-RULE-TRACE

-------------------------------------------------------------------

  (:METHOD MINI-RULE-MIXIN :DISPLAY-RULES-USED)     "MINI;MR-MIXIN"

     parameters: ()

     calls: RULE-USED-P

     macros expanded: $SEND, SEND

     uses keywords: :DISPLAY-RULE-TRACE

-------------------------------------------------------------------

  (:METHOD MINI-RULE-MIXIN :DISPLAY-TRACE-ELEMENT)  "MINI;MR-MIXIN"

     parameters: (TRACE-ELEMENT)

     calls: GETHASH

     macros expanded: $SEND, CASE, GET-ACTION-TYPE, GETENTRY, LISP,
          SEND

     special variables: *LANGUAGE*

     uses keywords: :ASK-USER, :FORMAT, :IN-THEN-PART, :REMEMBER,
          :SEND-RULE-TRACE-WINDOW, :STORE, :TRY-RULE,
          :VERIFY-HYPOTHESIS

-------------------------------------------------------------------

  (:METHOD MINI-RULE-MIXIN :GENERATE-RULE-PROCESSOR)  "MINI;MR-MIXIN"

     parameters: ()

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: RULE-PROCESSOR

     special variables: SELF

     uses keywords: :ALTERNATE-META-PROCESSOR, :META-PROCESSOR

   generates an instance of mini-rule-processor.

-------------------------------------------------------------------

  (:METHOD MINI-RULE-MIXIN :MARK-ALL)               "MINI;MR-MIXIN"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     instance variables: RULE-PROCESSOR

     uses keywords: :GET-RULE-NAMES, :GET-RULE-SET-NAMES,
          :MARK-RULES

-------------------------------------------------------------------

  (:METHOD MINI-RULE-MIXIN :RULE-TRACE)             "MINI;MR-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: RULE-PROCESSOR

     uses keywords: :RULE-TRACE

   gets rule trace status.

-------------------------------------------------------------------

  (:METHOD MINI-RULE-MIXIN :SELECT-RULES-FOR-TRACING)  "MINI;MR-
MIXIN"

     parameters: (&OPTIONAL CLEAR)

     calls: CONCATENATE, GETHASH, SYS::STRING-AUX

     macros expanded: $SEND, CASE, GETENTRY, SEND, STRING, TYPECASE

     instance variables: RULE-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU, :GET-RULE-NAMES,
          :GET-RULE-SET-NAMES, :MARK-ALL, :MARK-RULES,
          :SELECT-RULE-SET-NAME, :SELECT-RULES-TO-TOGGLE,
          :TOGGLE-RULES

-------------------------------------------------------------------

  (:METHOD MINI-RULE-MIXIN :SELECT-RULES-TO-TOGGLE)  "MINI;MR-MIXIN"

     parameters: (RULE-SET-NAME)

     calls: CONCATENATE, COPY-SEQ, FORMAT::GET-FORMAT-STRING,
          GETHASH, PRIN1, PRINC, FORMAT::RETURN-FORMAT-STRING,
          SYS::STRING-AUX, WRITE-CHAR

     macros expanded: $SEND, CASE, DO-NAMED, GETENTRY,
          INHIBIT-STYLE-WARNINGS, SEND, STRING, TYPECASE

     instance variables: RULE-PROCESSOR

     special variables: *LANGUAGE*, *STANDARD-OUTPUT*,
          FORMAT::FORMAT-STRING

     uses keywords: :GET-RULES-WITH-MARK, :MULT-CHOOSE-FROM-MENU

-------------------------------------------------------------------

  (:METHOD MINI-RULE-MIXIN :SEND-RULE-TRACE-WINDOW)  "MINI;MR-MIXIN"

     parameters: (SELECTOR &REST ARGS)

     macros expanded: LEXPR-$SEND, LEXPR-SEND

     instance variables: RULE-TRACE-WINDOW

   passes messages to rule-trace-window.

-------------------------------------------------------------------

  (:METHOD MINI-RULE-MIXIN :SET-RULE-TRACE-MODE)    "MINI;MR-MIXIN"

     parameters: (MODE)

     macros expanded: $SEND, SEND

     instance variables: RULE-PROCESSOR

     uses keywords: :SET-TRACE-MODE

   sets rule trace mode.

-------------------------------------------------------------------

  (:METHOD MINI-RULE-MIXIN :SET-RULE-TRACE-OPTIONS)  "MINI;MR-MIXIN"

     parameters: ()

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, LEXPR-$SEND, LEXPR-SEND, SEND

     special variables: *LANGUAGE*, SELF

     uses keywords: :CHOOSE-FROM-MENU

-------------------------------------------------------------------

  (:METHOD MINI-RULE-MIXIN :SET-UP-RULE-CMDS)       "MINI;MR-MIXIN"

     parameters: ()

     calls: GETHASH

     macros expanded: $SEND, SEND

     uses keywords: :ADD-OPERATIONS, :ADD-SUB-OPERATIONS, :LANGUAGE,
          :OPERATION-HANDLED-P, :RULE, :RULE-TRACE, :TOP

-------------------------------------------------------------------

  (:METHOD MINI-RULE-MIXIN :TOGGLE-RULE-TRACE)      "MINI;MR-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: RULE-PROCESSOR

     uses keywords: :TOGGLE-RULE-TRACE

   toggles rule tracing.

-------------------------------------------------------------------

  MODIFY-NET-VALUE-ASS                              "BASIC;CSTRNET"

     parameters: (NEW-VALUE-ASS NET-SPEC)

     called by: (:METHOD CONSTRAINT-NET :RESTORE-STATE),
          (:METHOD CONSTRAINT-NET :UPDATE-VARIABLES)

     calls: SYS:ASSOC-EQUAL, REPLACE-VAR-INFO-VALUES

     macros expanded: DO-NAMED, GET-VALUE-SPEC, GET-VAR,
          INHIBIT-STYLE-WARNINGS

-------------------------------------------------------------------

  MORE-CONSTRAINED-P                                "BASIC;BC-FNS"

     parameters: (VALUE-SPEC1 VALUE-SPEC2)

     called by: SOME-NEW-RESTRICTIONS-P

     calls: DIFFERENCE-EMPTY-P

-------------------------------------------------------------------

  MULTIPLE-EVALUATION                               "BASIC;PRIMCSTR"

     parameters: (RELATION VARIABLES LIST-OF-VALUE-ASS)

     called by: (:METHOD CONSTRAINT :ACTIVATE), MULTIPLE-EVALUATION

     calls: SYS:*APPEND, EVALUATE-RELATION, MULTIPLE-EVALUATION

-------------------------------------------------------------------

  NEW-ASSOCIATION                                   "BASIC;BC-FNS"

     parameters: (VARIABLE VALUE)

     called by: EVALUATE-PATTERN, EVALUATE-TUPEL

     macros expanded: MAKE-VALUE-ASSOC

-------------------------------------------------------------------

  NEXT-INST-ASSIGNMENT          macro               "NORMAL;RSTRBASE"

     parameters: (INST-ASS)

     expanded in: GET-SLOT-REFS, MAKE-$INSTANCE-ALIST

-------------------------------------------------------------------

  (:METHOD NORMAL-CONSTRAINT-MIXIN :AFTER :NEW&DELETE-RESTRICTION)
                                                    "NORMAL;NC-MIXIN"

     parameters: (&REST IGNORE)

     macros expanded: $SEND, SEND

     instance variables: CONSTRAINT-PROCESSOR, RESTRICTION-NETS

     uses keywords: :SET-RESTRICTION-NETS

   runterreichen der definierten Restrictions

-------------------------------------------------------------------

  (:METHOD NORMAL-CONSTRAINT-MIXIN :GENERATE-CONSTRAINT-PROCESSOR)
                                                    "NORMAL;NC-MIXIN"

     parameters: ()

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: CONSTRAINT-PROCESSOR

     special variables: SELF

     uses keywords: :META-PROCESSOR

    erzeugt einen Constraint-Prozessor

-------------------------------------------------------------------

  (:METHOD NORMAL-CONSTRAINT-PROCESSOR :AFTER :KB-INFORM)
                                                    "NORMAL;NC-PROC"

     parameters: (STREAM)

     calls: FORMAT, GETHASH, TERPRI

     macros expanded: GETENTRY

     instance variables: RESTRICTION-NETS

     special variables: *LANGUAGE*

   gibt die Zahl der Restrictions aus

-------------------------------------------------------------------

  (:METHOD NORMAL-CONSTRAINT-PROCESSOR :AFTER :PRINT)  "NORMAL;NC-
PROC"

     parameters: (&OPTIONAL (STREAM *STANDARD-OUTPUT*))

     calls: PRINT-CONSTRAINT-LIST

     instance variables: RESTRICTION-NETS

     special variables: *STANDARD-OUTPUT*

   gibt alle definierten Restrictions in wiedereinlesbarer Form aus.

-------------------------------------------------------------------

  (:METHOD NORMAL-CONSTRAINT-PROCESSOR :AFTER :RESET-PROC)
                                                    "NORMAL;NC-PROC"

     parameters: ()

     macros expanded: $SEND, DO-NAMED, GET-OBJECT-OF-C-ASSOC,
          INHIBIT-STYLE-WARNINGS, SEND

     instance variables: RESTRICTION-NETS

     uses keywords: :REDEFINE-ONE

   setzt alle Restrictions zurueck

-------------------------------------------------------------------

  (:METHOD NORMAL-CONSTRAINT-PROCESSOR :GET)        "NORMAL;NC-PROC"

     parameters: (C-NAME)

     calls: SYS:ASSOC-EQL

     macros expanded: $SEND, GET-OBJECT-OF-C-ASSOC, SEND

     instance variables: CONSTRAINT-NETS, CONSTRAINTS

     uses keywords: :GET-RESTRICTIONS

   ermittelt das primitive oder zusammengesetzte Constraint mit
   dem angegebenen Namen
    (Beachte: ein Netz und ein primitives Constraint duerfen nicht
    	      den gleichen Namen besitzen)

-------------------------------------------------------------------

  (:METHOD NORMAL-FRAME-MIXIN :GENERATE-FRAME-PROCESSOR)
                                                    "NORMAL;NF-MIXIN"

     parameters: ()

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: FRAME-PROCESSOR

     special variables: SELF

     uses keywords: :META-PROCESSOR

   generates a frame processor for a knowledge base.

-------------------------------------------------------------------

  (:METHOD NORMAL-FRAME-PROCESSOR :AFTER :INIT)     "NORMAL;NF-PROC"

     parameters: (&REST PLIST)

     instance variables: FRAME-TYPE

-------------------------------------------------------------------

  NORMAL-INDENT                                     "MINI;MP-TRACE"

     parameters: (LEVEL)

     called by: (:METHOD PROLOG-TRACE-MIXIN :BEFORE :TRANS-UNIFY),
          (:METHOD PROLOG-TRACE-MIXIN :BEFORE :CLAUSE-TRANS-UNIFY),
          (:METHOD PROLOG-TRACE-MIXIN :FORMAT-TRACE)

     calls: FORMAT

-------------------------------------------------------------------

  (:METHOD NORMAL-PROLOG-MIXIN :DISPLAY-PROOFTREE)  "NORMAL;NP-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: PROLOG-PROCESSOR

     uses keywords: :DISPLAY-PROLOG-TREE, :SEND-IF-HANDLES

-------------------------------------------------------------------

  (:METHOD NORMAL-PROLOG-MIXIN :GENERATE-PROLOG-PROCESSOR)
                                                    "NORMAL;NP-MIXIN"

     parameters: ()

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: PROLOG-PROCESSOR

     special variables: SELF

     uses keywords: :ALTERNATE-META-PROCESSOR, :META-PROCESSOR

   generates a prolog-processor binding it to the instance variable
prolog-processor.

-------------------------------------------------------------------

  (:METHOD NORMAL-PROLOG-MIXIN :PROLOG-WHY)         "NORMAL;NP-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: PROLOG-PROCESSOR

     uses keywords: :WHY

   provides context explanations

-------------------------------------------------------------------

  (:METHOD NORMAL-PROLOG-MIXIN :SEND-EXPLANATION-WINDOW)
                                                    "NORMAL;NP-MIXIN"

     parameters: (SELECTOR &REST ARGS)

     macros expanded: $SEND, LEXPR-$SEND, LEXPR-SEND, SEND

     instance variables: EXPLANATION-WINDOW

     uses keywords: :EXPOSE, :FORMAT

-------------------------------------------------------------------

  (:METHOD NORMAL-PROLOG-PROCESSOR :AFTER :INIT)    "NORMAL;NP-PROC"

     parameters: (&REST PLIST)

     instance variables: ROOT-TYPE

-------------------------------------------------------------------

  NORMAL-RESET                  macro               "BASIC;AX-SC"

     parameters: ()

     expanded in: (:METHOD BASIC-GOALBOX :PROVE-AND),
          (:METHOD BASIC-GOALBOX :PROVE-BAGOF),
          (:METHOD BASIC-GOALBOX :PROVE-CLAUSE),
          (:METHOD BASIC-GOALBOX :PROVE-COND),
          (:METHOD BASIC-GOALBOX :PROVE-EQUAL),
          (:METHOD BASIC-GOALBOX :PROVE-IS),
          (:METHOD BASIC-GOALBOX :PROVE-NOEQUAL),
          (:METHOD BASIC-GOALBOX :PROVE-NORMAL),
          (:METHOD BASIC-GOALBOX :PROVE-NOT),
          (:METHOD BASIC-GOALBOX :PROVE-ONCE),
          (:METHOD BASIC-GOALBOX :PROVE-OR),
          (:METHOD BASIC-GOALBOX :PROVE-READ),
          (:METHOD BASIC-GOALBOX :PROVE-RETRACT),
          (:METHOD BASIC-GOALBOX :PROVE-TOP)

   resets a goal.

-------------------------------------------------------------------

  (:METHOD NORMAL-RULE-MIXIN :EXPLAIN-RESULTS)      "NORMAL;NR-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: RULE-PROCESSOR

     uses keywords: :EXPLAIN-RESULTS

   Explain results.
Actually only the results of rule processor actions are explained.

-------------------------------------------------------------------

  (:METHOD NORMAL-RULE-MIXIN :GENERATE-RULE-PROCESSOR)
                                                    "NORMAL;NR-MIXIN"

     parameters: ()

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: RULE-PROCESSOR

     special variables: SELF

     uses keywords: :ALTERNATE-META-PROCESSOR, :META-PROCESSOR

   generates a prolog-processor binding it to the instance variable
prolog-processor.

-------------------------------------------------------------------

  (:METHOD NORMAL-RULE-MIXIN :INSPECT-TERMS)        "NORMAL;NR-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: RULE-PROCESSOR

     uses keywords: :INSPECT-TERMS

   Inspect terms.

-------------------------------------------------------------------

  (:METHOD NORMAL-RULE-MIXIN :PRINT-RULE)           "NORMAL;NR-MIXIN"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: RULE-PROCESSOR

     uses keywords: :PRINT-RULE

   Print a rule of a rule set after selecting one.

-------------------------------------------------------------------

  (:METHOD NORMAL-RULE-MIXIN :SEND-EXPLANATION-WINDOW)
                                                    "NORMAL;NR-MIXIN"

     parameters: (SELECTOR &REST ARGS)

     macros expanded: $SEND, LEXPR-$SEND, LEXPR-SEND, SEND

     instance variables: EXPLANATION-WINDOW

     uses keywords: :EXPOSE, :FORMAT

-------------------------------------------------------------------

  (:METHOD NORMAL-RULE-MIXIN :SEND-RULE-TED)        "NORMAL;NR-MIXIN"

     parameters: (SELECTOR &REST ARGS)

     macros expanded: LEXPR-$SEND, LEXPR-SEND

     instance variables: RULE-TED

-------------------------------------------------------------------

  (:METHOD NORMAL-RULE-MIXIN :SET-UP-RULE-CMDS)     "NORMAL;NR-MIXIN"

     parameters: ()

     calls: GETHASH

     macros expanded: $SEND, SEND

     uses keywords: :ADD-OPERATIONS, :ADD-SUB-OPERATIONS, :LANGUAGE,
          :OPERATION-HANDLED-P, :RULE, :RULE-TRACE, :TOP

-------------------------------------------------------------------

  NORMALIZE-ANSWER                                  "COMMON;C-FNS"

     parameters: (ANSWER)

     called by: (:METHOD FREE-TEXT-PROCESSOR :ASK-USER),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER-WITHOUT-ADDING)

     calls: SYS:ASSOC-EQL, GETHASH

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  NORMALIZE-ARGS                macro               "BASIC;FR-CORE"

     parameters: (ARGS)

     expanded in: <--, (:METHOD FRAME-CORE :SLOT-MESSAGE),
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE)

     uses keywords: :VALUE

-------------------------------------------------------------------

  NORMALIZE-CLAUSE                                  "BASIC;AXIOMS"

     parameters: (CLAUSE)

     called by: (:METHOD BASIC-GOALBOX :PROVE-ASSERTA),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTZ),
          (:METHOD BASIC-GOALBOX :PROVE-ASSUME), CHECK-FOR-CLAUSE,
          GET-SUBGOAL-PREDICATES, PROLOG-ASSERT

     calls: ERROR, GETHASH

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

   removes <- from rules and transforms facts into rules without
body.

-------------------------------------------------------------------

  NORMALIZE-PLIST                                   "BASIC;FR-CORE"

     parameters: (PLIST)

     called by: (:METHOD FRAME-CORE :INIT-SLOT),
          (:METHOD POSS-VAL-MIXIN :INIT-SLOT)

     calls: IS-MULTIPLE-VALUE

     macros expanded: IS-VALUE

     uses keywords: :VALUE

-------------------------------------------------------------------

  NORMALIZE-PLIST-WITH-ACT-VALS                     "NORMAL;ACT-VALS"

     parameters: (PLIST)

     called by: (:METHOD ACTIVE-VALUE-MIXIN :INIT-SLOT)

     calls: IS-ACTIVE-VALUE, IS-MULTIPLE-VALUE

     macros expanded: IS-VALUE

     uses keywords: :VALUE

-------------------------------------------------------------------

  OBTAIN                                            "BASIC;BR-MIXIN"

     parameters: (NUMBER-OF-HYPOTHESES-TO-VERIFY GOAL-SPECIFICATION
          &OPTIONAL (RULE-SET-NAME NIL) (BINDINGS NIL))

     calls: SEND-KB

     uses keywords: :OBTAIN

-------------------------------------------------------------------

  OCCURS-IN-RESTRICTION                             "NORMAL;RSTRBASE"

     parameters: (VARIABLE SLOT-REF-LIST)

     called by: OCCURS-IN-RESTRICTION, PURGE-INSTANCE-ALIST

     calls: OCCURS-IN-RESTRICTION

     macros expanded: GET-OBJECT-OF-SLOT-REF

   	ueberprueft, ob die Variable auch tatsaechlich in
  	slot-ref-list auftritt

-------------------------------------------------------------------

  PARSE-REL-ELEM                                    "BASIC;CSTRBASE"

     parameters: (REL-ELEM)

     called by: PARSE-RELATION

     calls: IS-LISTE

     macros expanded: CASE, GET-EXPRESSIONS, GET-KEYWORD, GET-TUPEL

     uses keywords: :IF, :PATTERN, :TUPLE

-------------------------------------------------------------------

  PARSE-RELATION                                    "BASIC;CSTRBASE"

     parameters: (RELATION)

     called by: GET-DEF-RELATION, PARSE-RELATION

     calls: PARSE-REL-ELEM, PARSE-RELATION

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :AND)                     "MINI;POS-VALS"

     parameters: (X LIST-OF-POSSIBLE-VALUES-SPECIFICATIONS)

     calls: EVERY, GET-POSS-VAL-ARGS, GET-POSS-VAL-TYPE,
          IS-UNDETERMINED, IS-UNKNOWN

     macros expanded: $SEND, SEND

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :ANY)                     "MINI;POS-VALS"

     parameters: (X)

     calls: IS-UNDETERMINED, IS-UNKNOWN

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :ANY-READ-METHOD)         "MINI;ASK-SUPP"

     parameters: (SLOT DESIRED-VALUE NEGATION-FLAG STANDARD-OPTION)

     calls: FORMAT-EXPECTATIONS, GET-POSS-VAL-ARGS,
          GET-POSS-VAL-TYPE, GETHASH, SEND-KB

     macros expanded: $SEND, GETENTRY, SEND

     special variables: *C-HELP-KEY*, *HELP-KEY*, *LANGUAGE*

     uses keywords: :ANY-READ-METHOD, :BABYLON-FORMAT, :BABYLON-READ,
          :CHECK-VALUE, :GET, :POSSIBLE-VALUES, :PROMPT-FOR-VALUE,
          :PROVIDE-LOCAL-HELP

   default method to support the user entering a value for slot.

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :ASK-FOR-SLOT-VALUE)      "MINI;POS-VALS"

     parameters: (SLOT
          &OPTIONAL DESIRED-VALUE NEGATION-FLAG (STANDARD-OPTION
NIL))

     calls: SEND-KB

     macros expanded: $SEND, SEND

     special variables: *C-HELP-KEY*, *HELP-KEY*

     uses keywords: :ASK-FOR-SLOT-VALUE, :ASK-GUIDED, :BABYLON-READ,
          :CHECK-VALUE, :PROMPT-FOR-VALUE, :PROVIDE-LOCAL-HELP, :SET

   asks the user for the value of a slot providing explanations if
asked for.
invokes a special method on demand to support the user entering a
value.

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :ASK-GUIDED)              "MINI;POS-VALS"

     parameters: (SLOT DESIRED-VALUE NEGATION-FLAG STANDARD-OPTION)

     macros expanded: $SEND, SEND

     uses keywords: :GET-READ-METHOD, :SET

   asks the user for the value of a slot.
invokes a special method attached to the :supp-method property
of the possible value type of the slot (or a default method)
to support the user entering a value.

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :BOOLEAN)                 "MINI;POS-VALS"

     parameters: (X)

     calls: IS-UNDETERMINED, IS-UNKNOWN

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :CHECK-CORRECT-VALUE)     "MINI;POS-VALS"

     parameters: (SLOT VALUE)

     calls: GET-POSS-VAL-ARGS, GET-POSS-VAL-TYPE, GETHASH, SEND-KB,
          TYPE-OF

     macros expanded: $SEND, FLAVOR-TYPE-OF, GETENTRY, SEND

     instance variables: OBJECT-NAME

     special variables: *LANGUAGE*, SELF

     uses keywords: :ANY, :BABYLON-FORMAT, :BABYLON-READ,
          :CHECK-CORRECT-VALUE, :CHECK-VALUE, :GET, :POSSIBLE-VALUES

   checks whether value is a possible value for slot allowing to
correct the value.

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :CHECK-FORMAT-OF-EXPLAIN-ANSWERS)
                                                    "MINI;POS-VALS"

     parameters: (SLOT)

     calls: SYS:ASSOC-EQUAL, ERROR, EXPLAIN-ANSWERS-CHOICES,
          GETHASH, TYPE-OF

     macros expanded: $SEND, BABERROR, DO-NAMED, FLAVOR-TYPE-OF,
          GETENTRY, INHIBIT-STYLE-WARNINGS, SEND

     instance variables: OBJECT-NAME

     special variables: *LANGUAGE*, SELF

     uses keywords: :CHECK-VALUE, :EXPLAIN-ANSWERS, :GET

   checks whether all values for which explanations are provided by
the
:explain-answers property are possible values.

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :CHECK-INIT-VALUE)        "MINI;POS-VALS"

     parameters: (SLOT VALUE)

     calls: ERROR, GET-POSS-VAL-ARGS, GET-POSS-VAL-TYPE, GETHASH,
          IS-METHOD-OF, TYPE-OF

     macros expanded: $SEND, BABERROR, FLAVOR-TYPE-OF, GETENTRY,
          SEND

     instance variables: OBJECT-NAME

     special variables: *LANGUAGE*, SELF

     uses keywords: :CHECK-VALUE, :GET, :POSSIBLE-VALUES

   checks whether the default value is a possible value for slot.

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :CHECK-VALUE)             "MINI;POS-VALS"

     parameters: (SLOT VALUE &OPTIONAL POSSIBLE-VALUES)

     calls: GET-POSS-VAL-ARGS, GET-POSS-VAL-TYPE

     macros expanded: $SEND, SEND

     uses keywords: :ANY, :GET, :POSSIBLE-VALUES

   checks whether value is a possible value for slot.

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :CHECK-YOUR-SELF)         "MINI;POS-VALS"

     parameters: ()

     macros expanded: $SEND, DO-NAMED, INHIBIT-STYLE-WARNINGS, SEND

     instance variables: SLOTS

     uses keywords: :CHECK-FORMAT-OF-EXPLAIN-ANSWERS,
          :CHECK-INIT-VALUE, :GET-VALUE-ONLY

   checks whether some values of the frame definition are possible
values:
1. default values 2. all values for which explanations are provided
by the
:explain-answers property.

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :DEFAULT-READ-METHOD)     "MINI;POS-VALS"

     parameters: (SLOT DESIRED-VALUE NEGATION-FLAG STANDARD-OPTION)

     calls: FORMAT-EXPECTATIONS, GET-POSS-VAL-ARGS,
          GET-POSS-VAL-TYPE, SEND-KB

     macros expanded: $SEND, SEND

     special variables: *C-HELP-KEY*, *HELP-KEY*

     uses keywords: :BABYLON-FORMAT, :BABYLON-READ, :CHECK-VALUE,
          :DEFAULT-READ-METHOD, :GET, :POSSIBLE-VALUES,
          :PROMPT-FOR-VALUE, :PROVIDE-LOCAL-HELP

   default method to support the user entering a value for slot.

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :GET-READ-METHOD)         "MINI;POS-VALS"

     parameters: (SLOT)

     calls: GET-POSS-VAL-TYPE

     macros expanded: $SEND, SEND

     uses keywords: :ANY, :GET, :POSSIBLE-VALUES, :SUPP-METHOD

   fetches the special method to support the user entering a value
for slot.

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :INIT-SLOT)               "MINI;POS-VALS"

     parameters: (SLOT-NAME SLOT-SPEZIFICATION CHECK)

     calls: NORMALIZE-PLIST, REVERSE

     macros expanded: $SEND, SEND

     uses keywords: :CHECK-INIT-VALUE, :SET, :VALUE

   initializes a slot with values from slot-spezification.

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :INSTANCE-OF)             "MINI;POS-VALS"

     parameters: (INSTANCE-NAME LIST)

     calls: GET-FRAME-NAME-WITH-CHECK, GET-INSTANCE-NAME,
          IS-INSTANCE, IS-UNDETERMINED, IS-UNKNOWN, TYPEP

     macros expanded: FLAVOR-TYPEP, GET-INSTANCE

     uses keywords: :INSTANCE

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :INSTANCE-OF-READ-METHOD)  "MINI;ASK-SUPP"

     parameters: (SLOT DESIRED-VALUE NEGATION-FLAG STANDARD-OPTION)

     calls: APPEND, GET-ALL-INSTANCES, GET-FRAME-NAME-WITH-CHECK,
          GET-POSS-VAL-ARGS, GETHASH, MENU-CHOOSE-TRANSLATE, SEND-KB

     macros expanded: $SEND, GETENTRY, SEND

     special variables: *HELP-KEY*, *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :CHOOSE-FROM-MENU, :EXPLAIN,
          :GET, :POSSIBLE-VALUES, :PROMPT-FOR-VALUE,
          :PROVIDE-LOCAL-HELP

   method presenting a menu to select an instance for a slot of type
:instance-of.

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :INTERVAL)                "MINI;POS-VALS"

     parameters: (X INTERVAL)

     calls: IS-IN-INTERVAL, IS-UNDETERMINED, IS-UNKNOWN

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :LIST)                    "MINI;POS-VALS"

     parameters: (X)

     calls: IS-UNDETERMINED, IS-UNKNOWN

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :NOT)                     "MINI;POS-VALS"

     parameters: (X LIST-WITH-POSSIBLE-VALUES-SPECIFICATION)

     calls: GET-POSS-VAL-ARGS, GET-POSS-VAL-TYPE, IS-UNDETERMINED,
          IS-UNKNOWN

     macros expanded: $SEND, SEND

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :NUMBER)                  "MINI;POS-VALS"

     parameters: (X)

     calls: IS-UNDETERMINED, IS-UNKNOWN

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :ONE-OF)                  "MINI;POS-VALS"

     parameters: (X LIST)

     calls: IS-UNDETERMINED, IS-UNKNOWN, SYS:MEMBER-EQUAL

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :ONE-OF-READ-METHOD)      "MINI;ASK-SUPP"

     parameters: (SLOT DESIRED-VALUE NEGATION-FLAG STANDARD-OPTION)

     calls: APPEND, GET-POSS-VAL-ARGS, GETHASH,
          MENU-CHOOSE-TRANSLATE, SEND-KB

     macros expanded: $SEND, GETENTRY, SEND

     special variables: *HELP-KEY*, *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :CHOOSE-FROM-MENU, :EXPLAIN,
          :GET, :POSSIBLE-VALUES, :PROMPT-FOR-VALUE,
          :PROVIDE-LOCAL-HELP

   method presenting a menu to select a value for a slot of type
:one-of.

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :OR)                      "MINI;POS-VALS"

     parameters: (X LIST-OF-POSSIBLE-VALUES-SPECIFICATIONS)

     calls: GET-POSS-VAL-ARGS, GET-POSS-VAL-TYPE, IS-UNDETERMINED,
          IS-UNKNOWN, SOME

     macros expanded: $SEND, SEND

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :PROVIDE-LOCAL-HELP)      "MINI;ASK-SUPP"

     parameters: (SLOT &OPTIONAL (WINDOW *CURRENT-KNOWLEDGE-BASE*))

     calls: SYS:ASSOC-EQUAL, BUILD-EXPLAIN-ITEM-LIST,
          EXPLAIN-ANSWERS-CHOICES, GETHASH, SEND-KB,
          SUBSTITUTE-O-AND-S

     macros expanded: $SEND, GETENTRY, LEXPR-$SEND, LEXPR-SEND, SEND

     instance variables: OBJECT-NAME

     special variables: *CURRENT-KNOWLEDGE-BASE*, *LANGUAGE*

     uses keywords: :EXPLAIN-ANSWERS, :FORMAT, :GET,
          :MULT-CHOOSE-FROM-MENU

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :PUT)                     "MINI;POS-VALS"

     parameters: (SLOT-NAME NEW-VALUE &OPTIONAL (PROP-NAME :VALUE))

     macros expanded: $SEND, IS-VALUE, SEND

     uses keywords: :CHECK-CORRECT-VALUE, :SET, :VALUE

   sets the value of a slot checking whether the value is a possible
value for the slot.

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :SOME-OF)                 "MINI;POS-VALS"

     parameters: (X LIST)

     calls: EVERY, IS-MULTIPLE-VALUE, IS-UNDETERMINED, IS-UNKNOWN,
          SYS:MEMBER-EQUAL

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :SOME-OF-READ-METHOD)     "MINI;ASK-SUPP"

     parameters: (SLOT DESIRED-VALUE NEGATION-FLAG STANDARD-OPTION)

     calls: SYS:*APPEND, APPEND, BUILD-MULT-CHOOSE-ITEM-LIST,
          GET-POSS-VAL-ARGS, GETHASH, MAKE-MULTIPLE-ANSWER,
          SYS:MEMBER-EQL, MENU-MULT-CHOOSE-TRANSLATE, SEND-KB

     macros expanded: $SEND, GETENTRY, SEND, SYS::XR-BQ-APPEND

     special variables: *HELP-KEY*, *LANGUAGE*

     uses keywords: :BABYLON-FORMAT, :GET, :GET-VALUE-ONLY,
          :MULT-CHOOSE-FROM-MENU, :POSSIBLE-VALUES,
          :PROMPT-FOR-VALUE, :PROVIDE-LOCAL-HELP

   method presenting a menu to select some values for a slot of type
:some-of.

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :STRING)                  "MINI;POS-VALS"

     parameters: (X)

     calls: IS-UNDETERMINED, IS-UNKNOWN

-------------------------------------------------------------------

  (:METHOD POSS-VAL-MIXIN :SYMBOL)                  "MINI;POS-VALS"

     parameters: (X)

     calls: IS-UNDETERMINED, IS-UNKNOWN

-------------------------------------------------------------------

  POSSIBLE-VALUES-TO-VALUE-SPEC                     "NORMAL;RSTREVAL"

     parameters: (POSSIBLE-VALUES)

     called by: COPY-POSSIBLE-VALUES

     calls: ERROR

     macros expanded: BABERROR, CASE

     uses keywords: :ANY, :BOOLEAN, :INSTANCE-OF, :INTERVAL, :LIST,
          :NOT, :NUMBER, :ONE-OF, :STRING, :SYMBOL

   	ueberfuehrt die Possible-Values-Beschreibung in eine
  	Consat-Wertemenge

-------------------------------------------------------------------

  PRED                          macro               "BASIC;AXIOMS"

     parameters: (HEAD)

     expanded in: (:METHOD BASIC-GOALBOX :PROVE-ASSERTA),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTZ),
          (:METHOD BASIC-GOALBOX :PROVE-ASSUME),
          (:METHOD BASIC-GOALBOX :PROVE-CLAUSE),
          (:METHOD BASIC-GOALBOX :PROVE-GOAL),
          (:METHOD BASIC-GOALBOX :PROVE-RETRACT), EXCEPTION-COMMENT,
          GET-CLAUSES-DIRECT, GET-SUBGOAL-PREDICATES,
          (:METHOD GOALBOX-TRACE-MIXIN :PROVE-GOAL),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-EXT-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NORMAL-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TRY-AFTER),
          PROLOG-ASSERT, REM-CLAUSE

     used as a constant by: GET-CURR-METHOD, GET-PROVE-METHOD

-------------------------------------------------------------------

  PREPARE-RESET                 macro               "BASIC;AX-SC"

     parameters: ()

     expanded in: (:METHOD BASIC-GOALBOX :PROVE-ABOLISH),
          (:METHOD BASIC-GOALBOX :PROVE-AND),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTA),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTZ),
          (:METHOD BASIC-GOALBOX :PROVE-BAGOF),
          (:METHOD BASIC-GOALBOX :PROVE-CLAUSE),
          (:METHOD BASIC-GOALBOX :PROVE-COND),
          (:METHOD BASIC-GOALBOX :PROVE-CUT),
          (:METHOD BASIC-GOALBOX :PROVE-EQUAL),
          (:METHOD BASIC-GOALBOX :PROVE-FORMAT),
          (:METHOD BASIC-GOALBOX :PROVE-IS),
          (:METHOD BASIC-GOALBOX :PROVE-LISP),
          (:METHOD BASIC-GOALBOX :PROVE-NOEQUAL),
          (:METHOD BASIC-GOALBOX :PROVE-NORMAL),
          (:METHOD BASIC-GOALBOX :PROVE-NOT),
          (:METHOD BASIC-GOALBOX :PROVE-ONCE),
          (:METHOD BASIC-GOALBOX :PROVE-OR),
          (:METHOD BASIC-GOALBOX :PROVE-READ),
          (:METHOD BASIC-GOALBOX :PROVE-REPEAT),
          (:METHOD BASIC-GOALBOX :PROVE-RETRACT),
          (:METHOD BASIC-GOALBOX :PROVE-TOP),
          (:METHOD BASIC-GOALBOX :PROVE-TRUE),
          (:METHOD BASIC-GOALBOX :PROVE-TYPE),
          (:METHOD BASIC-GOALBOX :PROVE-WRITE)

   prepares a goal for backtracking.

-------------------------------------------------------------------

  PREPARE-SIDE-RESET            macro               "BASIC;AX-SC"

     parameters: ()

     expanded in: (:METHOD BASIC-GOALBOX :PROVE-ASSUME)

   prepares a goal causing backtrackable side effects for
backtracking.

-------------------------------------------------------------------

  PRINT-AXIOM-SET                                   "BASIC;AXIOMS"

     parameters: (AXIOM-SET &OPTIONAL (STREAM *STANDARD-OUTPUT*))

     called by: (:METHOD AXSET-BASIC :PRINT)

     calls: FORMAT::FORMAT-GET-STREAM,
          FORMAT::FORMAT-RETURN-STRING-STREAM, PRIN1, PRINC,
          PRINT-PREDS, WRITE-CHAR, WRITE-STRING

     macros expanded: GET-PREDS

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

-------------------------------------------------------------------

  PRINT-CLAUSE                                      "BASIC;AXIOMS"

     parameters: (CLAUSE
          &OPTIONAL (LABEL "") (STREAM *STANDARD-OUTPUT*))

     called by: PRINT-CLAUSES

     calls: FORMAT, FORMAT::FORMAT-GET-STREAM,
          FORMAT::FORMAT-RETURN-STRING-STREAM, PRIN1, PRINC, TERPRI

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

   prints `<clause>` to `<stream>` headed by `<label>`.
`<clause>` might be NIL producing an empty line.
if `<stream>` is NIL, a string is returned that contains the output,
otherwise an empty string is returned.

-------------------------------------------------------------------

  PRINT-CLAUSES                                     "BASIC;AXIOMS"

     parameters: (CLAUSES
          &OPTIONAL (LABEL "") (STREAM *STANDARD-OUTPUT*))

     called by: PRINT-PRED, PRINT-PREDS

     calls: CONCATENATE, PRINT-CLAUSE

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

     special variables: *STANDARD-OUTPUT*

   prints `<clauses>` to `<stream>`, each clause headed by `<label>`.
if `<stream>` is NIL, a string is returned that contains the output,
otherwise an empty string is returned.

-------------------------------------------------------------------

  PRINT-CONSTRAINT-LIST                             "BASIC;CSTRBASE"

     parameters: (CONSTRAINT-LIST STREAM)

     called by: (:METHOD BASIC-CONSTRAINT-PROCESSOR :PRINT),
          (:METHOD NORMAL-CONSTRAINT-PROCESSOR :AFTER :PRINT)

     macros expanded: $SEND, DO-NAMED, GET-NAME-OF-C-ASSOC,
          GET-OBJECT-OF-C-ASSOC, INHIBIT-STYLE-WARNINGS, SEND

     uses keywords: :PRINT

     	druckt alle Constraints in der Liste in wiedereinlesbarer
  	Form nach stream

-------------------------------------------------------------------

  PRINT-FRAME                                       "BASIC;FRAMES"

     parameters: (FRAME-NAME &OPTIONAL (STREAM *STANDARD-OUTPUT*))

     called by: (:METHOD BASIC-FRAME-PROCESSOR :PRINT)

     calls: PRINT-FRAMES

     special variables: *STANDARD-OUTPUT*

-------------------------------------------------------------------

  PRINT-FRAME-BEHAVIOR                              "BASIC;FRAMES"

     parameters: (BEHAVIOR-BODY &OPTIONAL (STREAM *STANDARD-OUTPUT*))

     called by: PRINT-FRAMES

     calls: BABPPRINT, MAKE-BEHAVIOR-DEF

     special variables: *STANDARD-OUTPUT*

-------------------------------------------------------------------

  PRINT-FRAME-DEFINITION                            "BASIC;FRAMES"

     parameters: (FRAME-NAME &OPTIONAL (STREAM *STANDARD-OUTPUT*))

     called by: PRINT-FRAMES

     calls: BABPPRINT, GET-FRAME-DEF

     special variables: *STANDARD-OUTPUT*

-------------------------------------------------------------------

  PRINT-FRAMES                                      "BASIC;FRAMES"

     parameters: (FRAME-NAMES &OPTIONAL (STREAM *STANDARD-OUTPUT*))

     called by: PRINT-FRAME

     calls: FORMAT::FORMAT-GET-STREAM, PRINT-FRAME-BEHAVIOR,
          PRINT-FRAME-DEFINITION, WRITE-STRING

     macros expanded: DO-NAMED, FRAME-BEHAVIORS

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

     uses keywords: :BEHAVIORS

-------------------------------------------------------------------

  PRINT-INSTANCE-DEF                                "BASIC;FRAMES"

     parameters: (INSTANCE-NAME &OPTIONAL (STREAM *STANDARD-OUTPUT*))

     called by: PRINT-INSTANCES

     calls: BABPPRINT, GET-INSTANCE-DEF

     special variables: *STANDARD-OUTPUT*

-------------------------------------------------------------------

  PRINT-INSTANCES                                   "BASIC;FRAMES"

     parameters: (FRAME-NAME &OPTIONAL (STREAM *STANDARD-OUTPUT*))

     called by: (:METHOD BASIC-FRAME-PROCESSOR :PRINT)

     calls: FORMAT::FORMAT-GET-STREAM, GET-INSTANCE-LIST,
          PRINT-INSTANCE-DEF, WRITE-STRING

     macros expanded: DO-NAMED

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

-------------------------------------------------------------------

  PRINT-PRED                                        "BASIC;AXIOMS"

     parameters: (AXSET PRED
          &OPTIONAL (LABEL "") (STREAM *STANDARD-OUTPUT*))

     called by: (:METHOD BASIC-PROLOG-MIXIN :LIST-AXSET),
          (:METHOD BASIC-PROLOG-MIXIN :LIST-PREDICATE)

     calls: GET-CLAUSES-DIRECT, PRINT-CLAUSES

     special variables: *STANDARD-OUTPUT*

   prints the defining clauses of `<pred>` in `<axset>` to `<stream>`.
each clause is headed by `<label>`. if `<stream>` is NIL, a string is
returned
that contains the output, otherwise an empty string is returned.

-------------------------------------------------------------------

  PRINT-PREDS                                       "BASIC;AXIOMS"

     parameters: (AXSET PREDS
          &OPTIONAL (LABEL "") (STREAM *STANDARD-OUTPUT*))

     called by: PRINT-AXIOM-SET

     calls: COLLECT-CLAUSES, PRINT-CLAUSES

     special variables: *STANDARD-OUTPUT*

   prints the defining clauses of all `<preds>` in `<axset>` to `<stream>`.
each clause is headed by `<label>`. clauses for different predicates
are
separated by an empty line. if `<stream>` is NIL, a string is returned
that contains the output, otherwise an empty string is returned.

-------------------------------------------------------------------

  PRINT-RESULT                                      "BASIC;BC-MIXIN"

     parameters: (VALUE-ASS STREAM)

     called by: (:METHOD BASIC-CONSTRAINT-MIXIN :PRINT-EXIT)

     calls: PRINC, PRINT-VALUE-ASS, TERPRI

-------------------------------------------------------------------

  PRINT-RULE-SET                                    "BASIC;RULES"

     parameters: (A-RULE-SET &OPTIONAL (STREAM *STANDARD-OUTPUT*))

     called by: (:METHOD RULE-BASE :UNPARSE-RULES)

     calls: BABPPRINT

     special variables: *STANDARD-OUTPUT*

-------------------------------------------------------------------

  PRINT-VALUE-ASS                                   "BASIC;BC-MIXIN"

     parameters: (VALUE-ASS STREAM)

     called by: (:METHOD BASIC-CONSTRAINT-MIXIN :PRINT-ENTER),
          PRINT-RESULT

     calls: PRINC

     macros expanded: DO-NAMED, GET-VALUE-SPEC, GET-VAR,
          INHIBIT-STYLE-WARNINGS

-------------------------------------------------------------------

  (:METHOD PROC-EXPLAIN-MIXIN :EXPLAIN-KONTEXT)     "NORMAL;NP-EXPL"

     parameters: ()

     calls: GETHASH, SUBST-PROLOG-VARS

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU, :FORMAT, :GET-CURRENT, :GOAL,
          :PARENT-GOAL, :SEND-EXPLANATION-WINDOW, :WHY-GOAL

   explains what the current goal is used for.

-------------------------------------------------------------------

  (:METHOD PROC-EXPLAIN-MIXIN :GET-CURRENT)         "NORMAL;NP-EXPL"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: ROOT

     uses keywords: :GET-CURRENT

   returns current goalbox.

-------------------------------------------------------------------

  (:METHOD PROC-EXPLAIN-MIXIN :WHY-GOAL)            "NORMAL;NP-EXPL"

     parameters: (GOALBOX)

     calls: EXT-REP-CLAUSE, GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :CLAUSE-USED, :FORMAT, :GET-GOAL-ON-INIT,
          :SEND-EXPLANATION-WINDOW

   displays the goal and the clause currently used to prove it.

-------------------------------------------------------------------

  (:METHOD PROC-SC-MIXIN :CLAUSE-TRANS-UNIFY)       "BASIC;AX-SC"

     parameters: (GOAL CLAUSE)

     calls: SYS:*NCONC, TRANS-CLAUSE, UNIFY

     macros expanded: DO-NAMED

     instance variables: ENV, ENV-DEPTH

     special variables: *TENV, *TENV-DEPTH

   copies clause and tries to unify it with goal.
returns the transformed clause if successfull and nil otherwise.
instantiated varcells are stacked on env.

-------------------------------------------------------------------

  (:METHOD PROC-SC-MIXIN :CUT-RESET)                "BASIC;AX-SC"

     parameters: (NR)

     macros expanded: $SEND, SEND

     instance variables: RESET-OPS

     uses keywords: :INIT-ENV-DEPTH, :PROVE-GOAL, :RESET-ENV

   resets env stack and reset-ops stack.

-------------------------------------------------------------------

  (:METHOD PROC-SC-MIXIN :GET-CLAUSES)              "BASIC;AX-SC"

     parameters: (GOAL)

     calls: GET-CLAUSES-DIRECT, SUBST-PROLOG-VARS

     macros expanded: $SEND, IS-T, SEND

     instance variables: AXIOMS, META-PROCESSOR

     uses keywords: :EVAL, :PROLOG

   provides the relevant clauses to prove goal.
if there aren't any clauses the meta-processor is asked.

-------------------------------------------------------------------

  (:METHOD PROC-SC-MIXIN :PUSH-GOALBOX)             "BASIC;AX-SC"

     parameters: (BOX)

     instance variables: ENV-DEPTH, RESET-OPS

-------------------------------------------------------------------

  (:METHOD PROC-SC-MIXIN :RESET-ENV)                "BASIC;AX-SC"

     parameters: (N)

     instance variables: ENV, ENV-DEPTH

   resets env stack.

-------------------------------------------------------------------

  (:METHOD PROC-SC-MIXIN :RETURN-FORM)              "BASIC;AX-SC"

     parameters: ()

     calls: ERROR, GETHASH, SUBST-PROLOG-VARS

     macros expanded: BABERROR, CASE, GETENTRY

     instance variables: STATUS, TOPGOAL

     special variables: *LANGUAGE*

   internal method.
returns topgoal after substitution of all varcells by their values,
if the last proof succeded, and NIL otherwise.

-------------------------------------------------------------------

  (:METHOD PROC-SC-MIXIN :RETURN-RESULT)            "BASIC;AX-SC"

     parameters: (&OPTIONAL RFORM)

     calls: ERROR, GETHASH

     macros expanded: $SEND, BABERROR, CASE, GETENTRY, SEND

     instance variables: FORMAT-OPTION

     special variables: *LANGUAGE*

     uses keywords: :RETURN-FORM, :RETURN-VARS

   returns the result of a proof according to `<rform>` or the current
format-option:
form: the topgoal is returned after substitution of all varcells by
their values,
if the last proof succeded, and NIL otherwise.
vars:  an alist is returned consisting of all nonanonymous variables
of the topgoal
paired with their values, if the last proof succeded, and NIL
otherwise.
bound: like vars but variables whose values are variables are
omitted.
if variables are missing, YES is returned instead.

-------------------------------------------------------------------

  (:METHOD PROC-SC-MIXIN :RETURN-VARS)              "BASIC;AX-SC"

     parameters: (TYPE)

     calls: ERROR, GEN-VAR-VALUE-LIST, GETHASH

     macros expanded: BABERROR, CASE, GETENTRY

     instance variables: STATUS, TOP-VARCELLS

     special variables: *LANGUAGE*

   internal method.
returns an alist consisting of variables of the topgoal paired with
their values,
if the last proof succeded, and NIL otherwise.
`<type>` might be ALL or BOUND. in the former case all nonanonymous
variables
are considered, in the latter case variables bound to a variable are
ommitted.
if variables are missing, YES is returned instead.

-------------------------------------------------------------------

  (:METHOD PROC-SC-MIXIN :SETGOAL)                  "BASIC;AX-SC"

     parameters: (GOALS)

     calls: CERROR, SYS:NREVERSE-LIST, TRANS-CLAUSE1

     macros expanded: CHECK-TYPE, DO-NAMED, INHIBIT-STYLE-WARNINGS

     instance variables: ENV, ENV-DEPTH, RESET-OPS, TOP-VARCELLS,
          TOPGOAL

     special variables: *MAXVAR*, *VARS

   initializes processor to prove goals.

-------------------------------------------------------------------

  (:METHOD PROC-SC-MIXIN :SIDE-RESET)               "BASIC;AX-SC"

     parameters: (NR)

     instance variables: ENV, ENV-DEPTH, RESET-OPS

   resets env stack and pops reset-ops stack.

-------------------------------------------------------------------

  (:METHOD PROC-SC-MIXIN :TRANS-UNIFY)              "BASIC;AX-SC"

     parameters: (GOAL CLAUSE)

     calls: SYS:*NCONC, TRANS-CLAUSE, UNIFY

     macros expanded: DO-NAMED, HEAD

     instance variables: ENV, ENV-DEPTH

     special variables: *TENV, *TENV-DEPTH

   copies clause and tries to unify its head with goal.
returns the transformed clause if successfull and nil otherwise.
instantiated varcells are stacked on env.

-------------------------------------------------------------------

  (:METHOD PROC-SC-MIXIN :UNIFY)                    "BASIC;AX-SC"

     parameters: (GOAL CLAUSE)

     calls: SYS:*NCONC, UNIFY

     macros expanded: DO-NAMED

     instance variables: ENV, ENV-DEPTH

     special variables: *TENV, *TENV-DEPTH

   tries to unify clause with goal.
returns t if successfull and nil otherwise. instantiated varcells are
stacked on env.

-------------------------------------------------------------------

  (:METHOD PROCESSOR-CORE :SWITCH-MODE)             "COMMON;P-CORE"

     parameters: ()

     instance variables: ALTERNATE-META-PROCESSOR, META-PROCESSOR

   Switch between standalone and integrated application of the
processor.

-------------------------------------------------------------------

  PROLOG-ASSERT                                     "BASIC;AXIOMS"

     parameters: (CLAUSE AXIOM-SET XCONC)

     called by: ADD-AXIOMS, (:METHOD BASIC-GOALBOX :PROVE-ASSERTA),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTZ),
          (:METHOD BASIC-GOALBOX :PROVE-ASSUME)

     used as a constant by: ASSERTA, ASSERTZ

     calls: SYS:*NCONC, SYS:MEMBER-EQUAL, NORMALIZE-CLAUSE,
          SYS::SETPROP

     macros expanded: ADD-PRED, GET-PREDS, HEAD, PRED

   adds `<clause>` to the clauses of `<axiom-set>` using `<xconc>` for the
placement.

-------------------------------------------------------------------

  (:METHOD PROLOG-INTERPRETER :AFTER :SETGOAL)      "BASIC;BP-INTER"

     parameters: (GOALS)

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: ROOT, ROOT-TYPE, STATUS, TOPGOAL

     special variables: SELF

     uses keywords: :CLAUSES, :GOAL, :GOAL-LEVEL, :PROLOG-PROCESSOR

   generates root goalbox.

-------------------------------------------------------------------

  (:METHOD PROLOG-INTERPRETER :FIRST-ANSWER)        "BASIC;BP-INTER"

     parameters: (GOALS)

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-RETURN, :SETGOAL

   provides first proof of `<goals>`.
returns the topgoal after substitution of all varcells by their
values,
if the last proof succeded and NIL otherwise.

-------------------------------------------------------------------

  (:METHOD PROLOG-INTERPRETER :PROLOG-PROVE)        "BASIC;BP-INTER"

     parameters: (&OPTIONAL GOALS (DISPFORM 'FORM))

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-RETURN, :SETGOAL

   attemps the next proof of `<goals>` and returns the result.
if `<goals>` is nil, the current topgoal is used instead.
`<dispform>` determines how to display the result,
possible values and effects are those described for :prove-return.

-------------------------------------------------------------------

  (:METHOD PROLOG-INTERPRETER :PROVE-RETURN)        "BASIC;BP-INTER"

     parameters: (MODE &OPTIONAL DISPFORM)

     calls: ERROR, GETHASH

     macros expanded: $SEND, BABERROR, GETENTRY, SEND

     instance variables: STATUS

     special variables: *LANGUAGE*

     uses keywords: :PROVE-TOPGOALS, :RETURN-RESULT

   provides first/next proof of last user request according to `<mode>`
try/retry.
`<dispform>` determines what to return:
form: the topgoal is returned after substitution of all varcells by
their values,
if the last proof succeded, and NIL otherwise.
vars:  an alist is returned consisting of all nonanonymous variables
of the topgoal
paired with their values, if the last proof succeded, and NIL
otherwise.
bound: like vars but variables whose values are variables are
omitted.
if variables are missing, YES is returned instead.

-------------------------------------------------------------------

  (:METHOD PROLOG-INTERPRETER :PROVE-TOPGOALS)      "BASIC;BP-INTER"

     parameters: (&OPTIONAL (MODE 'TRY))

     macros expanded: $SEND, CASE, SEND

     instance variables: ROOT, STATUS

     uses keywords: :PROVE-GOAL

   provides first/next proof of last user request according to `<mode>`
try/retry.

-------------------------------------------------------------------

  (:METHOD PROLOG-INTERPRETER :SOME-ANSWERS)        "BASIC;BP-INTER"

     parameters: (GOALS
          &OPTIONAL (NR -1) (DISPFORM 'VARS))

     calls: IS-YES-LIST, NREVERSE

     macros expanded: $SEND, SEND

     uses keywords: :PROVE-RETURN, :SETGOAL

   provides at most `<nr>` proofs of `<goals>`.
the results of each proof are collected in a list.
`<dispform>` determines the representation of the results,
possible values and effects are those described for :prove-return
with the exeption, that T is returned, if variables are missing
and `<dispform>` is VARS or BOUND.

-------------------------------------------------------------------

  (:METHOD PROLOG-INTERPRETER :WHY)                 "BASIC;BP-INTER"

     parameters: ()

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU, :EXPLAIN-KONTEXT,
          :SEND-IF-HANDLES

   provides context explanations

-------------------------------------------------------------------

  (:METHOD PROLOG-TRACE-MIXIN :AFTER :SETGOAL)      "MINI;MP-TRACE"

     parameters: (GOALS)

     instance variables: INDENT-LEVEL

-------------------------------------------------------------------

  (:METHOD PROLOG-TRACE-MIXIN :AFTER :SET-AXIOMS)   "MINI;MP-TRACE"

     parameters: (AXSETS)

     calls: SYS::GET-PROPERTIES-INTERNAL, SYS:REMOVE-IF-NOT*,
          SYMBOL-PLIST

     macros expanded: $SEND, GET-PROPERTIES, LOCF, SEND

     instance variables: AXIOMS, TRACE-LIST

     uses keywords: :SYNCHRONIZE-TRACE

-------------------------------------------------------------------

  (:METHOD PROLOG-TRACE-MIXIN :BEFORE :CLAUSE-TRANS-UNIFY)
                                                    "MINI;MP-TRACE"

     parameters: (GOAL CLAUSE)

     calls: EXT-REP-CLAUSE, SYS:MEMBER-EQL, NORMAL-INDENT

     macros expanded: $SEND, SEND

     instance variables: INDENT-LEVEL, META-PROCESSOR, PROLOG-TRACE,
          TRACE-LIST, TRACE-MODE

     uses keywords: :FORMAT, :SEND-PROLOG-TRACE-WINDOW

   traces clause tried to unify for system-predicates clause, retract
in case of full mode.

-------------------------------------------------------------------

  (:METHOD PROLOG-TRACE-MIXIN :BEFORE :TRANS-UNIFY)  "MINI;MP-TRACE"

     parameters: (GOAL CLAUSE)

     calls: EXT-REP-CLAUSE, SYS:MEMBER-EQL, NORMAL-INDENT

     macros expanded: $SEND, SEND

     instance variables: INDENT-LEVEL, META-PROCESSOR, PROLOG-TRACE,
          TRACE-LIST, TRACE-MODE

     uses keywords: :FORMAT, :SEND-PROLOG-TRACE-WINDOW

   traces clause tried to unify in case of full mode.

-------------------------------------------------------------------

  (:METHOD PROLOG-TRACE-MIXIN :BEFORE :PROVE-TOPGOALS)  "MINI;MP-
TRACE"

     parameters: (&REST GOALS)

     macros expanded: $SEND, SEND

     uses keywords: :SYNCHRONIZE-TRACE

-------------------------------------------------------------------

  (:METHOD PROLOG-TRACE-MIXIN :FORMAT-TRACE)        "MINI;MP-TRACE"

     parameters: (IND-PATTERN FSTRING &REST ARGS)

     calls: NORMAL-INDENT

     macros expanded: LEXPR-$SEND, LEXPR-SEND

     instance variables: INDENT-LEVEL, META-PROCESSOR

     uses keywords: :FORMAT, :SEND-PROLOG-TRACE-WINDOW

-------------------------------------------------------------------

  (:METHOD PROLOG-TRACE-MIXIN :GET-PREDS-WITH-MARK)  "MINI;MP-TRACE"

     parameters: (AXSET-NAME)

     calls: GET-PREDICATES, SYS:MEMBER-EQL

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

     instance variables: TRACE-LIST

-------------------------------------------------------------------

  (:METHOD PROLOG-TRACE-MIXIN :SYNCHRONIZE-TRACE)   "MINI;MP-TRACE"

     parameters: ()

     calls: MARK-PRED, UNMARK-PRED

     macros expanded: DO-NAMED

     instance variables: PROLOG-TRACE, TRACE-LIST

     special variables: *PROLOG-PREDS-TRACED*, *PROLOG-SYSPREDS*

-------------------------------------------------------------------

  (:METHOD PROLOG-TRACE-MIXIN :TOGGLE-PROLOG-TRACE)  "MINI;MP-TRACE"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: PROLOG-TRACE

     uses keywords: :SYNCHRONIZE-TRACE

   Toggles prolog trace mode.

-------------------------------------------------------------------

  (:METHOD PROLOG-TRACE-MIXIN :TRACE-STATUS)        "MINI;MP-TRACE"

     parameters: ()

     calls: FORMAT, GETHASH

     macros expanded: GETENTRY

     instance variables: PROLOG-TRACE

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  PROLOG-TYPE                   macro               "BASIC;BP-MIXIN"

     parameters: (REQUEST)

   type checking macro.

-------------------------------------------------------------------

  PURGE-INSTANCE-ALIST                              "NORMAL;RSTRBASE"

     parameters: (ALIST SLOT-REF-LIST)

     called by: GET-INSTANCE-COMBINATIONS, PURGE-INSTANCE-ALIST

     calls: OCCURS-IN-RESTRICTION, PURGE-INSTANCE-ALIST

     macros expanded: GET-VAR

   	entfernt alle Variablen aus alist, die nicht in
  	slot-ref-list auftreten

-------------------------------------------------------------------

  PUT-VALUE                     macro               "BASIC;FR-CORE"

     parameters: (INSTANCE-NAME SLOT-NAME NEW-VALUE &OPTIONAL
          (PROP-NAME :VALUE))

     used as a constant by:
          (:PROPERTY GET-VALUE SYS::SETF-METHOD)

     uses keywords: :PUT, :VALUE

-------------------------------------------------------------------

  READ-CONSTRAINT                                   "BASIC;BC-MIXIN"

     parameters: (&REST DUMMY)

     calls: SEND-KB

     uses keywords: :READ

-------------------------------------------------------------------

  READ-EXPR-FROM-WINDOW                             "BASIC;BC-MIXIN"

     parameters: (TEXT)

     called by: (:METHOD BASIC-CONSTRAINT-MIXIN :READ),
          CHOOSE-NUMBER-OF-RESULTS, CHOOSE-RELATION,
          CHOOSE-VALUE-SPEC, READ-EXPR-FROM-WINDOW

     calls: READ-EXPR-FROM-WINDOW, READ-FROM-STRING, SEND-KB

     uses keywords: :PROMPT-FOR-INPUT

-------------------------------------------------------------------

  REM-CLAUSE                                        "BASIC;AXIOMS"

     parameters: (CLAUSE AXIOM-SET)

     called by: (:METHOD BASIC-GOALBOX :PROVE-ASSUME),
          (:METHOD BASIC-GOALBOX :PROVE-RETRACT)

     calls: SYS:DELETE*, SYS::SETPROP

     macros expanded: GET-PREDS, HEAD, PRED, REM-PRED

   removes `<clause>` from the defining clauses of `<axiom-set>`.
the predicate of `<clause>` is removed from the list of predicates of
`<axiom-set>`,
if no clauses remain.

-------------------------------------------------------------------

  REM-CLAUSES                   macro               "BASIC;AXIOMS"

     parameters: (PRED AXIOM-SET)

     expanded in: (:METHOD BASIC-GOALBOX :PROVE-ABOLISH),
          REMOVE-ALL-CLAUSES

   removes `<pred>` from the list of predicates of `<axiom-set>` with all
defining clauses.

-------------------------------------------------------------------

  REM-PRED                      macro               "BASIC;AXIOMS"

     parameters: (PRED AXIOM-SET)

     expanded in: (:METHOD BASIC-GOALBOX :PROVE-ABOLISH), REM-CLAUSE,
          REMOVE-ALL-CLAUSES

     used as a constant by: REM-CLAUSES

   removes `<pred>` from the list of predicates of `<axiom-set>`.

-------------------------------------------------------------------

  REM-PREDS                     macro               "BASIC;AXIOMS"

     parameters: (AXIOM-SET)

   removes the list of predicates of `<axiom-set>`.

-------------------------------------------------------------------

  REMOVE-ALL-CLAUSES                                "BASIC;AXIOMS"

     parameters: (AXIOM-SET)

     called by: INIT-AXSET, RESET-AXIOM-SET

     calls: SYS:DELETE*, REMPROP, SYS::SETPROP

     macros expanded: DO-NAMED, GET-PREDS, REM-CLAUSES, REM-PRED

   removes all clauses in `<axiom-set>` without deleting `<axiom-set>`.

-------------------------------------------------------------------

  REMOVE-DEFAULT-AXSET                              "BASIC;BP-MIXIN"

     parameters: (NAME)

     called by: (:METHOD BASIC-PROLOG-MIXIN :ASSERT-CLAUSES)

     calls: SYS:REMOVE*, REMPROP

     special variables: *AXIOM-SETS*

-------------------------------------------------------------------

  REMOVE-DOUBLES                                    "COMMON;C-FNS"

     parameters: (LIST &OPTIONAL RESULT)

     called by: COLLECT-TERM-COMPONENTS, REMOVE-DOUBLES,
          (:METHOD RULE-BASE :FIND-MATCHING-CONCLUSIONS),
          (:METHOD RULE-EXPLAIN-MIXIN :WHY-NOT)

     calls: SYS:MEMBER-EQUAL, NREVERSE, REMOVE-DOUBLES

-------------------------------------------------------------------

  REMOVE-NOISY-WORDS                                "BASIC;FRAMES"

     parameters: (ARGS)

     called by: (:METHOD FRAME-BASE :NEW-INSTANCE),
          (:METHOD FRAME-BASE :NEW-UNNAMED-INSTANCE)

     calls: SYS:REMOVE*

-------------------------------------------------------------------

  REMOVE-REQUEST-KEY                                "BASIC;BC-MIXIN"

     parameters: (EXPRESSION)

     called by: (:METHOD BASIC-CONSTRAINT-MIXIN :EVAL-SATISFIED-P),
          (:METHOD BASIC-CONSTRAINT-MIXIN :EVAL-SATISFY)

-------------------------------------------------------------------

  REPLACE-POSSIBLE-VALUES                           "NORMAL;RSTREVAL"

     parameters: (SLOT-REF VALUE-SPEC)

     called by: (:METHOD RESTRICTION-NET :REPLACE-POSSIBLE-VALUES)

     calls: GET-INSTANCE-NAME

     macros expanded: $SEND, GET-INSTANCE, GET-OBJECT-OF-SLOT-REF,
          GET-SLOT-OF-SLOT-REF, SEND

     uses keywords: :INSTANCE, :ONE-OF, :POSSIBLE-VALUES, :PUT

   	ersetzt possible-values, falls value-spec ungleich
  	unconstrained ist

-------------------------------------------------------------------

  REPLACE-SLOT-VALUE                                "NORMAL;RSTREVAL"

     parameters: (SLOT-REF VALUE-SPEC)

     called by: (:METHOD RESTRICTION-NET :REPLACE-VALUES)

     calls: GET-INSTANCE-NAME

     macros expanded: $SEND, GET-INSTANCE, GET-OBJECT-OF-SLOT-REF,
          GET-SLOT-OF-SLOT-REF, SEND

     uses keywords: :GET-VALUE-ONLY, :INSTANCE, :TRY-PUT

   	fuehrt einen Schreibversuch auf den Slot durch,
  	falls value-spec einelementig ist

-------------------------------------------------------------------

  REPLACE-VAR-INFO-VALUES                           "BASIC;CSTRNET"

     parameters: (INFO-ASSOC VALUE-SPEC)

     called by: ADD-VAR-INFO-VALUES, MODIFY-NET-VALUE-ASS

     macros expanded: GET-VAR-INFO

-------------------------------------------------------------------

  RESET-AXIOM-SET                                   "BASIC;AXIOMS"

     parameters: (AXIOM-SET &OPTIONAL
          (AXIOM-SETS (GET-KNOWN-AXIOM-SETS)))

     called by: (:METHOD AXSET-BASIC :RESET-AXIOM-SETS)

     calls: ADD-AXIOMS, GETHASH, SYS:MEMBER-EQL,
          REMOVE-ALL-CLAUSES, SEND-KB

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :BABYLON-FORMAT

   resets `<axiom-set>` if it belongs to the list of axiom sets <axiom-
sets>.

-------------------------------------------------------------------

  RESET-INSTANCE                macro               "BASIC;FRAMES"

     parameters: (INSTANCE-NAME)

     used as a constant by: RESET-INSTANCES

     uses keywords: :BABYLON-FORMAT

-------------------------------------------------------------------

  RESET-INSTANCES               macro               "BASIC;FRAMES"

     parameters: (&REST LIST-OF-INSTANCE-NAMES)

     calls: SYS:*APPEND

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS,
          SYS::XR-BQ-APPEND

-------------------------------------------------------------------

  RESET-KNOWLEDGE-BASE                              "META;KB-CORE"

     parameters: ()

     calls: SEND-KB

     uses keywords: :RESET-KB-CONFIRMED

   asks whether to reset the current kb resetting it eventually.

-------------------------------------------------------------------

  RESET-VAR-INFO-VALUES                             "BASIC;CSTRNET"

     parameters: (INFO-ASSOC)

     called by: (:METHOD CONSTRAINT-NET :RESET-STATE)

     macros expanded: GET-VAR-INFO

-------------------------------------------------------------------

  REST-DEREF                                        "BASIC;AX-SC"

     parameters: (X NR)

     called by: REST-DEREF

     calls: REST-DEREF, VARCELL-P

     macros expanded: IS-REST-BOUND

-------------------------------------------------------------------

  REST-SUBST-PROLOG-VARS                            "BASIC;AX-SC"

     parameters: (TERM MODE NR)

     called by: (:METHOD BASIC-GOALBOX :GET-GOAL-ON-INIT),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-EQUAL),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-IS),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NORMAL-BEFORE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-READ),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TOP-BEFORE),
          REST-SUBST-PROLOG-VARS

     calls: COPY-SEQ, FORMAT::GET-FORMAT-STRING, INTERN, PRIN1,
          REST-SUBST-PROLOG-VARS, FORMAT::RETURN-FORMAT-STRING,
          VARCELL-P, WRITE-CHAR

     macros expanded: CASE, IS-REST-BOUND

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

   substitutes all varcells in term by their values neglecting last
instantiations.
instantiations are considered if their position in env is <= nr.
varcells not instantiated till then are replaced by their internal
name, their
external name or by itself according to the value normal ext int of
mode.

-------------------------------------------------------------------

  (:METHOD RESTRICTED-SLOT :GET)                    "NORMAL;RESTRICT"

     parameters: ()

     instance variables: VALUE

-------------------------------------------------------------------

  (:METHOD RESTRICTED-SLOT :PUT)                    "NORMAL;RESTRICT"

     parameters: (INSTANCE SLOT NEW-VALUE &OPTIONAL (TEST NIL))

     calls: SLOT-VALUE-TO-VALUE-SPEC

     macros expanded: $SEND, MAKE-SLOT-REF, MAKE-VALUE-ASSOC, SEND

     instance variables: RESTRICTION-NET, VALUE

     uses keywords: :DEMON, :OBJECT-NAME, :TEST, :UPDATE-SLOT-STATE

-------------------------------------------------------------------

  (:METHOD RESTRICTED-SLOT :TRY-PUT)                "NORMAL;RESTRICT"

     parameters: (NEW-VALUE)

     instance variables: PROTECTED, VALUE

-------------------------------------------------------------------

  (:METHOD RESTRICTION-BASE :DELETE-RESTRICTIONS)   "NORMAL;RSTRBASE"

     parameters: (NAME)

     calls: SYS:ASSOC-EQUAL, SYS:REMOVE*

     instance variables: RESTRICTION-NETS

   	Loeschen eines Restriction-net

-------------------------------------------------------------------

  (:METHOD RESTRICTION-BASE :GET-RESTRICTIONS)      "NORMAL;RSTRBASE"

     parameters: (NAME)

     calls: SYS:ASSOC-EQUAL

     macros expanded: GET-OBJECT-OF-C-ASSOC

     instance variables: RESTRICTION-NETS

   	Zugriff auf Restriction-Net ueber Name

-------------------------------------------------------------------

  (:METHOD RESTRICTION-BASE :IS-DEFINED-P)          "NORMAL;RSTRBASE"

     parameters: (R-NET)

     calls: SYS:RASSOC-EQL

     instance variables: RESTRICTION-NETS

   	testet, ob das Restriction-Net r-net definiert, d.h. in der
        restriction-base eingetragen ist

-------------------------------------------------------------------

  (:METHOD RESTRICTION-BASE :NEW&DELETE-RESTRICTION)
"NORMAL;RSTRBASE"

     parameters: (NAME GUARDED-SLOTS PROTECTED-SLOTS RESTRICTIONS)

     macros expanded: $SEND, SEND

     uses keywords: :DELETE-RESTRICTIONS, :NEW-RESTRICTION

-------------------------------------------------------------------

  (:METHOD RESTRICTION-BASE :NEW-RESTRICTION)       "NORMAL;RSTRBASE"

     parameters: (NAME GUARDED-SLOTS PROTECTED-SLOTS RESTRICTIONS)

     calls: CREATE-NET-SPEC, DETERMINE-SLOTS,
          INSTANTIATE-RESTRICTIONS, MAKE-INSTANCE

     macros expanded: $SEND, MAKE-$INSTANCE, SEND

     uses keywords: :GET, :GET-RESTRICTIONS, :MAKE-ACTIVE-VALUES,
          :NET-VARIABLES, :PUT-RESTRICTIONS, :SET-INTERFACE,
          :SET-NET-SPEC, :STORE-DEFINITION

   	Definition eines neuen Restriction-Netzes

-------------------------------------------------------------------

  (:METHOD RESTRICTION-BASE :PUT-RESTRICTIONS)      "NORMAL;RSTRBASE"

     parameters: (NAME NET)

     macros expanded: MAKE-CONSTRAINT-ASSOC

     instance variables: RESTRICTION-NETS

   	Eintrag eines neuen Restriction-Nets

-------------------------------------------------------------------

  (:METHOD RESTRICTION-BASE :REDEFINE)              "NORMAL;RSTRBASE"

     parameters: (NAME)

     macros expanded: $SEND, SEND

     uses keywords: :GET-RESTRICTIONS, :REDEFINE-ONE

-------------------------------------------------------------------

  (:METHOD RESTRICTION-BASE :REDEFINE-ALL)          "NORMAL;RSTRBASE"

     parameters: ()

     macros expanded: $SEND, DO-NAMED, GET-OBJECT-OF-C-ASSOC,
          INHIBIT-STYLE-WARNINGS, SEND

     instance variables: RESTRICTION-NETS

     uses keywords: :REDEFINE-ONE

   	erzeugt alle Restriction-Netze neu

-------------------------------------------------------------------

  (:METHOD RESTRICTION-DEFINITION :PRINT)           "NORMAL;RESTRICT"

     parameters: (NAME STREAM)

     calls: BABPPRINT, PRINC, TERPRI

     instance variables: GUARDED, PROTECTED, RESTRICTIONS

     uses keywords: :GUARDED-SLOTS, :PROTECTED-SLOTS, :RESTRICTIONS

   	Ausgabe des Restriction-Net

-------------------------------------------------------------------

  (:METHOD RESTRICTION-DEFINITION :STORE-DEFINITION)
"NORMAL;RESTRICT"

     parameters: (NEW-RESTRICTIONS NEW-GUARDED NEW-PROTECTED)

     instance variables: GUARDED, PROTECTED, RESTRICTIONS

   	speichert generische Beschreibung des Netzes

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :COPY-POSSIBLE-VALUES)   "NORMAL;RSTREVAL"

     parameters: ()

     calls: ADD-VAR-INFO-VALUES, COPY-POSSIBLE-VALUES

     macros expanded: DO-NAMED, GET-NET-VAR, INHIBIT-STYLE-WARNINGS

     instance variables: NET-SPEC

   	kopiere :possible-values auf Netzvariablen

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :COPY-VALUES)            "NORMAL;RSTREVAL"

     parameters: ()

     calls: ADD-VAR-INFO-VALUES, COPY-SLOT-VALUE

     macros expanded: DO-NAMED, GET-NET-VAR, INHIBIT-STYLE-WARNINGS

     instance variables: NET-SPEC

   	kopiere die Werte aller Slots auf die Netzvariablen

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :CORRECT-RESTRICTION-NET)
"NORMAL;RESTRICT"

     parameters: (INSTANCE SLOT)

     calls: SEND-KB

     macros expanded: $SEND, FLAVOR-TYPEP, SEND

     special variables: SELF

     uses keywords: :GET-VALUE-ONLY, :IS-DEFINED-P, :RESTRICTION-NET

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :DEMON)                  "NORMAL;RSTREVAL"

     parameters: (VALUE-ASS)

     macros expanded: $SEND, SEND

     uses keywords: :CONSISTENT-P, :FORGET-STATE, :GET-STABLE-STATE,
          :INITIALIZE-AGENDA, :INITIALIZE-VARIABLES, :PROPAGATE,
          :REPLACE-VALUES, :RESTORE-STATE, :STORE-STATE

   	ueberfuehrt Netz in einen stabilen Zustand;
  	danach wird Netz versuchsweise mit value-assignment
  	aktiviert;
  	bei Konsistenz wird das Ergebnis der Propagierung beibehalten
  	und Slotwerte angepasst

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :FILTER-POSSIBLE-VALUES)
"NORMAL;RSTREVAL"

     parameters: ()

     macros expanded: $SEND, SEND

     instance variables: AGENDA

     uses keywords: :COPY-POSSIBLE-VALUES, :FREEZE-STATE,
          :INIT-SLOT-STATE, :PROPAGATE, :TOTAL-INIT-QUEUE

   	ueberfuehrt das Netz (falls noch nicht geschehen) vom
Anfangszustand
  	in einen Zustand, in dem

  	- das Netz gefiltert und die possible-values propagiert wurden
  	- alle Slots in die changed-Liste eingefuegt werden

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :GET-STABLE-STATE)       "NORMAL;RSTREVAL"

     parameters: ()

     calls: ADMISSIBLE-NET-P, MAKE-VALUE-ASS-OF-POSTED-SLOTS

     macros expanded: $SEND, SEND

     instance variables: CHANGED-SLOTS, MORE-RESTRICTED-SLOTS,
          NET-SPEC

     uses keywords: :COPY-VALUES, :FILTER-POSSIBLE-VALUES,
          :GET-INITIALE-STATE, :INITIALIZE-AGENDA,
          :INITIALIZE-VARIABLES, :PROPAGATE, :RESET-SLOT-STATE,
          :TOTAL-INIT-QUEUE

   	ueberfuehrt das Netz in einem Zustand, in dem

  	- alle inzwischen durchgefuehrten Slotwertaenderungen
propagiert
  	  werden und das Netz somit wieder mit den Slotwerten
uebereinstimmt

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :INIT-SLOT-STATE)        "NORMAL;RSTREVAL"

     parameters: ()

     instance variables: CHANGED-SLOTS, INTERFACE,
          MORE-RESTRICTED-SLOTS

   	initialisiert die Slot-Listen, um die
  	Herstellung eines ersten stabilen Zustands
  	zu ermoeglichen

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :MAKE-ACTIVE-VALUES)     "NORMAL;RESTRICT"

     parameters: (GUARDED-SLOTS PROTECTED-SLOTS)

     calls: GET-INSTANCE-NAME

     macros expanded: $SEND, DO-NAMED, GET-INSTANCE,
          GET-OBJECT-OF-SLOT-REF, GET-SLOT-OF-SLOT-REF,
          INHIBIT-STYLE-WARNINGS, SEND

     instance variables: INTERFACE

     uses keywords: :INSTANCE, :MAKE-GUARDED-SLOT,
          :MAKE-PROTECTED-SLOT, :MAKE-SLOT-RESTRICTION

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :MAKE-GUARDED-SLOT)      "NORMAL;RESTRICT"

     parameters: (INSTANCE SLOT)

     macros expanded: $SEND, SEND

     uses keywords: :CORRECT-RESTRICTION-NET, :GET-VALUE-ONLY,
          :SET-GUARDED

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :MAKE-PROTECTED-SLOT)    "NORMAL;RESTRICT"

     parameters: (INSTANCE SLOT)

     macros expanded: $SEND, SEND

     uses keywords: :CORRECT-RESTRICTION-NET, :GET-VALUE-ONLY,
          :SET-PROTECTED

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :MAKE-SLOT-RESTRICTION)  "NORMAL;RESTRICT"

     parameters: (INSTANCE SLOT)

     calls: ERROR, GETHASH, MAKE-INSTANCE

     macros expanded: $SEND, BABERROR, GETENTRY, MAKE-$INSTANCE,
          SEND

     special variables: *LANGUAGE*, SELF

     uses keywords: :CORRECT-RESTRICTION-NET, :GET, :REPLACE,
          :RESTRICTION-NET, :VALUE

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :MODIFY-POSSIBLE-VALUES)
"NORMAL;RSTREVAL"

     parameters: ()

     macros expanded: $SEND, SEND

     uses keywords: :CONSISTENT-P, :FILTER-POSSIBLE-VALUES,
          :REPLACE-POSSIBLE-VALUES

   	wie :test-possible-values;
  	zusaetzlich werden die :possible-values aktualisiert

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :MODIFY-VALUES)          "NORMAL;RSTREVAL"

     parameters: ()

     macros expanded: $SEND, SEND

     uses keywords: :CONSISTENT-P, :GET-STABLE-STATE,
          :REPLACE-VALUES

   	ueberprueft die Konsistenz der aktuellen Slotwerte;
  	evtl. erhalten Slots ohne Wert einen Wert zugewiesen

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :REDEFINE-ONE)           "NORMAL;RSTRBASE"

     parameters: ()

     calls: CREATE-NET-SPEC, DETERMINE-SLOTS,
          INSTANTIATE-RESTRICTIONS, MAKE-AGENDA-ELEM

     macros expanded: $SEND, SEND

     uses keywords: :GUARDED, :MAKE-ACTIVE-VALUES, :NET-VARIABLES,
          :PROTECTED, :RESTRICTIONS, :SET-AGENDA, :SET-INTERFACE,
          :SET-NET-SPEC, :SET-STACK

   	Erzeugen eines neuen Netzes mit Hilfe der generischen
  	Beschreibung
  	(noetig bei Aenderung von Wissensbasiskomponenten,
  	die in der Definition des Netzes benutzt werden

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :REPLACE-POSSIBLE-VALUES)
"NORMAL;RSTREVAL"

     parameters: ()

     calls: GET-VAR-INFO-VALUES, REPLACE-POSSIBLE-VALUES

     macros expanded: DO-NAMED, GET-NET-VAR, INHIBIT-STYLE-WARNINGS

     instance variables: NET-SPEC

   	ersetzt die :possible-values-Komponente der Slots
  	durch die Wertebelgung der entsprechenden
  	Netzvariablen

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :REPLACE-VALUES)         "NORMAL;RSTREVAL"

     parameters: ()

     calls: GET-VAR-INFO-VALUES, REPLACE-SLOT-VALUE

     macros expanded: DO-NAMED, GET-NET-VAR, INHIBIT-STYLE-WARNINGS

     instance variables: NET-SPEC

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :RESET-SLOT-STATE)       "NORMAL;RSTREVAL"

     parameters: ()

     instance variables: CHANGED-SLOTS, MORE-RESTRICTED-SLOTS

   	loescht alle protokollierten Schreibvorgaenge

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :TEST-POSSIBLE-VALUES)   "NORMAL;RSTREVAL"

     parameters: ()

     macros expanded: $SEND, SEND

     uses keywords: :CONSISTENT-P, :FILTER-POSSIBLE-VALUES

   	ueberprueft die Possible-Values der Slots auf
  	Konsistenz und aendert die Defaultwerte
  	entsprechend

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :TEST-VALUES)            "NORMAL;RSTREVAL"

     parameters: ()

     macros expanded: $SEND, SEND

     uses keywords: :CONSISTENT-P, :GET-STABLE-STATE

   	ueberprueft die aktuellen Slotwerte auf Konsistenz

-------------------------------------------------------------------

  (:METHOD RESTRICTION-NET :UPDATE-SLOT-STATE)      "NORMAL;RSTREVAL"

     parameters: (SLOT-REF OLD-VALUE)

     calls: SYS:MEMBER-EQUAL, UNDETERMINED-SLOT-VALUE-P

     instance variables: CHANGED-SLOTS, MORE-RESTRICTED-SLOTS

   	protokolliert Schreibvorgang auf Slot

-------------------------------------------------------------------

  RULE-ASKING-P                                     "MINI;MR-TRACE"

     parameters: (TRACE-ELEMENT)

     called by: (:METHOD MINI-RULE-MIXIN :DISPLAY-RULES-ASKING)

     uses keywords: :ASK-USER

-------------------------------------------------------------------

  (:METHOD RULE-BASE :ADD-RULE)                     "BASIC;RULES"

     parameters: (RULE RULE-SET)

     calls: SYS:*NCONC

   Add a rule to a given rule set.

-------------------------------------------------------------------

  (:METHOD RULE-BASE :FIND-MATCHING-CONCLUSIONS)    "BASIC;RULES"

     parameters: (GOAL-SPECIFICATION
          &OPTIONAL RULE-SET (TEST #'EQUAL))

     calls: SYS:*NCONC, REMOVE-DOUBLES, RULE-SET-RULES

     macros expanded: DO-NAMED, GET-RULE-ACTIONS

     instance variables: CURRENT-RULE-SET

   Returns a list of conclusions conforming to goal specification.

-------------------------------------------------------------------

  (:METHOD RULE-BASE :GET-CURRENT-RULE-SET-NAME)    "BASIC;RULES"

     parameters: ()

     instance variables: CURRENT-RULE-SET

   Returns the name of the current rule set.

-------------------------------------------------------------------

  (:METHOD RULE-BASE :GET-RULE)                     "BASIC;RULES"

     parameters: (RULE-SET-NAME RULE-NAME)

     calls: SYS:ASSOC-EQL, RULE-SET-RULES

     macros expanded: $SEND, SEND

     instance variables: RULES

     uses keywords: :GET-RULE-SET

   Returns the rule for a rule-set-name rule-name combination.

-------------------------------------------------------------------

  (:METHOD RULE-BASE :GET-RULE-NAMES)               "BASIC;RULES"

     parameters: (RULE-SET-NAME)

     calls: RULE-SET-RULES

     macros expanded: $SEND, DO-NAMED, INHIBIT-STYLE-WARNINGS, SEND

     uses keywords: :GET-RULE-SET

   Returns a list of all rule names of a rule set.

-------------------------------------------------------------------

  (:METHOD RULE-BASE :GET-RULE-SET)                 "BASIC;RULES"

     parameters: (RULE-SET-NAME
          &OPTIONAL (RULE-SETS NIL) (BINDINGS NIL))

     calls: SYS:ASSOC-EQL, ERROR, GETHASH,
          SUBSTITUTE-VARIABLES-IN-RULE-SET

     macros expanded: BABERROR, GETENTRY

     instance variables: RULES

     special variables: *LANGUAGE*

   Returns the rule set for a rule set name.

-------------------------------------------------------------------

  (:METHOD RULE-BASE :GET-RULE-SET-NAMES)           "BASIC;RULES"

     parameters: ()

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

     instance variables: RULES

   Returns a list of all rule set names.

-------------------------------------------------------------------

  (:METHOD RULE-BASE :INIF)                         "BASIC;RULES"

     parameters: (TERM
          &OPTIONAL RULE-SET (TEST #'EQUAL))

     calls: SYS:*NCONC, SYS:MEMBER-TEST, RULE-SET-RULES

     macros expanded: DO-NAMED, GET-RULE-CONDITIONS

     instance variables: CURRENT-RULE-SET

   Returns a list of all rules, which have term in their premisse
parts.

-------------------------------------------------------------------

  (:METHOD RULE-BASE :INTHEN)                       "BASIC;RULES"

     parameters: (TERM
          &OPTIONAL RULE-SET (TEST #'EQUAL))

     calls: SYS:*NCONC, SYS:MEMBER-TEST, RULE-SET-RULES

     macros expanded: DO-NAMED, GET-RULE-ACTIONS

     instance variables: CURRENT-RULE-SET

   Returns a list of all rules, which have term in their action
parts.

-------------------------------------------------------------------

  (:METHOD RULE-BASE :KILL-RULE)                    "BASIC;RULES"

     parameters: (RULE RULE-SET)

     calls: SYS:DELETE*, RULE-SET-RULES

   Delete a given rule of a rule set.

-------------------------------------------------------------------

  (:METHOD RULE-BASE :MODIFY-RULE)                  "BASIC;RULES"

     parameters: (RULE-SET-NAME NEW-RULE)

     calls: ERROR, GETHASH

     macros expanded: $SEND, BABERROR, GETENTRY, SEND

     special variables: *LANGUAGE*

     uses keywords: :GET-RULE

   Replace a given rule by a new one.

-------------------------------------------------------------------

  (:METHOD RULE-BASE :RULE-STATISTICS)              "BASIC;RULES"

     parameters: (&OPTIONAL (STREAM *STANDARD-OUTPUT*))

     calls: +, FORMAT, GETHASH

     macros expanded: $SEND, DO-NAMED, GETENTRY,
          INHIBIT-STYLE-WARNINGS, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*, *STANDARD-OUTPUT*

     uses keywords: :RULES

   Lists a statistical description of rules and hypotheses on
`<stream>`.

-------------------------------------------------------------------

  (:METHOD RULE-BASE :UNPARSE-RULES)                "BASIC;RULES"

     parameters: (&OPTIONAL (STREAM *STANDARD-OUTPUT*))

     calls: BABPPRINT, FORMAT, FORMAT::FORMAT-GET-STREAM, GETHASH,
          PRINT-RULE-SET, WRITE-STRING

     macros expanded: $SEND, DO-NAMED, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*, *STANDARD-OUTPUT*,
          FORMAT::FORMAT-STRING

     uses keywords: :HYPOTHESES, :RULES

   Lists rules and hypotheses on `<stream>`.

-------------------------------------------------------------------

  RULE-BODY                     macro               "BASIC;RULES"

     parameters: (RULE)

-------------------------------------------------------------------

  (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-NAMED-RULE)  "NORMAL;NR-DEVEL"

     parameters: (RULE-SET-NAME RULE-NAME)

     macros expanded: $SEND, SEND

     uses keywords: :DISPLAY-RULE, :GET-RULE, :GET-RULE-SET

-------------------------------------------------------------------

  (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-RULE)        "NORMAL;NR-DEVEL"

     parameters: (RULE-BODY
          &OPTIONAL (RULE-SET NIL) (LABEL-FOR-PREVIOUS-RULE NIL)
          (TED-FLAG T) (ITEM-LEN *ITEM-WIDTH*)
          (SPACES-FOR-ITEM "   "))

     calls: COPY-SEQ, FORMAT, FORMAT::GET-FORMAT-STRING, GETHASH,
          PRINC, FORMAT::RETURN-FORMAT-STRING, WRITE-CHAR

     macros expanded: $SEND, CASE, GETENTRY, SEND

     instance variables: CURRENT-RULE-SET, META-PROCESSOR

     special variables: *ITEM-WIDTH*, *LANGUAGE*, *MAX-MENU-ENTRIES*,
          *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

     uses keywords: :CHOOSE-FROM-MENU, :DISPLAY-RULE, :INIF, :INTHEN,
          :MAKE-RULE-ITEMS, :SELECT-RULE

   internal method.

-------------------------------------------------------------------

  (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-RULES-FOR-TERM)
                                                    "NORMAL;NR-DEVEL"

     parameters: (A-TERM INIF-RULES INTHEN-RULES)

     calls: APPEND, COPY-SEQ, FORMAT, FORMAT::GET-FORMAT-STRING,
          GETHASH, PRIN1, FORMAT::RETURN-FORMAT-STRING, WRITE-STRING

     macros expanded: $SEND, DO-NAMED, GETENTRY,
          INHIBIT-STYLE-WARNINGS, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*, *STANDARD-OUTPUT*,
          FORMAT::FORMAT-STRING

     uses keywords: :DISPLAY-RULE, :MULT-CHOOSE-FROM-MENU

   internal method.

-------------------------------------------------------------------

  (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-TERMS-FOR-INSPECTION)
                                                    "NORMAL;NR-DEVEL"

     parameters: (TERMS RULE-SET)

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     special variables: *LANGUAGE*

     uses keywords: :DISPLAY-RULES-FOR-TERM,
          :DISPLAY-TERMS-FOR-INSPECTION, :INIF, :INTHEN,
          :SELECT-TERM

-------------------------------------------------------------------

  (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-TERMS-FOR-INSPECTION2)
                                                    "NORMAL;NR-DEVEL"

     parameters: (TERMS RULE-SET)

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     special variables: *LANGUAGE*

     uses keywords: :DISPLAY-RULES-FOR-TERM,
          :DISPLAY-TERMS-FOR-INSPECTION2, :INIF, :INTHEN,
          :SELECT-TERM

-------------------------------------------------------------------

  (:METHOD RULE-DEVELOP-MIXIN :FILTER-TERMS)        "NORMAL;NR-DEVEL"

     parameters: (TERMS &OPTIONAL MATCH-TYPE)

     calls: COLLECT-TERM-COMPONENTS, COMPUTE-USED-SLOTS,
          FILTER-FIRST, FILTER-SECOND, GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*, *MAX-MENU-ENTRIES*

     uses keywords: :CHOOSE-FROM-MENU, :FILTER-TERMS, :SELECT-TERM

-------------------------------------------------------------------

  (:METHOD RULE-DEVELOP-MIXIN :INSPECT-TERMS)       "NORMAL;NR-DEVEL"

     parameters: (&OPTIONAL (RULE-SET-NAME NIL))

     calls: SYS:ASSOC-EQL, FORMAT, GEN-MULT-CHOOSE-ITEM-LIST,
          GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: META-PROCESSOR, RULES

     special variables: *LANGUAGE*

     uses keywords: :DISPLAY-TERMS-FOR-INSPECTION, :FILTER-TERMS,
          :INSPECT-TERMS, :MULT-CHOOSE-FROM-MENU, :SELECT-RULE-SET,
          :USED-TERMS

-------------------------------------------------------------------

  (:METHOD RULE-DEVELOP-MIXIN :INSPECT-TERMS2)      "NORMAL;NR-DEVEL"

     parameters: (&OPTIONAL (RULE-SET-NAME NIL))

     calls: SYS:ASSOC-EQL, GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: RULES

     special variables: *LANGUAGE*

     uses keywords: :DISPLAY-TERMS-FOR-INSPECTION2, :FILTER-TERMS,
          :INSPECT-TERMS2, :SELECT-RULE-SET, :USED-TERMS

-------------------------------------------------------------------

  (:METHOD RULE-DEVELOP-MIXIN :MAKE-RULE-ITEMS)     "NORMAL;NR-DEVEL"

     parameters: (RULE RULE-SET TED-FLAG ITEM-LEN SPACES-FOR-ITEM)

     calls: SYS:*APPEND, COMPUTE-TERM, MAKE-OP-HEADER,
          MAKE-RULE-HEADER, MAKE-TERM-ITEM

     macros expanded: $SEND, DO-NAMED, GET-ACTION-TYPE, GET-JUNCTOR,
          GET-RULE-ACTIONS, GET-RULE-CONDITIONS,
          INHIBIT-STYLE-WARNINGS, SEND, SYS::XR-BQ-APPEND

     uses keywords: :INIF, :INTHEN

-------------------------------------------------------------------

  (:METHOD RULE-DEVELOP-MIXIN :PRINT-RULE)          "NORMAL;NR-DEVEL"

     parameters: (&OPTIONAL RULE-SET)

     calls: FORMAT, GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     special variables: *LANGUAGE*, *MAX-MENU-ENTRIES*

     uses keywords: :DISPLAY-RULE, :PRINT-RULE, :SELECT-RULE,
          :SELECT-RULE-SET

-------------------------------------------------------------------

  (:METHOD RULE-DEVELOP-MIXIN :SELECT-RULE)         "NORMAL;NR-DEVEL"

     parameters: (RULE-LIST
          &OPTIONAL LABEL (MAX-LINES NIL))

     calls: APPEND, COPY-SEQ, FORMAT::GET-FORMAT-STRING, GETHASH,
          LDIFF, PRIN1, FORMAT::RETURN-FORMAT-STRING

     macros expanded: $SEND, DO-NAMED, GETENTRY,
          INHIBIT-STYLE-WARNINGS, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*, *STANDARD-OUTPUT*,
          FORMAT::FORMAT-STRING

     uses keywords: :CHOOSE-FROM-MENU, :SELECT-RULE, :VALUE

-------------------------------------------------------------------

  (:METHOD RULE-DEVELOP-MIXIN :SELECT-RULE-SET)     "NORMAL;NR-DEVEL"

     parameters: (&OPTIONAL LABEL)

     calls: SYS:*NCONC, FORMAT, GETHASH

     macros expanded: $SEND, DO-NAMED, GETENTRY,
          INHIBIT-STYLE-WARNINGS, SEND

     instance variables: META-PROCESSOR, RULES

     special variables: *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU, :GET-RULE-SET,
          :GET-RULE-SET-NAMES, :SELECT-RULE-SET, :VALUE

-------------------------------------------------------------------

  (:METHOD RULE-DEVELOP-MIXIN :SELECT-TERM)         "NORMAL;NR-DEVEL"

     parameters: (TERM-LIST
          &OPTIONAL LABEL (MAX-LINES NIL))

     calls: APPEND, COPY-SEQ, FORMAT::GET-FORMAT-STRING, GETHASH,
          LDIFF, PRIN1, FORMAT::RETURN-FORMAT-STRING

     macros expanded: $SEND, DO-NAMED, GETENTRY,
          INHIBIT-STYLE-WARNINGS, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*, *STANDARD-OUTPUT*,
          FORMAT::FORMAT-STRING

     uses keywords: :CHOOSE-FROM-MENU, :SELECT-TERM, :VALUE

-------------------------------------------------------------------

  (:METHOD RULE-DEVELOP-MIXIN :USED-TERMS)          "NORMAL;NR-DEVEL"

     parameters: (&OPTIONAL RULE-SET (TEST #'EQUAL))

     calls: SYS:*APPEND, SYS:*NCONC, COPY-LIST,
          SYS:MEMBER-TEST, NREVERSE, RULE-SET-RULES

     macros expanded: DO-NAMED, GET-RULE-ACTIONS,
          GET-RULE-CONDITIONS, POP, PUSH

     instance variables: CURRENT-RULE-SET

   internal method.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :ASK-FOR-HOW)         "NORMAL;NR-EXPL"

     parameters: (NUMBERED-FACTS ALL-NUMBERED-FACTS &OPTIONAL
          UNPROVABLE-FACTS)

     calls: GENERATE-HOW-MENU-ITEMS

     macros expanded: $SEND, CASE, SEND

     instance variables: META-PROCESSOR

     uses keywords: :CHOOSE-FROM-MENU, :EXPLAIN-FACT,
          :HOW-ULTIMATELY, :PRINT-RULE, :WHICH-FACT, :WHY-NOT

   Make Selection menu and explain selected facts.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-TREE)        "NORMAL;NR-EXPL"

     parameters: (TERM RULE-SET)

     calls: COMPUTE-TERM, COPY-SEQ, FROM-LIST-TO-STRING,
          FORMAT::GET-FORMAT-STRING, IS-NEGATED-TERM, PRIN1,
          FORMAT::RETURN-FORMAT-STRING, WRITE-CHAR, WRITE-STRING

     macros expanded: $SEND, DO-NAMED, GET-JUNCTOR,
          GET-RULE-CONDITIONS, INHIBIT-STYLE-WARNINGS, SEND

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

     uses keywords: :COMPUTE-TREE, :GET-INPUT-TYPE, :INTHEN

   internal method.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-WHY-NOT-TREE)  "NORMAL;NR-
EXPL"

     parameters: (TERM RULE-SET TRACE-BASE)

     calls: COMPUTE-TERM, COPY-SEQ, FROM-LIST-TO-STRING,
          FORMAT::GET-FORMAT-STRING, IS-NEGATED-TERM, PRIN1, PRINC,
          FORMAT::RETURN-FORMAT-STRING, WRITE-CHAR, WRITE-STRING

     macros expanded: $SEND, DO-NAMED, GET-JUNCTOR,
          GET-RULE-CONDITIONS, INHIBIT-STYLE-WARNINGS, SEND

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

     uses keywords: :COMPUTE-WHY-NOT-TREE,
          :GET-LAST-STATUS-IDENTIFIER, :INTHEN

   internal method.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :DISPLAY-TERM-TREE)   "NORMAL;NR-EXPL"

     parameters: (A-TERM RULE-SET)

     calls: CONCATENATE, COPY-SEQ, FORMAT::GET-FORMAT-STRING,
          GETHASH, PRIN1, PRINC, FORMAT::RETURN-FORMAT-STRING,
          WRITE-CHAR

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*, *STANDARD-OUTPUT*,
          FORMAT::FORMAT-STRING

     uses keywords: :COMPUTE-TREE, :DISPLAY, :SEND-RULE-TED

   Internal method.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :DISPLAY-UNPROVABLE-TERM-TREE)
                                                    "NORMAL;NR-EXPL"

     parameters: (A-TERM RULE-SET TRACE-BASE)

     calls: CONCATENATE, COPY-SEQ, FORMAT::GET-FORMAT-STRING,
          GETHASH, PRIN1, PRINC, FORMAT::RETURN-FORMAT-STRING,
          WRITE-CHAR

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*, *STANDARD-OUTPUT*,
          FORMAT::FORMAT-STRING

     uses keywords: :COMPUTE-WHY-NOT-TREE, :DISPLAY, :SEND-RULE-TED

   internal method.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-ACTION)      "NORMAL;NR-EXPL"

     parameters: (FACT CURRENT-RULE RULE-SET)

     calls: GETHASH, MAKE-NUMBERED-FACTS

     macros expanded: $SEND, DO-NAMED, GET-ACTION-TYPE, GET-JUNCTOR,
          GET-RULE-ACTIONS, GET-RULE-CONDITIONS, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :ASK-FOR-HOW, :FORMAT, :GET-ALL-FACTS,
          :SEND-EXPLANATION-WINDOW, :TYPE-END-TO-CONTINUE

   Explain an action.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-FACT)        "NORMAL;NR-EXPL"

     parameters: (FACT)

     macros expanded: $SEND, SEND

     instance variables: META-PROCESSOR

     uses keywords: :FORMAT, :SEND-EXPLANATION-WINDOW,
          :TRANSLATE-STATUS-INTO-STRING

   Explain a facts status.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-PREMISE)     "NORMAL;NR-EXPL"

     parameters: (FACT CURRENT-RULE RULE-SET)

     calls: SYS:*NCONC, GETHASH, IS-NEGATED-TERM,
          IS-UNDETERMINED, MAKE-NUMBERED-FACTS, SYS:MEMBER-EQUAL

     macros expanded: $SEND, DO-NAMED, GET-ACTION-TYPE, GET-JUNCTOR,
          GET-RULE-ACTIONS, GET-RULE-CONDITIONS, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :ASK-FOR-HOW, :FORMAT, :GET-ALL-FACTS,
          :GET-TRUE-FACTS, :PRINT-NUMBERED-FACTS,
          :RECALL-WITHOUT-ASKING, :SEND-EXPLANATION-WINDOW,
          :TYPE-END-TO-CONTINUE

   Explain a premisse.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-RESULTS)     "NORMAL;NR-EXPL"

     parameters: ()

     macros expanded: $SEND, SEND

     uses keywords: :HOW

   Explain all the results of rule evaluation.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :GET-INPUT-TYPE)      "NORMAL;NR-EXPL"

     parameters: (TERM)

     calls: SYS:*NCONC, COMPUTE-TERM, FORMAT, GETHASH

     macros expanded: $SEND, CASE, DO-NAMED, GETENTRY, SEND

     special variables: *LANGUAGE*

     uses keywords: :INTHEN, :RULES

   internal method.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :GET-LAST-STATUS)     "NORMAL;NR-EXPL"

     parameters: (TERM)

     instance variables: JUSTIFICATION-LIST

   Get last status for term.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :GET-LAST-STATUS-IDENTIFIER)
                                                    "NORMAL;NR-EXPL"

     parameters: (TERM)

     macros expanded: $SEND, SEND

     uses keywords: :GET-LAST-STATUS, :UNDETERMINED

   Get last status identifier for term.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :GET-STATUS)          "NORMAL;NR-EXPL"

     parameters: (TERM)

     calls: SYS:*NCONC

     macros expanded: DO-NAMED

     instance variables: JUSTIFICATION-LIST

   Provides a list of justificandes for term.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :HOW)                 "NORMAL;NR-EXPL"

     parameters: (&OPTIONAL (FACTS NIL))

     calls: GETHASH, MAKE-NUMBERED-FACTS

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :ASK-FOR-HOW, :FORMAT, :GET-ALL-FACTS,
          :GET-TRUE-FACTS, :GET-UNPROVABLE-FACTS,
          :PRINT-NUMBERED-FACTS, :SEND-EXPLANATION-WINDOW

   Provides how explanations.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :HOW-ULTIMATELY)      "NORMAL;NR-EXPL"

     parameters: (FACT)

     calls: GETHASH

     macros expanded: $SEND, DO-NAMED, GETENTRY,
          INHIBIT-STYLE-WARNINGS, SEND

     instance variables: META-PROCESSOR, RULES-USED

     special variables: *LANGUAGE*

     uses keywords: :DISPLAY-TERM-TREE, :SEND-IF-HANDLES,
          :TYPE-END-TO-CONTINUE

   Provides how ultimately explanations using the ted.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :PRINT-NUMBERED-FACTS)  "NORMAL;NR-
EXPL"

     parameters: (NUMBERED-FACTS)

     macros expanded: $SEND, DO-NAMED, INHIBIT-STYLE-WARNINGS, SEND

     instance variables: META-PROCESSOR

     uses keywords: :FORMAT, :SEND-EXPLANATION-WINDOW

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :TRANSLATE-STATUS-INTO-STRING)
                                                    "NORMAL;NR-EXPL"

     parameters: (TERM)

     calls: ERROR, FORMAT, GETHASH

     macros expanded: $SEND, BABERROR, CASE, DO-NAMED,
          GET-ACTION-TYPE, GETENTRY, INHIBIT-STYLE-WARNINGS, SEND

     special variables: *LANGUAGE*

     uses keywords: :GET-STATUS, :RULE-ACTION, :UNKNOWN, :UNPROVABLE,
          :USER-NO, :USER-YES

   Translate status of a term into a string.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :WHICH-FACT)          "NORMAL;NR-EXPL"

     parameters: (NUMBERED-FACTS &OPTIONAL (ITEM-LEN *ITEM-WIDTH*))

     calls: GETHASH, MAKE-FACTS-CHOICE

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *ITEM-WIDTH*, *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :WHY)                 "NORMAL;NR-EXPL"

     parameters: (FACT CURRENT-RULE RULE-SET FACT-TYPE)

     calls: ERROR, GETHASH

     macros expanded: $SEND, BABERROR, CASE, GETENTRY, SEND

     special variables: *LANGUAGE*

     uses keywords: :ACTION, :EXPLAIN-ACTION, :EXPLAIN-PREMISE,
          :PREMISE

   Explain why a fact has some status.

-------------------------------------------------------------------

  (:METHOD RULE-EXPLAIN-MIXIN :WHY-NOT)             "NORMAL;NR-EXPL"

     parameters: (FACT)

     calls: REMOVE-DOUBLES

     macros expanded: $SEND, DO-NAMED, INHIBIT-STYLE-WARNINGS, SEND

     instance variables: RULES-TRIED

     special variables: SELF

     uses keywords: :DISPLAY-UNPROVABLE-TERM-TREE, :SEND-IF-HANDLES

   Provides why not explanations using the ted.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :AND-BACKWARD)          "BASIC;BR-INTER"

     parameters: (RULE CONDITIONS RULE-SET)

     macros expanded: $SEND, SEND

     uses keywords: :VERIFY

   Internal method. Backward evaluation of AND junctor in premisses.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :AND-FORWARD)           "BASIC;BR-INTER"

     parameters: (RULE CONDITIONS RULE-SET)

     calls: IS-UNDETERMINED-OR-NULL

     macros expanded: $SEND, SEND

     uses keywords: :RECALL

   AND forward control strategy for rule evaluation.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :AND-FORWARD-ASKING-IF-UNDETERMINED)
                                                    "BASIC;BR-INTER"

     parameters: (RULE CONDITIONS RULE-SET)

     calls: COMPUTE-TERM, IS-NEGATED-TERM, IS-UNDETERMINED, REVERSE

     macros expanded: $SEND, POP, PUSH, SEND

     uses keywords: :ASK-USER, :PREMISE, :RECALL

   AND forward with asking if undetermined strategy for rule
evaluation.
   Do not ask any questions to the user, if there is any premisse,
   that can be shown to be failing.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :BEFORE :RESET-PROC)    "BASIC;BR-INTER"

     parameters: ()

     instance variables: CONFLICT-RESOLUTION, RHS-ONE-SHOT-LIST

   Reset rule interpreter to initial state.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :CONCLUDE)              "BASIC;BR-INTER"

     parameters: (RULE ACTIONS RULE-SET)

     macros expanded: $SEND, SEND

     uses keywords: :REMEMBER

   Performs rule conclusions of action type $CONCLUDE.
The value of :conclude is the value of the last action executed
successfully.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :DO-ALL)                "BASIC;BR-INTER"

     parameters: (RULE-SET-NAME
          &OPTIONAL DUMMY (BINDINGS NIL))

     calls: RULE-SET-RULES

     macros expanded: $SEND, POP, SEND

     uses keywords: :GET-RULE-SET, :TRY-RULE

   Internal method. Forward evaluation with DO-ALL control strategy.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :DO-ONE)                "BASIC;BR-INTER"

     parameters: (RULE-SET-NAME
          &OPTIONAL DUMMY (BINDINGS NIL))

     calls: RULE-SET-RULES

     macros expanded: $SEND, POP, SEND

     uses keywords: :GET-RULE-SET, :TRY-RULE

   Internal method. Forward evaluation of a DO-ONE rule.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :EXECUTE)               "BASIC;BR-INTER"

     parameters: (RULE ACTIONS RULE-SET)

     macros expanded: $SEND, SEND

     uses keywords: :REMEMBER

   Performs rule conclusions of action type $EXECUTE.
The value of :execute is always true.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :EXECUTE-ASK)           "BASIC;BR-INTER"

     parameters: (RULE ACTIONS RULE-SET)

     calls: IS-UNDETERMINED

     macros expanded: $SEND, SEND

     uses keywords: :ACTION, :ASK-USER, :RECALL

   Performs rule conclusions of action type $ASK.
   While some action is undetermined ask user for verification.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :FALSE)                 "BASIC;BR-INTER"

     parameters: (RULE CONDITIONS RULE-SET)

   Rule which never succeeds. No operation.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :IN-THEN-PART)          "BASIC;BR-INTER"

     parameters: (FACT RULE-SET CURRENT-RULE)

     macros expanded: $SEND, SEND

     uses keywords: :INTHEN

   Defines a different name for method :inthen of rule-base.
This method is  used as  the primary  method of  a before  demon used
to
trace actions of the interpreter, and seperates the use of :inthen
within
the context of the interpreter from the use of :inthen in  other
context,
which should not be traced.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :OBTAIN)                "BASIC;BR-INTER"

     parameters: (VERIFICATION-LIMIT GOAL-SPECIFICATION
          A-RULE-SET-NAME &OPTIONAL (BINDINGS NIL))

     calls: MATCH-FIRST, MATCH-FIRST-AND-SECOND

     macros expanded: $SEND, CASE, SEND

     uses keywords: :FIND-MATCHING-CONCLUSIONS, :GET-RULE-SET,
          :TEST-HYPOTHESES

   Start rule evaluation by backward chaining.
Hypotheses are given implicitly.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :ONE-SHOT)              "BASIC;BR-INTER"

     parameters: (RULE CONDITIONS RULE-SET)

     calls: SYS:MEMBER-EQL

     instance variables: RHS-ONE-SHOT-LIST

   One shot control strategy for rule evaluation.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :OR-BACKWARD)           "BASIC;BR-INTER"

     parameters: (RULE CONDITIONS RULE-SET)

     macros expanded: $SEND, SEND

     uses keywords: :VERIFY

   Internal method. Backward evaluation of OR junctor in premisses.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :OR-FORWARD)            "BASIC;BR-INTER"

     parameters: (RULE CONDITIONS RULE-SET)

     calls: IS-UNDETERMINED-OR-NULL

     macros expanded: $SEND, SEND

     uses keywords: :RECALL

   OR forward control strategy for rule evaluation.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :OR-FORWARD-ASKING-IF-UNDETERMINED)
                                                    "BASIC;BR-INTER"

     parameters: (RULE CONDITIONS RULE-SET)

     calls: COMPUTE-TERM, IS-NEGATED-TERM, IS-UNDETERMINED, REVERSE

     macros expanded: $SEND, POP, PUSH, SEND

     uses keywords: :ASK-USER, :PREMISE, :RECALL

   OR forward with asking if undetermined strategy for rule
evaluation.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :START-FORWARD)         "BASIC;BR-INTER"

     parameters: (&OPTIONAL RULE-SET-NAME (CONTROL-STRUCTURE :DO-ALL)
          (CONDITION T) (BINDINGS NIL))

     macros expanded: $SEND, SEND

     instance variables: CURRENT-RULE-SET

     uses keywords: :DO-ALL

   Start rule evaluation by forward chaining.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :TEST-HYPOTHESES)       "BASIC;BR-INTER"

     parameters: (VERIFICATION-LIMIT HYPOTHESES
          RULE-SET-OR-RULE-SET-NAME &OPTIONAL (BINDINGS NIL))

     macros expanded: $SEND, DECF, SEND

     uses keywords: :ADD-HYPOTHESES-VERIFIED, :GET-RULE-SET,
          :HYPOTHESES-VERIFIED, :VERIFY-HYPOTHESIS

   Start rule evaluation by backward chaining.
Hypotheses are given explicitly.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :TRUE)                  "BASIC;BR-INTER"

     parameters: (RULE CONDITIONS RULE-SET)

   Unconditional rule.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :TRY-RULE)              "BASIC;BR-INTER"

     parameters: (RULE RULE-SET MODE)

     calls: GET-OP-DEF, SYS:SUBLIS*

     macros expanded: $SEND, GET-ACTION-TYPE, GET-JUNCTOR,
          GET-RULE-ACTIONS, GET-RULE-CONDITIONS, INSTANTIATE-PATTERN,
          SEND, TESTIF, USETHEN

     uses keywords: :ADD-RULE-TRIED, :ADD-RULE-USED

   Internal method.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :VARIABLE-AND-FORWARD)  "BASIC;BR-INTER"

     parameters: (RULE CONDITIONS RULE-SET)

     macros expanded: $SEND, SEND

     instance variables: META-PROCESSOR

     uses keywords: :EVAL, :RECALL

   AND forward control strategy for rule evaluation with variables.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :VARIABLE-OR-FORWARD)   "BASIC;BR-INTER"

     parameters: (RULE CONDITIONS RULE-SET)

     macros expanded: $SEND, SEND

     instance variables: META-PROCESSOR

     uses keywords: :EVAL, :RECALL

   OR forward control strategy for rule evaluation with variables.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :VERIFY)                "BASIC;BR-INTER"

     parameters: (FACT CURRENT-RULE RULE-SET)

     calls: IS-NEGATED-TERM, IS-UNDETERMINED

     macros expanded: $SEND, POP, SEND

     instance variables: CONFLICT-RESOLUTION

     special variables: SELF

     uses keywords: :ADD-UNPROVABLE, :ASK-USER, :IN-THEN-PART,
          :IS-UNPROVABLE, :PREMISE, :RECALL, :TRY-RULE

   Internal method.
a modified version of WINSTONS VERIFY.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :VERIFY-HYPOTHESIS)     "BASIC;BR-INTER"

     parameters: (HYPOTHESIS RULE RULE-SET)

     macros expanded: $SEND, SEND

     uses keywords: :VERIFY

   Defines a different name for method :verify.
This method is  used as  the primary  method of  a before  demon used
to
trace verification of hypotheses. :verify is called recursively

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :WHILE-ALL)             "BASIC;BR-INTER"

     parameters: (RULE-SET-NAME
          &OPTIONAL (WHILE-CONDITION T) (BINDINGS NIL))

     calls: EVAL

     macros expanded: $SEND, SEND

     uses keywords: :DO-ALL

   Internal method. Forward evaluation with WHILE-ALL control
strategy.

-------------------------------------------------------------------

  (:METHOD RULE-INTERPRETER :WHILE-ONE)             "BASIC;BR-INTER"

     parameters: (RULE-SET-NAME
          &OPTIONAL (WHILE-CONDITION T) (BINDINGS NIL))

     calls: EVAL

     macros expanded: $SEND, SEND

     uses keywords: :DO-ONE

   Internal method. Forward evaluation with WHILE-ONE control
strategy.

-------------------------------------------------------------------

  RULE-LEFT-HAND-SIDE                               "BASIC;RULES"

     parameters: (RULE)

     called by: (:METHOD BASIC-RULE-MIXIN :LIST-RULE),
          CHECK-RULE-SYNTAX, (:METHOD RULE-BASE :INIF),
          (:METHOD RULE-DEVELOP-MIXIN :MAKE-RULE-ITEMS),
          (:METHOD RULE-DEVELOP-MIXIN :USED-TERMS),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-WHY-NOT-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-ACTION),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-PREMISE),
          (:METHOD RULE-INTERPRETER :TRY-RULE)

-------------------------------------------------------------------

  RULE-NAME                                         "BASIC;RULES"

     parameters: (RULE)

     called by: (:METHOD BASIC-RULE-MIXIN :LIST-RULE),
          CHECK-RULE-SYNTAX,
          (:METHOD MINI-RULE-MIXIN :DISPLAY-TRACE-ELEMENT),
          (:METHOD RULE-BASE :GET-RULE-NAMES),
          (:METHOD RULE-BASE :MODIFY-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-RULES-FOR-TERM),
          (:METHOD RULE-DEVELOP-MIXIN :MAKE-RULE-ITEMS),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-RULE),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-WHY-NOT-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-ACTION),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-PREMISE),
          (:METHOD RULE-EXPLAIN-MIXIN :TRANSLATE-STATUS-INTO-STRING),
          TRACE-ELEMENT-TO-SHOW

-------------------------------------------------------------------

  RULE-REFERENCE-TYPE           macro               "BASIC;BR-MIXIN"

     parameters: (REQUEST)

-------------------------------------------------------------------

  RULE-RIGHT-HAND-SIDE                              "BASIC;RULES"

     parameters: (RULE)

     called by: (:METHOD BASIC-RULE-MIXIN :LIST-RULE),
          CHECK-RULE-SYNTAX,
          (:METHOD MINI-RULE-MIXIN :DISPLAY-TRACE-ELEMENT),
          (:METHOD RULE-BASE :FIND-MATCHING-CONCLUSIONS),
          (:METHOD RULE-BASE :INTHEN),
          (:METHOD RULE-DEVELOP-MIXIN :MAKE-RULE-ITEMS),
          (:METHOD RULE-DEVELOP-MIXIN :USED-TERMS),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-ACTION),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-PREMISE),
          (:METHOD RULE-EXPLAIN-MIXIN :TRANSLATE-STATUS-INTO-STRING),
          (:METHOD RULE-INTERPRETER :ONE-SHOT),
          (:METHOD RULE-INTERPRETER :TRY-RULE)

-------------------------------------------------------------------

  RULE-SET                      macro               "BASIC;BR-MIXIN"

     parameters: (RULE-SET-NAME &REST RULES)

     used as a constant by:
          (:METHOD BASIC-RULE-MIXIN :EVAL-RULE-META-REFERENCE-FOR-
PROLOG),
          DEFRULE-SET

-------------------------------------------------------------------

  RULE-SET-NAME                                     "BASIC;RULES"

     parameters: (RULE-SET)

     called by: CHECK-RULE-SET-SYNTAX, (:METHOD DATA-BASE :REMEMBER),
          (:METHOD DATA-BASE :STORE),
          (:METHOD RULE-BASE :GET-CURRENT-RULE-SET-NAME),
          (:METHOD RULE-BASE :GET-RULE-SET-NAMES),
          (:METHOD RULE-EXPLAIN-MIXIN :DISPLAY-TERM-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :DISPLAY-UNPROVABLE-TERM-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-ACTION),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-PREMISE),
          (:METHOD RULE-EXPLAIN-MIXIN :TRANSLATE-STATUS-INTO-STRING),
          (:METHOD RULE-INTERPRETER :TRY-RULE),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :IN-THEN-PART),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :REMEMBER),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :STORE),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :ASK-USER),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :TRY-RULE),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :VERIFY-HYPOTHESIS),
          SUBSTITUTE-VARIABLES-IN-RULE-SET

-------------------------------------------------------------------

  RULE-SET-RULES                                    "BASIC;RULES"

     parameters: (RULE-SET)

     called by: (:METHOD BASIC-RULE-MIXIN :BEFORE :ADD-TO-RULES),
          CHECK-RULE-SET-SYNTAX,
          (:METHOD RULE-BASE :FIND-MATCHING-CONCLUSIONS),
          (:METHOD RULE-BASE :GET-RULE),
          (:METHOD RULE-BASE :GET-RULE-NAMES),
          (:METHOD RULE-BASE :INIF), (:METHOD RULE-BASE :INTHEN),
          (:METHOD RULE-BASE :KILL-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :USED-TERMS),
          (:METHOD RULE-INTERPRETER :DO-ALL),
          (:METHOD RULE-INTERPRETER :DO-ONE)

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :AFTER :RESET-PROC)     "MINI;MR-TRACE"

     parameters: ()

     macros expanded: $SEND, SEND

     uses keywords: :RESET-TRACE-LIST

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :AFTER :INIT)           "MINI;MR-TRACE"

     parameters: (&REST PLIST)

     calls: INTERN

     macros expanded: $SEND, SEND

     instance variables: META-PROCESSOR, TRACE-INDICATOR

     uses keywords: :KB-NAME, :KEYWORD

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :BEFORE :VERIFY-HYPOTHESIS)
                                                    "MINI;MR-TRACE"

     parameters: (HYPOTHESIS RULE RULE-SET)

     calls: MAKE-TRACE-ELEMENT, TRACE-ELEMENT-TO-SHOW,
          TRACE-ELEMENT-TO-STORE

     macros expanded: $SEND, SEND

     instance variables: META-PROCESSOR, RULE-TRACE, TRACE-INDICATOR,
          TRACE-LIST, TRACE-MODE

     uses keywords: :DISPLAY-TRACE-ELEMENT, :KEYWORD, :MODE, :RULE,
          :RULE-SET-NAME, :TERM, :VERIFY-HYPOTHESIS

   trace verification attempt of hypothesis.

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :BEFORE :TRY-RULE)      "MINI;MR-TRACE"

     parameters: (RULE RULE-SET MODE)

     calls: MAKE-TRACE-ELEMENT, TRACE-ELEMENT-TO-SHOW,
          TRACE-ELEMENT-TO-STORE

     macros expanded: $SEND, SEND

     instance variables: META-PROCESSOR, RULE-TRACE, TRACE-INDICATOR,
          TRACE-LIST, TRACE-MODE

     uses keywords: :DISPLAY-TRACE-ELEMENT, :KEYWORD, :MODE, :RULE,
          :RULE-SET-NAME, :TERM, :TRY-RULE

   Trace application attempt of rule in rule set rule-set backward or
forward mode.

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :BEFORE :ASK-USER)      "MINI;MR-TRACE"

     parameters: (ACTION RULE RULE-SET FLAG TYPE)

     calls: MAKE-TRACE-ELEMENT, TRACE-ELEMENT-TO-SHOW,
          TRACE-ELEMENT-TO-STORE

     macros expanded: $SEND, SEND

     instance variables: META-PROCESSOR, RULE-TRACE, TRACE-INDICATOR,
          TRACE-LIST, TRACE-MODE

     uses keywords: :ASK-USER, :DISPLAY-TRACE-ELEMENT, :KEYWORD,
          :MODE, :RULE, :RULE-SET-NAME, :TERM

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :BEFORE :STORE)         "MINI;MR-TRACE"

     parameters: (ACTION RULE-SET RULE)

     calls: MAKE-TRACE-ELEMENT, TRACE-ELEMENT-TO-SHOW,
          TRACE-ELEMENT-TO-STORE

     macros expanded: $SEND, SEND

     instance variables: META-PROCESSOR, RULE-TRACE, TRACE-INDICATOR,
          TRACE-LIST, TRACE-MODE

     uses keywords: :DISPLAY-TRACE-ELEMENT, :KEYWORD, :MODE, :RULE,
          :RULE-SET-NAME, :STORE, :TERM

   Trace rule conclusion of type STORE. not yet used

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :BEFORE :REMEMBER)      "MINI;MR-TRACE"

     parameters: (ACTION RULE-SET RULE)

     calls: MAKE-TRACE-ELEMENT, TRACE-ELEMENT-TO-SHOW,
          TRACE-ELEMENT-TO-STORE

     macros expanded: $SEND, SEND

     instance variables: META-PROCESSOR, RULE-TRACE, TRACE-INDICATOR,
          TRACE-LIST, TRACE-MODE

     uses keywords: :DISPLAY-TRACE-ELEMENT, :KEYWORD, :MODE,
          :REMEMBER, :RULE, :RULE-SET-NAME, :TERM

   Trace rule conclusion of type REMEMBER.

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :BEFORE :IN-THEN-PART)  "MINI;MR-TRACE"

     parameters: (FACT RULE-SET CURRENT-RULE)

     calls: MAKE-TRACE-ELEMENT, TRACE-ELEMENT-TO-SHOW,
          TRACE-ELEMENT-TO-STORE

     macros expanded: $SEND, SEND

     instance variables: META-PROCESSOR, RULE-TRACE, TRACE-INDICATOR,
          TRACE-LIST, TRACE-MODE

     uses keywords: :DISPLAY-TRACE-ELEMENT, :IN-THEN-PART, :KEYWORD,
          :MODE, :RULE, :RULE-SET-NAME, :TERM

   Trace verification attempt of term within then part.

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :DISPLAY-TRACED-RULE)   "MINI;MR-TRACE"

     parameters: (RULE RULE-SET)

     calls: GETHASH

     macros expanded: $SEND, GETENTRY, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU, :DISPLAY-RULE,
          :SEND-IF-HANDLES

   Display rule or notify if no display available.

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :FILTER-TRACE-LIST)     "MINI;MR-TRACE"

     parameters: (FILTER)

     calls: TRACE-ELEMENT-TO-SHOW

     instance variables: TRACE-INDICATOR, TRACE-LIST

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :GET-RULES-WITH-MARK)   "MINI;MR-TRACE"

     parameters: (RULE-SET-NAME)

     calls: GET-RULE-MARK, NREVERSE

     macros expanded: $SEND, SEND

     instance variables: TRACE-INDICATOR

     uses keywords: :GET-RULE-NAMES

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :MARK-RULE)             "MINI;MR-TRACE"

     parameters: (MODE RULE-SET-NAME RULE-NAME)

     calls: SYS:DELETE*, SYS:MEMBER-EQL, REMPROP,
          SYS::SETPROP

     macros expanded: CASE

     instance variables: TRACE-INDICATOR

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :MARK-RULES)            "MINI;MR-TRACE"

     parameters: (MODE RULE-SET-NAME RULE-NAME-LIST)

     macros expanded: $SEND, SEND

     uses keywords: :MARK-RULE

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :NEEDED-TO-SHOW)        "MINI;MR-TRACE"

     parameters: (FACT RIGHT-HAND-SIDE)

     calls: FORMAT, FROM-LIST-TO-STRING, GETHASH

     macros expanded: $SEND, DO-NAMED, GET-ACTION-TYPE,
          GET-RULE-ACTIONS, GETENTRY, INHIBIT-STYLE-WARNINGS, SEND

     instance variables: META-PROCESSOR

     special variables: *LANGUAGE*

     uses keywords: :CHOOSE-FROM-MENU

   Explanation what some term is needed for.

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :RESET-TRACE-LIST)      "MINI;MR-TRACE"

     parameters: ()

     instance variables: TRACE-LIST

   Reset instance variable trace-list of this flavor

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :TOGGLE-RULE-TRACE)     "MINI;MR-TRACE"

     parameters: ()

     instance variables: RULE-TRACE

   Toggles rule trace mode.

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :TOGGLE-RULES)          "MINI;MR-TRACE"

     parameters: (RULE-SET-NAME RULE-NAME-LIST)

     calls: GET-RULE-MARK

     macros expanded: $SEND, CASE, SEND

     instance variables: TRACE-INDICATOR

     uses keywords: :MARK-RULE

-------------------------------------------------------------------

  (:METHOD RULE-TRACE-MIXIN :TRACE-STATUS)          "MINI;MR-TRACE"

     parameters: ()

     calls: FORMAT, GETHASH

     macros expanded: GETENTRY

     instance variables: RULE-TRACE

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  RULE-TRIED-P                                      "MINI;MR-TRACE"

     parameters: (TRACE-ELEMENT)

     called by: (:METHOD MINI-RULE-MIXIN :DISPLAY-RULES-TRIED)

     uses keywords: :TRY-RULE

-------------------------------------------------------------------

  RULE-USED-P                                       "MINI;MR-TRACE"

     parameters: (TRACE-ELEMENT)

     called by: (:METHOD MINI-RULE-MIXIN :DISPLAY-RULES-USED)

-------------------------------------------------------------------

  SATISFIED-P                   macro               "BASIC;BC-MIXIN"

     parameters: (&REST EXPRESSION)

     used as a constant by: SATISFIED-P

     uses keywords: :EVAL

   ermoeglicht Verwendung von Satisfied-p-Konstrukten in Lisp-
Ausdruecken

-------------------------------------------------------------------

  SATISFY                       macro               "BASIC;BC-MIXIN"

     parameters: (&REST EXPRESSION)

     used as a constant by: SATISFY

     uses keywords: :EVAL

   ermoeglicht Verwendung von Satisfy-Konstrukten in Lisp-Ausdruecken

-------------------------------------------------------------------

  SATISFY-CONSTRAINT-GLOBALLY                       "BASIC;BC-MIXIN"

     parameters: ()

     calls: SEND-KB

     uses keywords: :ACTIVATE-INTERACTIVE

-------------------------------------------------------------------

  SATISFY-CONSTRAINT-LOCALLY                        "BASIC;BC-MIXIN"

     parameters: ()

     calls: SEND-KB

     uses keywords: :ACTIVATE-INTERACTIVE

-------------------------------------------------------------------

  SAY                                               "COMMON;C-FNS"

     parameters: (STRING &REST ARGS)

     macros expanded: LEXPR-$SEND, LEXPR-SEND

     special variables: *CURRENT-KNOWLEDGE-BASE*

     uses keywords: :BABYLON-FORMAT

-------------------------------------------------------------------

  SEARCH-CC-LOAD                                    "KERNEL;REQUIRE"

     parameters: (MODULE-NAME PATHLIST)

     called by: BAB-REQUIRE

     calls: CC-LOAD, CONCATENATE, STRING-DOWNCASE

     uses keywords: :ERROR

-------------------------------------------------------------------

  SEARCH-FOR-KB                                     "META;KB-CORE"

     parameters: (KB-NAME)

     used as a constant by: USE-KB-INSTANCE

     calls: CURRENT-P, ERROR, FORMAT, GETHASH, Y-OR-N-P

     macros expanded: $SEND, BABERROR, FLAVOR-TYPEP, GETENTRY, SEND

     special variables: *LANGUAGE*

     uses keywords: :MAKE-YOURSELF-CURRENT

-------------------------------------------------------------------

  SELECT-ALL-CONSTRAINTS                            "BASIC;CSTRNET"

     parameters: (NET-SPEC)

     called by: (:METHOD CONSTRAINT-NET :PRINT),
          (:METHOD CONSTRAINT-NET :TOTAL-INIT-QUEUE),
          SELECT-ALL-CONSTRAINTS

     calls: GET-VAR-INFO-CONSTRAINTS, SELECT-ALL-CONSTRAINTS,
          UNION-SETS

-------------------------------------------------------------------

  SELECT-INSTANCE-COMBINATIONS                      "NORMAL;RSTRBASE"

     parameters: (LIST-OF-ALISTS CONDITION)

     called by: GET-INSTANCE-COMBINATIONS,
          SELECT-INSTANCE-COMBINATIONS

     calls: EVALUATE-CONDITION, SELECT-INSTANCE-COMBINATIONS

   	waehlt all diejenigen alists aus, die die Bedingung
  	erfuellen

-------------------------------------------------------------------

  SELECT-LOCAL-CONDITIONS                           "BASIC;CSTRBASE"

     parameters: (RELATION)

     called by: COMPILE-CONDITION, SELECT-LOCAL-CONDITIONS

     calls: GET-LOCAL-CONDITION, HAS-CONDITION-P,
          SELECT-LOCAL-CONDITIONS

    selektiert die lokalen Bedingungen (IF's)

-------------------------------------------------------------------

  SELECT-MULTIPLE-VALUED-VARIABLE                   "BASIC;CSTRNET"

     parameters: (NET-SPEC &OPTIONAL CANDIDATE)

     called by: (:METHOD CONSTRAINT-NET :CONSISTENT-P),
          SELECT-MULTIPLE-VALUED-VARIABLE

     calls: GET-VAR-INFO-VALUES, SELECT-MULTIPLE-VALUED-VARIABLE

-------------------------------------------------------------------

  SELECT-RELEVANT-CONSTRAINTS                       "BASIC;CSTRNET"

     parameters: (NET-SPEC VALUE-ASS)

     called by: (:METHOD CONSTRAINT-NET :INITIALIZE-AGENDA),
          (:METHOD CONSTRAINT-NET :UPDATE-AGENDA),
          SELECT-RELEVANT-CONSTRAINTS

     calls: SYS:ASSOC-EQUAL, GET-VAR-INFO-CONSTRAINTS,
          SELECT-RELEVANT-CONSTRAINTS, UNION-SETS

     macros expanded: GET-VALUE-SPEC, GET-VAR

-------------------------------------------------------------------

  SELECT-SOME-VALUE-ASS                             "BASIC;BC-FNS"

     parameters: (LIST-OF-VALUE-ASS NUMBER-OF-RESULTS &OPTIONAL
          (NEW-LIST-OF-VALUE-ASS NIL))

     called by: (:METHOD CONSTRAINT :ACTIVATE),
          SELECT-SOME-VALUE-ASS

     calls: DECR-NUMBER-OF-RESULTS, ENOUGH-RESULTS,
          SYS:MEMBER-EQUAL, REVERSE, SELECT-SOME-VALUE-ASS

-------------------------------------------------------------------

  SEND-BAB                                          "COMMON;C-FNS"

     parameters: (SELECTOR &REST ARGS)

     macros expanded: LEXPR-$SEND, LEXPR-SEND

     special variables: *BABYLON*

-------------------------------------------------------------------

  SEND-BABYLON                                      "COMMON;C-FNS"

     parameters: (SELECTOR &REST ARGS)

     macros expanded: LEXPR-$SEND, LEXPR-SEND

     special variables: *BABYLON*

-------------------------------------------------------------------

  SEND-CONSTRAINT-PROCESSOR                         "BASIC;BC-PROC"

     parameters: (SELECTOR &REST ARGS)

     called by: GET-CONSTRAINT

     calls: SEND-KB

     macros expanded: LEXPR-$SEND, LEXPR-SEND

     uses keywords: :CONSTRAINT-PROCESSOR

   sendet Nachricht an aktuellen Constraint-Processor

-------------------------------------------------------------------

  SEND-CURRENT-KNOWLEDGE-BASE                       "COMMON;C-FNS"

     parameters: (SELECTOR &REST ARGS)

     called by: DISPLAY-PROOFTREE

     macros expanded: LEXPR-$SEND, LEXPR-SEND

     special variables: *CURRENT-KNOWLEDGE-BASE*

-------------------------------------------------------------------

  SEND-FP                                           "BASIC;BF-MIXIN"

     parameters: (MESSAGE &REST ARGS)

     calls: SEND-KB

     macros expanded: LEXPR-$SEND, LEXPR-SEND

     uses keywords: :FRAME-PROCESSOR

-------------------------------------------------------------------

  SEND-KB                                           "COMMON;C-FNS"

     parameters: (SELECTOR &REST ARGS)

     called by: %GET-OBJECT-NAME, %MAKE-OBJECT-NAME,
          (:METHOD AXSET-BASIC :USE-AXIOM-SETS),
          CHECK-INSTANCE-DEFINITION, CHOOSE-CONSTRAINT-TRACE-MODE,
          CHOOSE-ELEMENT-TYPE, CHOOSE-SPECIAL-CONSTRAINT,
          (:METHOD CONSTRAINT-TRACE-MIXIN :BEFORE :TEST-CHOICES),
          (:METHOD CONSTRAINT-TRACE-MIXIN :EVALUATE-EXPRESSION),
          CREATE-INSTANCE-OF, CREATE-UNNAMED-INSTANCE, DEFBEHAVIOR,
          DEFFRAME, DEFRULE-SET, DISPLAY-CONSTRAINT,
          EVALUATE-CONDITION, EVALUATE-FUNCALL, EXPLAIN-RESULTS,
          FIND-IMPLICATIONS,
          (:METHOD FRAME-CORE :ASK-FOR-SLOT-PROPERTY),
          (:METHOD FRAME-CORE :ASK-FOR-SLOT-VALUE),
          (:METHOD FRAME-CORE :PROMPT-FOR-VALUE), GET-FRAME-NAME,
          GET-FRAME-NAME-OR-SIGNAL-ERROR, GET-FRAME-NAME-WITH-CHECK,
          GET-INSTANCE-LIST, GET-INSTANCE-NAME,
          GET-INSTANCE-NAME-WITH-CHECK, KNOWN-AXIOM-SET, OBTAIN,
          (:METHOD POSS-VAL-MIXIN :ANY-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :ASK-FOR-SLOT-VALUE),
          (:METHOD POSS-VAL-MIXIN :CHECK-CORRECT-VALUE),
          (:METHOD POSS-VAL-MIXIN :DEFAULT-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :ONE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :PROVIDE-LOCAL-HELP),
          (:METHOD POSS-VAL-MIXIN :SOME-OF-READ-METHOD),
          READ-CONSTRAINT, READ-EXPR-FROM-WINDOW, RESET-AXIOM-SET,
          RESET-KNOWLEDGE-BASE,
          (:METHOD RESTRICTION-NET :CORRECT-RESTRICTION-NET),
          SATISFY-CONSTRAINT-GLOBALLY, SATISFY-CONSTRAINT-LOCALLY,
          SEND-CONSTRAINT-PROCESSOR, SEND-FP, SEND-PROLOG, SEND-RULE,
          SET-PROLOG-TRACE-OPTIONS, SIGNAL-UNKNOWN-FRAME,
          START-KNOWLEDGE-BASE, TEST-HYPOTHESES, TOGGLE-SYSTEM-TRACE,
          TRACE-CONSTRAINTS, UPDATE-CONSTRAINT-TRACE-MODE

     used as a constant by: ?-, DEFCLAUSES, DEFCONSTRAINT,
          DEFRESTRICTION, DEFRULE-SET,
          (:METHOD FRAME-BASE :NEW-FRAME-FORM), HYPOTHESES,
          INSTRUCTIONS, RESET-INSTANCE, SATISFIED-P, SATISFY

     macros expanded: LEXPR-$SEND, LEXPR-SEND

     special variables: *CURRENT-KNOWLEDGE-BASE*

-------------------------------------------------------------------

  SEND-PROLOG                                       "BASIC;BP-MIXIN"

     parameters: (METHOD &REST ARGS)

     calls: SEND-KB

     macros expanded: LEXPR-$SEND, LEXPR-SEND

     uses keywords: :PROLOG-PROCESSOR

   passes messages to the prolog processor of the current kb.

-------------------------------------------------------------------

  SEND-RULE                                         "BASIC;BR-MIXIN"

     parameters: (SELECTOR &REST ARGS)

     called by: TOGGLE-RULE-TRACE

     calls: SEND-KB

     macros expanded: LEXPR-$SEND, LEXPR-SEND

     uses keywords: :RULE-PROCESSOR

   Send to current rule-processor.

-------------------------------------------------------------------

  SEND-TO-INSTANCE-OR-SELF                          "NORMAL;ACT-VALS"

     parameters: (SELF INSTANCE-NAME METHOD-NAME &REST ARGS)

     called by: (:METHOD ACTIVE-VALUE-MIXIN :GET-INDIRECT),
          (:METHOD ACTIVE-VALUE-MIXIN :PUT-INDIRECT)

     calls: GET-INSTANCE-NAME

     macros expanded: GET-INSTANCE, LEXPR-$SEND, LEXPR-SEND

     special variables: SELF

     uses keywords: :INSTANCE

-------------------------------------------------------------------

  SET-INSTANCE-POINTER          macro               "BASIC;FRAMES"

     parameters: (VARIABLE-NAME INSTANCE-NAME)

-------------------------------------------------------------------

  SET-PROLOG-TRACE-OPTIONS                          "MINI;MP-MIXIN"

     parameters: ()

     calls: SEND-KB, WARN-IF-NO-PROLOG

     uses keywords: :SET-PROLOG-TRACE-OPTIONS

-------------------------------------------------------------------

  SET-VALUE-ONLY                                    "BASIC;FR-CORE"

     parameters: (SLOT-PLIST VALUE PROP-NAME)

     called by: (:METHOD FRAME-CORE :PUT),
          (:METHOD FRAME-CORE :REPLACE),
          (:METHOD FRAME-CORE :RESET-SLOTS),
          (:METHOD FRAME-CORE :SET),
          (:METHOD FRAME-CORE :SET-VALUE-ONLY)

     calls: SYS::SETPROP

     macros expanded: IS-VALUE, KEYWORDP, LOCF

     special variables: *KEYWORD-PACKAGE*

     uses keywords: :VALUE

-------------------------------------------------------------------

  SETVAR                        macro               "BASIC;AX-SC"

     parameters: (VARCELL TERM)

     expanded in: UNIFY

   instantiates varcell with term pushing varcell on the environment
stack.

-------------------------------------------------------------------

  SIDE-RESET                    macro               "BASIC;AX-SC"

     parameters: ()

     expanded in: (:METHOD BASIC-GOALBOX :PROVE-ASSUME)

   resets a goal causing backtrackable side effects.

-------------------------------------------------------------------

  SIGNAL-UNKNOWN-FRAME                              "BASIC;FRAMES"

     parameters: (FRAME-NAME WHEN SPEZ)

     used as a constant by: (:METHOD FRAME-BASE :NEW-BEHAVIOR-FORM),
          (:METHOD FRAME-BASE :NEW-FRAME-FORM)

     calls: ERROR, GETHASH, IS-FRAME, SEND-KB

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

     uses keywords: :KB-NAME

-------------------------------------------------------------------

  SLOT-VALUE-TO-VALUE-SPEC                          "NORMAL;RSTREVAL"

     parameters: (SLOT-VALUE)

     called by: ADMISSIBLE-SLOT-VALUE-P, COPY-SLOT-VALUE,
          FURTHER-SLOT-RESTRICTION-P, (:METHOD RESTRICTED-SLOT :PUT)

     calls: UNDETERMINED-SLOT-VALUE-P

   	ueberfuehrt slot-value in eine Consat-Wertemenge

-------------------------------------------------------------------

  SOME-NEW-RESTRICTIONS-P                           "BASIC;BC-FNS"

     parameters: (VAL-ASS1 VAL-ASS2)

     called by: SOME-NEW-RESTRICTIONS-P, TRACE-TEST

     calls: SYS:ASSOC-EQUAL, MORE-CONSTRAINED-P,
          SOME-NEW-RESTRICTIONS-P

     macros expanded: GET-VALUE-SPEC, GET-VAR

-------------------------------------------------------------------

  SPLICE                                            "BASIC;AXIOMS"

     parameters: (NEW BEFORE LIST)

     called by: (:METHOD AXSET-BASIC :ADDAX)

     calls: APPEND, NREVERSE, SYS:NREVERSE-LIST

   adds item `<new>` to `<list>` before item `<before>`.

-------------------------------------------------------------------

  SPLIT-AND-PUT-ASSOCIATION                         "BASIC;BC-FNS"

     parameters: (VALUE-ASSOC LIST-OF-VAL-ASS)

     called by: SPLIT-VARIABLE-ALIST

     calls: SYS:*NCONC, ERROR, GETHASH

     macros expanded: BABERROR, DO-NAMED, GET-VALUE-SPEC, GET-VAR,
          GETENTRY, INHIBIT-STYLE-WARNINGS, MAKE-SIMPLE-VAL-ASSOC

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  SPLIT-VARIABLE-ALIST                              "BASIC;BC-FNS"

     parameters: (VAL-ASS)

     called by: (:METHOD CONSTRAINT :ACTIVATE),
          GET-INSTANCE-COMBINATIONS, INST-SLOT-SET,
          SPLIT-VARIABLE-ALIST

     calls: SPLIT-AND-PUT-ASSOCIATION, SPLIT-VARIABLE-ALIST

-------------------------------------------------------------------

  STACK-ELEM-P                                      "BASIC;CSTRNET"

     parameters: (OBJECT)

-------------------------------------------------------------------

  STACK-ELEM-QUEUE              defsubst            "BASIC;CSTRNET"

     parameters: (STACK-ELEM)

     expanded in: (:METHOD CONSTRAINT-NET :RESTORE-STATE)

-------------------------------------------------------------------

  STACK-ELEM-TRACE              defsubst            "BASIC;CSTRNET"

     parameters: (STACK-ELEM)

     expanded in: (:METHOD CONSTRAINT-NET :RESTORE-STATE)

-------------------------------------------------------------------

  STACK-ELEM-VALUES             defsubst            "BASIC;CSTRNET"

     parameters: (STACK-ELEM)

     expanded in: (:METHOD CONSTRAINT-NET :RESTORE-STATE)

-------------------------------------------------------------------

  STANDARD-CONFLICT-RESOLUTION                      "BASIC;BR-INTER"

     parameters: (LIST-OF-RULES GOAL PROCESSOR)

     called by: (:METHOD RULE-INTERPRETER :BEFORE :RESET-PROC)

   Defines the standard conflict resolution strategy.

-------------------------------------------------------------------

  START-KNOWLEDGE-BASE                              "META;KB-CORE"

     parameters: ()

     calls: SEND-KB

     uses keywords: :START-KB-CONFIRMED

   asks whether to start the current kb starting it eventually.

-------------------------------------------------------------------

  STATE-OF-NET-SPEC                                 "BASIC;CSTRNET"

     parameters: (NET-SPEC &OPTIONAL (STATE 'SINGLE-VALUED))

     called by: (:METHOD CONSTRAINT-NET :CONSISTENT-P),
          STATE-OF-NET-SPEC

     calls: GET-VAR-INFO-VALUES, STATE-OF-NET-SPEC

-------------------------------------------------------------------

  STATE-OF-VALUE-ASS                                "BASIC;CSTRNET"

     parameters: (VALUE-ASS &OPTIONAL (STATE 'SINGLE-VALUED))

     called by:
          (:METHOD CONSTRAINT-NET :TEST-CONSISTENCY-IF-SINGLE-
VALUED),
          STATE-OF-VALUE-ASS

     calls: STATE-OF-VALUE-ASS

     macros expanded: GET-VALUE-SPEC

-------------------------------------------------------------------

  STOP-EXECUTION                                    "BASIC;BR-INTER"

     parameters: (&OPTIONAL (RESULT 'DONE))

-------------------------------------------------------------------

  STOP-KB-EXECUTION                                 "META;KB-CORE"

     parameters: (&OPTIONAL (RESULT 'KNOWLEDGE-BASE-STOPPED))

-------------------------------------------------------------------

  SUBST-PROLOG-VARS                                 "BASIC;AX-SC"

     parameters: (TERM MODE)

     called by: (:METHOD BASIC-GOALBOX :ABORT),
          (:METHOD BASIC-GOALBOX :PROVE-ABOLISH),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTA),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTZ),
          (:METHOD BASIC-GOALBOX :PROVE-ASSUME),
          (:METHOD BASIC-GOALBOX :PROVE-BAGOF),
          (:METHOD BASIC-GOALBOX :PROVE-CALL),
          (:METHOD BASIC-GOALBOX :PROVE-CALLPRED),
          (:METHOD BASIC-GOALBOX :PROVE-CLAUSE),
          (:METHOD BASIC-GOALBOX :PROVE-FORMAT),
          (:METHOD BASIC-GOALBOX :PROVE-IS),
          (:METHOD BASIC-GOALBOX :PROVE-LISP),
          (:METHOD BASIC-GOALBOX :PROVE-RETRACT),
          (:METHOD BASIC-GOALBOX :PROVE-TYPE),
          (:METHOD BASIC-GOALBOX :PROVE-VAR),
          (:METHOD BASIC-GOALBOX :PROVE-VARPRED),
          (:METHOD BASIC-GOALBOX :PROVE-WRITE),
          (:METHOD BASIC-PROLOG-MIXIN :SHOW-FORM),
          GEN-VAR-VALUE-LIST,
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-EXT-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-IS),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-LISP),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NOEQUAL),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NORMAL-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NORMAL-BEFORE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TOP-BEFORE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TRY-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TRY-BEFORE),
          (:METHOD PROC-EXPLAIN-MIXIN :EXPLAIN-KONTEXT),
          (:METHOD PROC-SC-MIXIN :GET-CLAUSES),
          (:METHOD PROC-SC-MIXIN :RETURN-FORM), SUBST-PROLOG-VARS

     used as a constant by: EVAL-LISP-CALL

     calls: COPY-SEQ, FORMAT::GET-FORMAT-STRING, INTERN, PRIN1,
          FORMAT::RETURN-FORMAT-STRING, SUBST-PROLOG-VARS, VARCELL-P,
          WRITE-CHAR

     macros expanded: CASE, IS-BOUND

     special variables: *STANDARD-OUTPUT*, FORMAT::FORMAT-STRING

   substitutes all varcells in term by their values.
not instantiated varcells are replaced by their internal name, their
external
name or by itself according to the values normal ext int of mode.

-------------------------------------------------------------------

  SUBSTITUTE-CONSTRAINT-VARIABLES                   "BASIC;BC-MIXIN"

     parameters: (EXPR SIMPLE-VALUE-ASS)

     called by: EVALUATE-CONDITION, EVALUATE-FUNCALL,
          SUBSTITUTE-CONSTRAINT-VARIABLES

     calls: SYS:ASSOC-EQL, SUBSTITUTE-CONSTRAINT-VARIABLES,
          SUBSTITUTE-IF-POSSIBLE

   ersetzt in expression alle Symbole, die in simple-value-ass
auftreten,
   durch quote und den Wert, den ihnen simple-value-ass zuweist

-------------------------------------------------------------------

  SUBSTITUTE-IF-POSSIBLE                            "BASIC;BC-MIXIN"

     parameters: (SYMBOL VALUE-ASSOC)

     called by: SUBSTITUTE-CONSTRAINT-VARIABLES

     macros expanded: GET-SIMPLE-VALUE

-------------------------------------------------------------------

  SUBSTITUTE-O-AND-S                                "BASIC;FR-CORE"

     parameters: (OBJECT-NAME SLOT-NAME LIST)

     called by: (:METHOD FRAME-CORE :PROMPT-FOR-VALUE),
          (:METHOD POSS-VAL-MIXIN :PROVIDE-LOCAL-HELP)

     calls: SYS:SUBLIS*

-------------------------------------------------------------------

  SUBSTITUTE-VARIABLES-IN-RULE-SET                  "BASIC;RULES"

     parameters: (RULE-SET BINDINGS)

     called by: (:METHOD RULE-BASE :GET-RULE-SET)

     calls: CHECK-BINDINGS, SYS:SUBLIS*

-------------------------------------------------------------------

  TEST-HYPOTHESES                                   "BASIC;BR-MIXIN"

     parameters: (&OPTIONAL (NUMBER-OF-HYPOTHESES-TO-VERIFY 1)
          (LIST-OF-HYPOTHESES NIL) (RULE-SET-NAME NIL) (BINDINGS
NIL))

     calls: SEND-KB

     uses keywords: :TEST-HYPOTHESES

-------------------------------------------------------------------

  TESTIF                        macro               "BASIC;BR-INTER"

     parameters: (RULE LEFT-HAND-SIDE RULE-SET MODE)

     expanded in: (:METHOD RULE-INTERPRETER :TRY-RULE)

-------------------------------------------------------------------

  TOGGLE-RULE-TRACE                                 "MINI;MR-MIXIN"

     parameters: ()

     calls: CURRENT-KB-TYPEP, SEND-RULE

     uses keywords: :TOGGLE-RULE-TRACE

   toggles rule tracing.

-------------------------------------------------------------------

  TOGGLE-SYSTEM-TRACE                               "META;M-MIXIN"

     parameters: ()

     calls: IS-ACTIVATED-KB, SEND-KB

     uses keywords: :TOGGLE-SYSTEM-TRACE

   Toggles system trace mode.

-------------------------------------------------------------------

  TRACE-CONSTRAINTS                                 "MINI;MC-MIXIN"

     parameters: ()

     calls: SEND-KB

     uses keywords: :CHOOSE-TRACE-MODE

-------------------------------------------------------------------

  TRACE-ELEMENT-KEYWORD         defsubst            "MINI;MR-TRACE"

     parameters: (TRACE-ELEMENT)

     expanded in: (:METHOD MINI-RULE-MIXIN :DISPLAY-TRACE-ELEMENT),
          RULE-ASKING-P, RULE-TRIED-P, RULE-USED-P

-------------------------------------------------------------------

  TRACE-ELEMENT-MODE            defsubst            "MINI;MR-TRACE"

     parameters: (TRACE-ELEMENT)

     expanded in: (:METHOD MINI-RULE-MIXIN :DISPLAY-TRACE-ELEMENT)

-------------------------------------------------------------------

  TRACE-ELEMENT-P                                   "MINI;MR-TRACE"

     parameters: (OBJECT)

-------------------------------------------------------------------

  TRACE-ELEMENT-RULE            defsubst            "MINI;MR-TRACE"

     parameters: (TRACE-ELEMENT)

     expanded in: (:METHOD MINI-RULE-MIXIN :DISPLAY-TRACE-ELEMENT),
          TRACE-ELEMENT-TO-SHOW

-------------------------------------------------------------------

  TRACE-ELEMENT-RULE-SET-NAME   defsubst            "MINI;MR-TRACE"

     parameters: (TRACE-ELEMENT)

     expanded in: (:METHOD MINI-RULE-MIXIN :DISPLAY-TRACE-ELEMENT),
          TRACE-ELEMENT-TO-SHOW

-------------------------------------------------------------------

  TRACE-ELEMENT-TERM            defsubst            "MINI;MR-TRACE"

     parameters: (TRACE-ELEMENT)

     expanded in: (:METHOD MINI-RULE-MIXIN :DISPLAY-TRACE-ELEMENT)

-------------------------------------------------------------------

  TRACE-ELEMENT-TO-SHOW                             "MINI;MR-TRACE"

     parameters: (TRACE-ELEMENT MODE INDICATOR)

     called by: (:METHOD RULE-TRACE-MIXIN :BEFORE :IN-THEN-PART),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :REMEMBER),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :STORE),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :ASK-USER),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :TRY-RULE),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :VERIFY-HYPOTHESIS),
          (:METHOD RULE-TRACE-MIXIN :FILTER-TRACE-LIST)

     calls: GET-RULE-MARK

-------------------------------------------------------------------

  TRACE-ELEMENT-TO-STORE                            "MINI;MR-TRACE"

     parameters: (TRACE-ELEMENT MODE INDICATOR)

     called by: (:METHOD RULE-TRACE-MIXIN :BEFORE :IN-THEN-PART),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :REMEMBER),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :STORE),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :ASK-USER),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :TRY-RULE),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :VERIFY-HYPOTHESIS)

-------------------------------------------------------------------

  TRACE-TEST                                        "BASIC;NET-PROP"

     parameters: (ASSOCIATED-TRACE-ELEMENT NEW-VALUE-ASS)

     called by: UPDATE-QUEUE

     calls: SOME-NEW-RESTRICTIONS-P

     macros expanded: GET-TRACE-VALUE-ASS

-------------------------------------------------------------------

  (:METHOD TRACED-CONSTRAINT :TRACE-OFF)            "MINI;MC-TRACE"

     parameters: (C-NAME)

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: CONDITION, INTERFACE, RELATION

     uses keywords: :CONDITION, :INTERFACE, :RELATION

   erzeugt ein Constraint, dass mit dem Empfaenger in allen
Komponenten (ausser name) uebereinstimmt

-------------------------------------------------------------------

  (:METHOD TRACED-CONSTRAINT :TRACE-ON)             "MINI;MC-TRACE"

     parameters: (C-NAME)

     special variables: SELF

-------------------------------------------------------------------

  (:METHOD TRACED-CONSTRAINT-NET :TRACE-OFF)        "MINI;MC-TRACE"

     parameters: (C-NAME)

     calls: MAKE-INSTANCE

     macros expanded: MAKE-$INSTANCE

     instance variables: AGENDA, INTERFACE, NET-SPEC, STACK

     uses keywords: :AGENDA, :INTERFACE, :NET-SPEC, :STACK

   erzeugt ein Constraint-Netz, dass mit dem
Empfaenger in allen Komponenten (ausser name) uebereinstimmt

-------------------------------------------------------------------

  (:METHOD TRACED-CONSTRAINT-NET :TRACE-ON)         "MINI;MC-TRACE"

     parameters: (C-NAME)

     special variables: SELF

-------------------------------------------------------------------

  TRANS-CLAUSE                                      "BASIC;AX-SC"

     parameters: (TERM)

     called by: (:METHOD PROC-SC-MIXIN :CLAUSE-TRANS-UNIFY),
          (:METHOD PROC-SC-MIXIN :TRANS-UNIFY)

     calls: TRANS-CLAUSE1

     special variables: *VARS

   copies term substituting prolog variables by associated varcells.
nonanymous variables are collected in *vars to avoid generating
a new varcell for each occurrence of the same variable.

-------------------------------------------------------------------

  TRANS-CLAUSE1                                     "BASIC;AX-SC"

     parameters: (TERM)

     called by: (:METHOD PROC-SC-MIXIN :SETGOAL), TRANS-CLAUSE,
          TRANS-CLAUSE1

     calls: MAKE-VARCELL, SYS:MEMBER-EQUAL, TRANS-CLAUSE1

     macros expanded: GEN-VARCELL, INCF, IS-VAR, PUSH, STRING,
          TYPECASE

     special variables: *MAXVAR*, *VARS

     uses keywords: :ENVNR, :VARNAME, :VARNR

-------------------------------------------------------------------

  TRANSFORM-CONSTRAINT-TYPE                         "BASIC;BC-MIXIN"

     parameters: (CONSTRAINT-TYPE)

     called by: (:METHOD BASIC-CONSTRAINT-MIXIN :CHOOSE-C-TYPE)

     macros expanded: CASE

     uses keywords: :CONSTRAINT-NETS, :CONSTRAINTS

-------------------------------------------------------------------

  TRANSFORM-PATHSTRING                              "KERNEL;REQUIRE"

     parameters: (PATHSTRING TYPE)

     called by: CC-LOAD

     calls: FIND-TRANSLATION, STRING, TRANSFORM-PATHSTRING1

     special variables: *BAB-HOST*, *TRANS-PATH-FKT*

-------------------------------------------------------------------

  TRANSFORM-PATHSTRING1                             "KERNEL;REQUIRE"

     parameters: (PATHSTRING TYPE)

     called by: TRANSFORM-PATHSTRING

     calls: CONCATENATE, ERROR, FIND-TRANSLATION, FORMAT, POSITION,
          SUBSEQ

-------------------------------------------------------------------

  TRANSLATE-ANSWER                                  "COMMON;C-FNS"

     parameters: (ANSWER)

     called by: (:METHOD FREE-TEXT-PROCESSOR :ASK-USER),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER-WITHOUT-ADDING)

     calls: GETHASH, SYS:RASSOC-EQL

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

-------------------------------------------------------------------

  TRANSLATE-FREE-TEXTS-INTO-PROLOG-FACTS            "FREETEXT;FT-
MIXIN"

     parameters: (FACTS)

     called by: (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT-FOR-PROLOG)

     macros expanded: DO-NAMED, INHIBIT-STYLE-WARNINGS

-------------------------------------------------------------------

  UNCONSTRAINED-P                                   "BASIC;PRIMCSTR"

     parameters: (&REST VARIABLES)

     called by: UNCONSTRAINED-P

     calls: UNCONSTRAINED-P

-------------------------------------------------------------------

  UNDETERMINED                                      "COMMON;C-FNS"

     parameters: ()

     called by: COMPUTE-SLOTS2, (:METHOD DATA-BASE :RECALL),
          (:METHOD DATA-BASE :RECALL-WITHOUT-ASKING),
          (:METHOD FRAME-CORE :RESET-SLOTS),
          (:METHOD FREE-TEXT-PROCESSOR :RECALL), IS-UNDETERMINED

   initial content of :value facet (localstate)

-------------------------------------------------------------------

  UNDETERMINED-2                                    "COMMON;C-FNS"

     parameters: ()

     called by: IS-UNDETERMINED

   for use in rules

-------------------------------------------------------------------

  UNDETERMINED-SLOT-VALUE-P                         "NORMAL;RSTREVAL"

     parameters: (SLOT-VALUE)

     called by: FURTHER-SLOT-RESTRICTION-P,
          (:METHOD RESTRICTION-NET :UPDATE-SLOT-STATE),
          SLOT-VALUE-TO-VALUE-SPEC

-------------------------------------------------------------------

  UNIFY                                             "BASIC;AX-SC"

     parameters: (TERM1 TERM2)

     called by: (:METHOD PROC-SC-MIXIN :CLAUSE-TRANS-UNIFY),
          (:METHOD PROC-SC-MIXIN :TRANS-UNIFY),
          (:METHOD PROC-SC-MIXIN :UNIFY), UNIFY

     calls: DEREF, UNIFY, VARCELL-P

     macros expanded: INCF, PUSH, SETVAR

     special variables: *TENV, *TENV-DEPTH

   tries to unify term1 term2.
instantiated varcells are stacked in *tenv.

-------------------------------------------------------------------

  UNION-SETS                                        "BASIC;BC-FNS"

     parameters: (SET1 SET2)

     called by: COMBINE-TWO-ALISTS, COMBINE-VALUES,
          DETERMINE-NET-VARIABLES, INSTANTIATE-RESTRICTIONS,
          INSTANTIATE-SLOTS, SELECT-ALL-CONSTRAINTS,
          SELECT-RELEVANT-CONSTRAINTS

     calls: SYS:UNION*

-------------------------------------------------------------------

  UNKNOWN                                           "COMMON;C-FNS"

     parameters: ()

     called by: IS-UNKNOWN

     used as a constant by:
          (:METHOD BASIC-FRAME-MIXIN :EVAL-PROLOG-FRAME-REFERENCE),
          (:METHOD DATA-BASE :ASK-USER),
          (:METHOD FREE-TEXT-MIXIN :ASK-USER-FOR-PROLOG),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER-WITHOUT-ADDING),
          UNKNOWN

   standard possible answer of USER

-------------------------------------------------------------------

  UNKNOWN-2                                         "COMMON;C-FNS"

     parameters: ()

     called by: IS-UNKNOWN

-------------------------------------------------------------------

  UNMARK-PRED                                       "MINI;MP-TRACE"

     parameters: (PRED)

     called by: (:METHOD PROLOG-TRACE-MIXIN :SYNCHRONIZE-TRACE)

     calls: REMPROP, SYS::SETPROP

-------------------------------------------------------------------

  UPDATE-CONSTRAINT-TRACE-MODE                      "MINI;MC-MIXIN"

     parameters: (RESULT-ITEM-LIST CONSTRAINTS)

     called by: (:METHOD MINI-CONSTRAINT-MIXIN :CHOOSE-TRACE-MODE)

     calls: CONSTRAINT-ASSOC-TRACEDP, SEND-KB

     macros expanded: $SEND, DO-NAMED, GET-NAME-OF-C-ASSOC,
          GET-OBJECT-OF-C-ASSOC, SEND

     uses keywords: :TRACE-OFF, :TRACE-ON, :UPDATE-CONSTRAINT-TRACE

   alle Constraints in result-item-list erhalten die Nachricht
:trace-on,
falls sie nicht protokolliert werden, bzw. :trace-off im
entgegengesetzten Fall.

-------------------------------------------------------------------

  UPDATE-NET-VALUE-ASS                              "BASIC;CSTRNET"

     parameters: (NEW-VALUE-ASS NET-SPEC)

     called by: (:METHOD CONSTRAINT-NET :INITIALIZE-VARIABLES)

     calls: ADD-VAR-INFO-VALUES, SYS:ASSOC-EQUAL

     macros expanded: DO-NAMED, GET-VALUE-SPEC, GET-VAR,
          INHIBIT-STYLE-WARNINGS

-------------------------------------------------------------------

  UPDATE-QUEUE                                      "BASIC;NET-PROP"

     parameters: (OLD-QUEUE LIST-OF-CONSTR-EXPR TRACE NEW-VALUE-ASS)

     called by: (:METHOD CONSTRAINT-NET :UPDATE-AGENDA),
          UPDATE-QUEUE

     calls: SYS:ASSOC-EQUAL, SYS:MEMBER-EQUAL, TRACE-TEST,
          UPDATE-QUEUE

-------------------------------------------------------------------

  USE-KB-INSTANCE               macro               "META;KB-CORE"

     parameters: (KB-NAME)

     uses keywords: :USE

   makes kb with name kb-name current. if the external representation
of a kb is distributed over several files this form may insure that
the right kb is current when any of the files is evaluated.

-------------------------------------------------------------------

  USE-OLD-KB?                                       "META;KB-CORE"

     parameters: (KB-NAME)

     used as a constant by: DEF-KB-INSTANCE

     calls: FORMAT, GETHASH, TYPE-OF, Y-OR-N-P

     macros expanded: $SEND, FLAVOR-TYPE-OF, FLAVOR-TYPEP, GETENTRY,
          SEND

     special variables: *LANGUAGE*

     uses keywords: :KILL-KB, :MAKE-YOURSELF-CURRENT

-------------------------------------------------------------------

  USETHEN                       macro               "BASIC;BR-INTER"

     parameters: (RULE RIGHT-HAND-SIDE RULE-SET MODE)

     expanded in: (:METHOD RULE-INTERPRETER :TRY-RULE)

-------------------------------------------------------------------

  VALUE-ASSIGNMENT-TO-BOOLEAN-VALUE                 "BASIC;CSTRBASE"

     parameters: (VALUE-ASSIGNMENT CONSISTENCY-LEVEL NUMBER-OF-
RESULTS)

     called by: (:METHOD CONSTRAINT-BASE :ACTIVATE-AND-ADAPT-RESULT)

     calls: CONSISTENT-VALUE-ASS-P

     macros expanded: CASE

    macht aus dem Ergebnis einer Constraint-Aktivierung
    einen boolschen Wert

-------------------------------------------------------------------

  VALUE-IS-VAR                                      "BASIC;AX-SC"

     parameters: (PAIR)

     called by: GEN-VAR-VALUE-LIST

     calls: SYS::STRING-AUX

     macros expanded: IS-VAR, STRING, TYPECASE

-------------------------------------------------------------------

  VALUE-SPEC-TEST                                   "BASIC;CSTRBASE"

     parameters: (EXPRESSION)

     called by: CONVERT-TO-CONSAT-VALUE

     calls: ERROR, GETHASH, IS-VALUE-SPEC

     macros expanded: BABERROR, GETENTRY

     special variables: *LANGUAGE*

    falls expression keine Consat-Wertemenge
     ist, erfolgt Fehlermeldung

-------------------------------------------------------------------

  VAR-INFO-CONSTRAINTS          defsubst            "BASIC;CSTRNET"

     parameters: (VAR-INFO)

     expanded in: GET-VAR-INFO-CONSTRAINTS

-------------------------------------------------------------------

  VAR-INFO-INIT-VALUES          defsubst            "BASIC;CSTRNET"

     parameters: (VAR-INFO)

     expanded in: FREEZE-VAR-INFO-VALUES, INIT-VAR-INFO-VALUES,
          RESET-VAR-INFO-VALUES

-------------------------------------------------------------------

  VAR-INFO-P                                        "BASIC;CSTRNET"

     parameters: (OBJECT)

-------------------------------------------------------------------

  VAR-INFO-VALUES               defsubst            "BASIC;CSTRNET"

     parameters: (VAR-INFO)

     expanded in: ADD-VAR-INFO-VALUES, FREEZE-VAR-INFO-VALUES,
          GET-VAR-INFO-VALUES, INIT-VAR-INFO-VALUES,
          REPLACE-VAR-INFO-VALUES

-------------------------------------------------------------------

  VARCELL-P                                         "BASIC;AX-SC"

     parameters: (OBJECT)

     called by: (:METHOD BASIC-GOALBOX :PROVE-CALL),
          (:METHOD BASIC-GOALBOX :PROVE-CALLPRED),
          (:METHOD BASIC-GOALBOX :PROVE-GOAL),
          (:METHOD BASIC-GOALBOX :PROVE-VAR),
          (:METHOD BASIC-GOALBOX :PROVE-VARPRED), DEREF,
          (:METHOD GOALBOX-TRACE-MIXIN :PROVE-GOAL), REST-DEREF,
          REST-SUBST-PROLOG-VARS, SUBST-PROLOG-VARS, UNIFY

     used as a constant by: GET-CURR-METHOD, GET-PROVE-METHOD

-------------------------------------------------------------------

  VARNAME                       defsubst            "BASIC;AX-SC"

     parameters: (VARCELL)

     expanded in: GEN-VAR-VALUE-LIST, REST-SUBST-PROLOG-VARS,
          SUBST-PROLOG-VARS

-------------------------------------------------------------------

  VARNR                         defsubst            "BASIC;AX-SC"

     parameters: (VARCELL)

     expanded in: REST-SUBST-PROLOG-VARS, SUBST-PROLOG-VARS

-------------------------------------------------------------------

  VARVALUE                      defsubst            "BASIC;AX-SC"

     parameters: (VARCELL)

     expanded in: DEREF, REST-DEREF, REST-SUBST-PROLOG-VARS,
          SUBST-PROLOG-VARS, UNIFY

     used as a constant by: SETVAR

-------------------------------------------------------------------

  WARN-IF-NO-PROLOG                                 "BASIC;BP-MIXIN"

     parameters: ()

     called by: DISPLAY-PROOFTREE, SET-PROLOG-TRACE-OPTIONS

     calls: CURRENT-KB-TYPEP, GETHASH

     macros expanded: GETENTRY

     special variables: *LANGUAGE*

   checks whether the current kb contains  a prolog processor.

-------------------------------------------------------------------

  XPUSH                                             "BASIC;AXIOMS"

     parameters: (LIST X)

     called by: (:METHOD BASIC-GOALBOX :PROVE-ASSERTA)

     calls: SYS:*NCONC

-------------------------------------------------------------------




  :ACTIVATE-INTERACTIVE         keyword

     used by: SATISFY-CONSTRAINT-GLOBALLY,
          SATISFY-CONSTRAINT-LOCALLY

-------------------------------------------------------------------

  :ADD-TO-RULES                 keyword

     used by: DEFRULE-SET

-------------------------------------------------------------------

  :ALL                          keyword

     used by: (:METHOD BASIC-RULE-MIXIN :OBTAIN),
          (:METHOD BASIC-RULE-MIXIN :TEST-HYPOTHESES),
          DETERMINE-SLOTS

-------------------------------------------------------------------

  :ALLOW-OTHER-KEYS             keyword

     used by: MAKE-AGENDA-ELEM, MAKE-JUSTIFICATION, MAKE-STACK-ELEM,
          MAKE-TRACE-ELEMENT, MAKE-VAR-INFO, MAKE-VARCELL

-------------------------------------------------------------------

  :ANY                          keyword

     used by: (:METHOD POSS-VAL-MIXIN :CHECK-CORRECT-VALUE),
          (:METHOD POSS-VAL-MIXIN :CHECK-VALUE),
          (:METHOD POSS-VAL-MIXIN :GET-READ-METHOD),
          POSSIBLE-VALUES-TO-VALUE-SPEC

-------------------------------------------------------------------

  :ASK-USER                     keyword

     used by: (:METHOD DATA-BASE :ASK-USER),
          (:METHOD FREE-TEXT-MIXIN :ASK-USER),
          (:METHOD FREE-TEXT-MIXIN :ASK-USER-FOR-PROLOG),
          (:METHOD MINI-RULE-MIXIN :DISPLAY-TRACE-ELEMENT),
          RULE-ASKING-P,
          (:METHOD RULE-INTERPRETER :AND-FORWARD-ASKING-IF-
UNDETERMINED),
          (:METHOD RULE-INTERPRETER :EXECUTE-ASK),
          (:METHOD RULE-INTERPRETER :OR-FORWARD-ASKING-IF-
UNDETERMINED),
          (:METHOD RULE-INTERPRETER :VERIFY),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :ASK-USER)

-------------------------------------------------------------------

  :ASSERT-CLAUSES               keyword

     used by: DEFCLAUSES

-------------------------------------------------------------------

  :BABYLON-FORMAT               keyword

     used by: (:METHOD AXSET-BASIC :ADDAX),
          (:METHOD AXSET-BASIC :USE-AXIOM-SETS),
          (:METHOD BASIC-GOALBOX :ABORT),
          (:METHOD BASIC-GOALBOX :PROVE-ABOLISH),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTA),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTZ),
          (:METHOD BASIC-GOALBOX :PROVE-ASSUME),
          (:METHOD BASIC-GOALBOX :PROVE-CALL),
          (:METHOD BASIC-GOALBOX :PROVE-CALLPRED),
          (:METHOD BASIC-GOALBOX :PROVE-CLAUSE),
          (:METHOD BASIC-GOALBOX :PROVE-FORMAT),
          (:METHOD BASIC-GOALBOX :PROVE-RETRACT),
          (:METHOD BASIC-GOALBOX :PROVE-VAR),
          (:METHOD BASIC-GOALBOX :PROVE-VARPRED),
          (:METHOD BASIC-GOALBOX :PROVE-WRITE),
          (:METHOD BASIC-PROLOG-MIXIN :ASK-SET-GOAL),
          (:METHOD BASIC-PROLOG-MIXIN :DISPLAY-RESULT),
          (:METHOD BASIC-PROLOG-MIXIN :PROVE-DISPLAY),
          (:METHOD BASIC-PROLOG-MIXIN :SHOW-AXIOMS),
          (:METHOD BASIC-PROLOG-MIXIN :SHOW-FORM),
          (:METHOD BASIC-PROLOG-MIXIN :SHOW-VARS),
          (:METHOD BASIC-PROLOG-PROCESSOR :BABYLON-FORMAT),
          (:METHOD DATA-BASE :PRINT-HYPOTHESES-VERIFIED),
          (:METHOD DATA-BASE :PRINT-TRUE-FACTS),
          (:METHOD FRAME-CORE :ASK-FOR-SLOT-PROPERTY),
          (:METHOD FRAME-CORE :ASK-FOR-SLOT-VALUE),
          (:METHOD FRAME-CORE :PROMPT-FOR-VALUE),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER-WITHOUT-ADDING),
          (:METHOD KB-PROCESSOR-CORE :START-KB-CONFIRMED),
          KNOWN-AXIOM-SET,
          (:METHOD MINI-PROLOG-MIXIN :SHOW-TRACE-STATUS),
          (:METHOD POSS-VAL-MIXIN :ANY-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :CHECK-CORRECT-VALUE),
          (:METHOD POSS-VAL-MIXIN :DEFAULT-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :ONE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :SOME-OF-READ-METHOD),
          RESET-AXIOM-SET, RESET-INSTANCE, SAY

-------------------------------------------------------------------

  :BEHAVIORS                    keyword

     used by: ADD-TO-BEHAVIORS, GET-FRAME-BEHAVIORS, PRINT-FRAMES

-------------------------------------------------------------------

  :BINDINGS                     keyword

     used by: IS-BINDINGS

-------------------------------------------------------------------

  :BOOLEAN                      keyword

     used by: POSSIBLE-VALUES-TO-VALUE-SPEC

-------------------------------------------------------------------

  :CHOOSE-FROM-MENU             keyword

     used by: (:METHOD AX-DEVELOP-MIXIN :INSPECT-AXIOMS),
          (:METHOD AX-DEVELOP-MIXIN :MOM-SHOW-PREMISE),
          (:METHOD BASIC-CONSTRAINT-MIXIN :CHOOSE-C-TYPE),
          (:METHOD BASIC-CONSTRAINT-MIXIN :READ),
          (:METHOD BASIC-FRAME-MIXIN :SELECT-DESCRIBE-FRAME),
          (:METHOD BASIC-FRAME-MIXIN :SELECT-DESCRIBE-INSTANCE),
          (:METHOD BASIC-PROLOG-MIXIN :READ-CLAUSES),
          (:METHOD BASIC-PROLOG-MIXIN :SELECT-AXSET-NAME),
          (:METHOD BASIC-PROLOG-MIXIN :SELECT-FORMAT),
          (:METHOD BASIC-PROLOG-MIXIN :SELECT-LIST-PREDICATE),
          (:METHOD BASIC-RULE-MIXIN :SELECT-LIST-RULE),
          (:METHOD BASIC-RULE-MIXIN :SELECT-RULE-SET-NAME),
          CHOOSE-ELEMENT-TYPE, CHOOSE-SPECIAL-CONSTRAINT,
          (:METHOD DATA-BASE :WHY),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER-WITHOUT-ADDING),
          (:METHOD MINI-PROLOG-MIXIN :SELECT-PREDS-FOR-TRACING),
          (:METHOD MINI-PROLOG-MIXIN :SET-PROLOG-TRACE-OPTIONS),
          (:METHOD MINI-RULE-MIXIN :SELECT-RULES-FOR-TRACING),
          (:METHOD MINI-RULE-MIXIN :SET-RULE-TRACE-OPTIONS),
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :ONE-OF-READ-METHOD),
          (:METHOD PROC-EXPLAIN-MIXIN :EXPLAIN-KONTEXT),
          (:METHOD PROLOG-INTERPRETER :WHY),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :FILTER-TERMS),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-RULE-SET),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-TERM),
          (:METHOD RULE-EXPLAIN-MIXIN :ASK-FOR-HOW),
          (:METHOD RULE-EXPLAIN-MIXIN :WHICH-FACT),
          (:METHOD RULE-TRACE-MIXIN :DISPLAY-TRACED-RULE),
          (:METHOD RULE-TRACE-MIXIN :NEEDED-TO-SHOW)

-------------------------------------------------------------------

  :CHOOSE-TRACE-MODE            keyword

     used by: TRACE-CONSTRAINTS

-------------------------------------------------------------------

  :CONDITION                    keyword

     used by: (:METHOD CONSTRAINT :PRINT),
          (:METHOD CONSTRAINT :TRACE-ON), GET-DEF-CONDITION,
          (:METHOD TRACED-CONSTRAINT :TRACE-OFF)

-------------------------------------------------------------------

  :CONSTRAINT-EXPRESSIONS       keyword

     used by: (:METHOD CONSTRAINT-NET :PRINT), GET-DEF-EXPRESSIONS

-------------------------------------------------------------------

  :CONSTRAINT-NETS              keyword

     used by: TRANSFORM-CONSTRAINT-TYPE

-------------------------------------------------------------------

  :CONSTRAINT-PROCESSOR         keyword

     used by: SEND-CONSTRAINT-PROCESSOR

-------------------------------------------------------------------

  :CONSTRAINTS                  keyword

     used by: CREATE-VAR-INFO-ALIST, MAKE-VAR-INFO,
          TRANSFORM-CONSTRAINT-TYPE

-------------------------------------------------------------------

  :DISPLAY                      keyword

     used by: DISPLAY-CONSTRAINT,
          (:METHOD RULE-EXPLAIN-MIXIN :DISPLAY-TERM-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :DISPLAY-UNPROVABLE-TERM-TREE)

-------------------------------------------------------------------

  :DISPLAY-PROOFTREE            keyword

     used by: DISPLAY-PROOFTREE

-------------------------------------------------------------------

  :DO-ALL                       keyword

     used by: (:METHOD BASIC-RULE-MIXIN :FIND-IMPLICATIONS),
          FIND-IMPLICATIONS,
          (:METHOD RULE-INTERPRETER :START-FORWARD),
          (:METHOD RULE-INTERPRETER :WHILE-ALL)

-------------------------------------------------------------------

  :DOCUMENTATION                keyword

     used by: GENERATE-HOW-MENU-ITEMS

-------------------------------------------------------------------

  :ELEMENT-TYPE                 keyword

     used by: COPY-AGENDA-ELEM, COPY-JUSTIFICATION, COPY-STACK-ELEM,
          COPY-TRACE-ELEMENT, COPY-VAR-INFO, COPY-VARCELL

-------------------------------------------------------------------

  :ENVNR                        keyword

     used by: TRANS-CLAUSE1

-------------------------------------------------------------------

  :ERROR                        keyword

     used by: SEARCH-CC-LOAD

-------------------------------------------------------------------

  :EVAL                         keyword

     used by: (:METHOD DATA-BASE :ASK-USER),
          (:METHOD DATA-BASE :RECALL),
          (:METHOD DATA-BASE :RECALL-WITHOUT-ASKING),
          (:METHOD DATA-BASE :REMEMBER), (:METHOD DATA-BASE :STORE),
          EVALUATE-CONDITION, EVALUATE-FUNCALL,
          (:METHOD PROC-SC-MIXIN :GET-CLAUSES),
          (:METHOD RULE-INTERPRETER :VARIABLE-AND-FORWARD),
          (:METHOD RULE-INTERPRETER :VARIABLE-OR-FORWARD),
          SATISFIED-P, SATISFY

-------------------------------------------------------------------

  :EXPLAIN-RESULTS              keyword

     used by: EXPLAIN-RESULTS,
          (:METHOD NORMAL-RULE-MIXIN :EXPLAIN-RESULTS)

-------------------------------------------------------------------

  :FILTERED-P                   keyword

     used by: MAKE-AGENDA-ELEM

-------------------------------------------------------------------

  :FIND-IMPLICATIONS            keyword

     used by: FIND-IMPLICATIONS

-------------------------------------------------------------------

  :FOR-ALL                      keyword

     used by: GENERIC-EXPR-P

-------------------------------------------------------------------

  :FRAME-DEFINITION             keyword

     used by: %GET-FRAME-NAME, %IS-FRAME, %IS-FRAME-NAME,
          GET-FRAME-DEF, IS-FRAME

-------------------------------------------------------------------

  :FRAME-PROCESSOR              keyword

     used by: CREATE-INSTANCE-OF, CREATE-UNNAMED-INSTANCE,
          DEFBEHAVIOR, DEFFRAME, SEND-FP

-------------------------------------------------------------------

  :GET                          keyword

     used by: $VALUE, <--,
          (:METHOD ACTIVE-VALUE-MIXIN :CHECK-INIT-VALUE),
          (:METHOD ACTIVE-VALUE-MIXIN :GET),
          (:METHOD ACTIVE-VALUE-MIXIN :GET-INDIRECT),
          (:METHOD BASIC-FRAME-MIXIN :GET-ASK), COMPUTE-LIST-EXPR,
          (:METHOD CONSTRAINT-BASE :NEW-COMPOUND),
          (:METHOD CONSTRAINT-BASE :NEW-PRIMITIVE),
          COPY-POSSIBLE-VALUES, COPY-SLOT-VALUE,
          (:METHOD FRAME-BASE :INSPECT-INSTANCE),
          (:METHOD FRAME-CORE :PROMPT-FOR-VALUE),
          (:METHOD FRAME-CORE :RECALL),
          (:METHOD FRAME-CORE :REMEMBER),
          (:METHOD FRAME-CORE :SLOT-MESSAGE),
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE),
          (:METHOD FRAME-INTERPRETER :GET), GET-CONSTRAINT,
          GET-VALUE, GET-VALUE-OF-REFERENCED-SLOT,
          (:METHOD POSS-VAL-MIXIN :ANY-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :CHECK-CORRECT-VALUE),
          (:METHOD POSS-VAL-MIXIN :CHECK-FORMAT-OF-EXPLAIN-ANSWERS),
          (:METHOD POSS-VAL-MIXIN :CHECK-INIT-VALUE),
          (:METHOD POSS-VAL-MIXIN :CHECK-VALUE),
          (:METHOD POSS-VAL-MIXIN :DEFAULT-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :GET-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :ONE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :PROVIDE-LOCAL-HELP),
          (:METHOD POSS-VAL-MIXIN :SOME-OF-READ-METHOD),
          (:METHOD RESTRICTION-BASE :NEW-RESTRICTION),
          (:METHOD RESTRICTION-NET :MAKE-SLOT-RESTRICTION)

-------------------------------------------------------------------

  :GET-VALUE-ONLY               keyword

     used by: (:METHOD ACTIVE-VALUE-MIXIN :GET),
          (:METHOD ACTIVE-VALUE-MIXIN :SET), COPY-SLOT-VALUE,
          (:METHOD FRAME-CORE :UNPARSE-SLOT),
          (:METHOD FRAME-INTERPRETER :GET-VALUE-ONLY),
          (:METHOD POSS-VAL-MIXIN :CHECK-YOUR-SELF),
          (:METHOD POSS-VAL-MIXIN :SOME-OF-READ-METHOD),
          REPLACE-SLOT-VALUE,
          (:METHOD RESTRICTION-NET :CORRECT-RESTRICTION-NET),
          (:METHOD RESTRICTION-NET :MAKE-GUARDED-SLOT),
          (:METHOD RESTRICTION-NET :MAKE-PROTECTED-SLOT)

-------------------------------------------------------------------

  :GLOBALLY                     keyword

     used by: DETERMINE-CONSISTENCY-LEVEL,
          DETERMINE-NUMBER-OF-RESULTS

-------------------------------------------------------------------

  :GUARDED-SLOTS                keyword

     used by: GET-GUARDED-SLOTS,
          (:METHOD RESTRICTION-DEFINITION :PRINT)

-------------------------------------------------------------------

  :IF                           keyword

     used by: GET-INSTANCE-CONDITION, GET-LOCAL-CONDITION,
          GET-SLOT-REFS, HAS-CONDITION-P, MAKE-$INSTANCE-ALIST,
          PARSE-REL-ELEM

-------------------------------------------------------------------

  :INIT-TRACE                   keyword

     used by: MAKE-AGENDA-ELEM

-------------------------------------------------------------------

  :INIT-VALUES                  keyword

     used by: MAKE-VAR-INFO

-------------------------------------------------------------------

  :INITIAL-CONTENTS             keyword

     used by: COPY-AGENDA-ELEM, COPY-JUSTIFICATION, COPY-STACK-ELEM,
          COPY-TRACE-ELEMENT, COPY-VAR-INFO, COPY-VARCELL

-------------------------------------------------------------------

  :INITIAL-ELEMENT              keyword

     used by: COMPLETE-TO-N, MAKE-BLANKS, MAKE-STRING-OF-LENGTH

-------------------------------------------------------------------

  :INSTANCE                     keyword

     used by: %IS-BEHAVIOR, %IS-SLOT,
          (:METHOD BASIC-FRAME-MIXIN :DESCRIBE-INSTANCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-BEHAVIOR-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-CLASS-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-META-PREDICATE-
REFERENCE),
          COMPUTE-LIST-EXPR, COPY-POSSIBLE-VALUES, COPY-SLOT-VALUE,
          (:METHOD FRAME-BASE :INSPECT-INSTANCE),
          (:METHOD FRAME-BASE :NEW-INSTANCE),
          (:METHOD FRAME-INTERPRETER :ASK),
          (:METHOD FRAME-INTERPRETER :DELETE-PROPERTY),
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE),
          (:METHOD FRAME-INTERPRETER :GET),
          (:METHOD FRAME-INTERPRETER :GET-VALUE-ONLY),
          (:METHOD FRAME-INTERPRETER :PUT),
          (:METHOD FRAME-INTERPRETER :REPLACE),
          (:METHOD FRAME-INTERPRETER :SET),
          (:METHOD FRAME-INTERPRETER :TYPE),
          GET-VALUE-OF-REFERENCED-SLOT,
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF),
          REPLACE-POSSIBLE-VALUES, REPLACE-SLOT-VALUE,
          (:METHOD RESTRICTION-NET :MAKE-ACTIVE-VALUES),
          SEND-TO-INSTANCE-OR-SELF

-------------------------------------------------------------------

  :INSTANCE-DEFINITION          keyword

     used by: %IS-INSTANCE, %IS-INSTANCE-NAME,
          (:METHOD FRAME-BASE :NEW-INSTANCE), GET-INSTANCE-DEF,
          IS-INSTANCE

-------------------------------------------------------------------

  :INSTANCE-OF                  keyword

     used by: DETERMINE-SET-OF-INSTANCES,
          POSSIBLE-VALUES-TO-VALUE-SPEC

-------------------------------------------------------------------

  :INSTANCES                    keyword

     used by: ADD-INSTANCE-TO-FRAME,
          (:METHOD BASIC-FRAME-PROCESSOR :KB-INFORM),
          GET-INSTANCE-LIST

-------------------------------------------------------------------

  :INTERFACE                    keyword

     used by: (:METHOD BASIC-CONSTRAINT-MIXIN :ACTIVATE-INTERACTIVE),
          (:METHOD CONSTRAINT :PRINT),
          (:METHOD CONSTRAINT :TRACE-ON),
          (:METHOD CONSTRAINT-NET :PRINT),
          (:METHOD CONSTRAINT-NET :TRACE-ON), DEF-KB-CONFIGURATION,
          GET-DEF-INTERFACE, GET-INTERFACE-MIXINS-TO-INCLUDE,
          GLOBAL-TO-LOCAL, KNOWLEDGE-BASE, LOCAL-TO-GLOBAL,
          (:METHOD TRACED-CONSTRAINT :TRACE-OFF),
          (:METHOD TRACED-CONSTRAINT-NET :TRACE-OFF)

-------------------------------------------------------------------

  :INTERVAL                     keyword

     used by: POSSIBLE-VALUES-TO-VALUE-SPEC

-------------------------------------------------------------------

  :KB-NAME                      keyword

     used by: CHECK-INSTANCE-DEFINITION, DEF-KB-INSTANCE,
          DEFRULE-SET, GET-FRAME-NAME,
          GET-FRAME-NAME-OR-SIGNAL-ERROR, GET-FRAME-NAME-WITH-CHECK,
          GET-INSTANCE-NAME, GET-INSTANCE-NAME-WITH-CHECK,
          (:METHOD KB-PROCESSOR-CORE :START-KB-CONFIRMED),
          (:METHOD RULE-TRACE-MIXIN :AFTER :INIT),
          SIGNAL-UNKNOWN-FRAME

-------------------------------------------------------------------

  :KEYWORD                      keyword

     used by: DEFINE-RELATION-METHOD, DEFPROLOG-TRACE-METHODS,
          INTERNAL-RELATION-NAME,
          (:METHOD RULE-TRACE-MIXIN :AFTER :INIT),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :VERIFY-HYPOTHESIS),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :TRY-RULE),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :ASK-USER),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :STORE),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :REMEMBER),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :IN-THEN-PART)

-------------------------------------------------------------------

  :KILL-KB                      keyword

     used by: USE-OLD-KB?

-------------------------------------------------------------------

  :LEADER-LENGTH                keyword

     used by: COPY-AGENDA-ELEM, COPY-JUSTIFICATION, COPY-STACK-ELEM,
          COPY-TRACE-ELEMENT, COPY-VAR-INFO

-------------------------------------------------------------------

  :LIST                         keyword

     used by: POSSIBLE-VALUES-TO-VALUE-SPEC

-------------------------------------------------------------------

  :LOCALLY                      keyword

     used by: DETERMINE-CONSISTENCY-LEVEL

-------------------------------------------------------------------

  :MAKE-YOURSELF-CURRENT        keyword

     used by: (:METHOD KB-PROCESSOR-CORE :KILL-KB),
          (:METHOD KB-PROCESSOR-CORE :SELECT-KB), SEARCH-FOR-KB,
          USE-OLD-KB?

-------------------------------------------------------------------

  :META-PROCESSOR               keyword

     used by:
          (:METHOD BASIC-CONSTRAINT-MIXIN :GENERATE-CONSTRAINT-
PROCESSOR),
          (:METHOD BASIC-FRAME-MIXIN :GENERATE-FRAME-PROCESSOR),
          (:METHOD BASIC-PROLOG-MIXIN :GENERATE-PROLOG-PROCESSOR),
          (:METHOD BASIC-RULE-MIXIN :GENERATE-RULE-PROCESSOR),
          (:METHOD FREE-TEXT-MIXIN :GENERATE-FREE-TEXT-PROCESSOR),
          KB-STUB-HANDLER,
          (:METHOD MINI-CONSTRAINT-MIXIN :GENERATE-CONSTRAINT-
PROCESSOR),
          (:METHOD MINI-FRAME-MIXIN :GENERATE-FRAME-PROCESSOR),
          (:METHOD MINI-PROLOG-MIXIN :GENERATE-PROLOG-PROCESSOR),
          (:METHOD MINI-RULE-MIXIN :GENERATE-RULE-PROCESSOR),
          (:METHOD NORMAL-CONSTRAINT-MIXIN :GENERATE-CONSTRAINT-
PROCESSOR),
          (:METHOD NORMAL-FRAME-MIXIN :GENERATE-FRAME-PROCESSOR),
          (:METHOD NORMAL-PROLOG-MIXIN :GENERATE-PROLOG-PROCESSOR),
          (:METHOD NORMAL-RULE-MIXIN :GENERATE-RULE-PROCESSOR)

-------------------------------------------------------------------

  :MOM-SHOW-PREMISE             keyword

     used by: (:METHOD AX-DEVELOP-MIXIN :DISPLAY-PREDICATE),
          (:METHOD AX-DEVELOP-MIXIN :INSPECT-AXIOMS),
          (:METHOD AX-DEVELOP-MIXIN :MOM-SHOW-PREMISE),
          MAKE-REC-CLAUSE-ITEMS

-------------------------------------------------------------------

  :MULT-CHOOSE-FROM-MENU        keyword

     used by: (:METHOD BASIC-PROLOG-MIXIN :SELECT-LOAD-AXIOMS),
          CHOOSE-CONSTRAINT-TRACE-MODE,
          (:METHOD MINI-PROLOG-MIXIN :SELECT-PREDS-TO-TOGGLE),
          (:METHOD MINI-RULE-MIXIN :SELECT-RULES-TO-TOGGLE),
          (:METHOD POSS-VAL-MIXIN :PROVIDE-LOCAL-HELP),
          (:METHOD POSS-VAL-MIXIN :SOME-OF-READ-METHOD),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-RULES-FOR-TERM),
          (:METHOD RULE-DEVELOP-MIXIN :INSPECT-TERMS)

-------------------------------------------------------------------

  :MULTIPLE-VALUE               keyword

     used by: IS-MULTIPLE-ANSWER, IS-MULTIPLE-VALUE,
          MAKE-MULTIPLE-ANSWER, MAKE-MULTIPLE-VALUE

-------------------------------------------------------------------

  :NAMED-STRUCTURE-SYMBOL       keyword

     used by: COPY-AGENDA-ELEM, COPY-JUSTIFICATION, COPY-STACK-ELEM,
          COPY-TRACE-ELEMENT, COPY-VAR-INFO

-------------------------------------------------------------------

  :NEW&DELETE                   keyword

     used by: (:METHOD BASIC-CONSTRAINT-MIXIN :READ), DEFCONSTRAINT

-------------------------------------------------------------------

  :NEW&DELETE-RESTRICTION       keyword

     used by: DEFRESTRICTION

-------------------------------------------------------------------

  :NEW-BEHAVIOR-FORM            keyword

     used by: DEFBEHAVIOR

-------------------------------------------------------------------

  :NEW-FRAME-FORM               keyword

     used by: DEFFRAME

-------------------------------------------------------------------

  :NEW-INSTANCE                 keyword

     used by: DEFINSTANCE

-------------------------------------------------------------------

  :NEW-UNNAMED-INSTANCE         keyword

     used by: CREATE-INSTANCE-OF, CREATE-UNNAMED-INSTANCE

-------------------------------------------------------------------

  :NONE                         keyword

     used by: DETERMINE-SLOTS

-------------------------------------------------------------------

  :NOT                          keyword

     used by: POSSIBLE-VALUES-TO-VALUE-SPEC

-------------------------------------------------------------------

  :NUMBER                       keyword

     used by: POSSIBLE-VALUES-TO-VALUE-SPEC

-------------------------------------------------------------------

  :OBTAIN                       keyword

     used by: (:METHOD BASIC-RULE-MIXIN :OBTAIN), OBTAIN

-------------------------------------------------------------------

  :ONE-OF                       keyword

     used by: CONVERT-TO-CONSAT-VALUE, DETERMINE-SET-OF-INSTANCES,
          POSSIBLE-VALUES-TO-VALUE-SPEC, REPLACE-POSSIBLE-VALUES

-------------------------------------------------------------------

  :OPERATION-HANDLED-P          keyword

     used by: %IS-BEHAVIOR,
          (:METHOD BASIC-CONSTRAINT-MIXIN :SET-UP-CONSTRAINT-CMDS),
          (:METHOD BASIC-FRAME-MIXIN :SET-UP-FRAME-CMDS),
          (:METHOD BASIC-PROLOG-MIXIN :SET-UP-PROLOG-CMDS),
          (:METHOD BASIC-RULE-MIXIN :SET-UP-RULE-CMDS), IS-METHOD-OF,
          (:METHOD MINI-CONSTRAINT-MIXIN :SET-UP-CONSTRAINT-CMDS),
          (:METHOD MINI-PROLOG-MIXIN :SET-UP-PROLOG-CMDS),
          (:METHOD MINI-RULE-MIXIN :SET-UP-RULE-CMDS),
          (:METHOD NORMAL-RULE-MIXIN :SET-UP-RULE-CMDS)

-------------------------------------------------------------------

  :OR                           keyword

     used by: ABBREVIATED-CONDITION, (:METHOD CONSTRAINT :PRINT)

-------------------------------------------------------------------

  :OUTPUT-FILE                  keyword

     used by: CC-LOAD

-------------------------------------------------------------------

  :PATTERN                      keyword

     used by: CHOOSE-RELATION, EVALUATE-RELATION-ELEMENT,
          PARSE-REL-ELEM

-------------------------------------------------------------------

  :PKG                          keyword

     used by: %GET-OBJECT-NAME, %MAKE-OBJECT-NAME

-------------------------------------------------------------------

  :POSSIBLE-VALUES              keyword

     used by: (:METHOD ACTIVE-VALUE-MIXIN :CHECK-INIT-VALUE),
          COPY-POSSIBLE-VALUES,
          (:METHOD POSS-VAL-MIXIN :ANY-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :CHECK-CORRECT-VALUE),
          (:METHOD POSS-VAL-MIXIN :CHECK-INIT-VALUE),
          (:METHOD POSS-VAL-MIXIN :CHECK-VALUE),
          (:METHOD POSS-VAL-MIXIN :DEFAULT-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :GET-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :ONE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :SOME-OF-READ-METHOD),
          REPLACE-POSSIBLE-VALUES

-------------------------------------------------------------------

  :PRINT                        keyword

     used by: (:METHOD BASIC-CONSTRAINT-MIXIN :DISPLAY),
          PRINT-CONSTRAINT-LIST

-------------------------------------------------------------------

  :PROCS                        keyword

     used by: DEF-KB-CONFIGURATION, GET-PROC-MIXINS-TO-INCLUDE,
          KNOWLEDGE-BASE

-------------------------------------------------------------------

  :PROLOG-PROCESSOR             keyword

     used by: (:METHOD BASIC-GOALBOX :GENERATE-SUBGOAL),
          (:METHOD BASIC-GOALBOX :GENERATE-SUBGOALS),
          (:METHOD PROLOG-INTERPRETER :AFTER :SETGOAL), SEND-PROLOG

-------------------------------------------------------------------

  :PROLOG-PROVE-LOOP            keyword

     used by: ?-

-------------------------------------------------------------------

  :PROMPT-FOR-INPUT             keyword

     used by: READ-EXPR-FROM-WINDOW

-------------------------------------------------------------------

  :PROTECTED-SLOTS              keyword

     used by: GET-PROTECTED-SLOTS,
          (:METHOD RESTRICTION-DEFINITION :PRINT)

-------------------------------------------------------------------

  :PUT                          keyword

     used by: (:METHOD ACTIVE-VALUE-MIXIN :PUT-IF-SATISFIED),
          (:METHOD ACTIVE-VALUE-MIXIN :SET),
          (:METHOD FRAME-CORE :REMEMBER),
          (:METHOD FRAME-CORE :STORE),
          (:METHOD FRAME-INTERPRETER :PUT), PUT-VALUE,
          REPLACE-POSSIBLE-VALUES

-------------------------------------------------------------------

  :QUEUE                        keyword

     used by: (:METHOD CONSTRAINT-NET :STORE-STATE),
          MAKE-AGENDA-ELEM, MAKE-STACK-ELEM

-------------------------------------------------------------------

  :READ                         keyword

     used by: READ-CONSTRAINT

-------------------------------------------------------------------

  :RECALL                       keyword

     used by: <--,
          (:METHOD BASIC-FRAME-MIXIN :ASK-EVAL-FRAME-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-PREDICATE-
REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-PROLOG-FRAME-REFERENCE),
          (:METHOD DATA-BASE :RECALL), EVALUATE-CONDITION,
          EVALUATE-FUNCALL, (:METHOD FRAME-CORE :SLOT-MESSAGE),
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE),
          (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT),
          (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT-FOR-PROLOG),
          (:METHOD RULE-INTERPRETER :AND-FORWARD),
          (:METHOD RULE-INTERPRETER :AND-FORWARD-ASKING-IF-
UNDETERMINED),
          (:METHOD RULE-INTERPRETER :EXECUTE-ASK),
          (:METHOD RULE-INTERPRETER :OR-FORWARD),
          (:METHOD RULE-INTERPRETER :OR-FORWARD-ASKING-IF-
UNDETERMINED),
          (:METHOD RULE-INTERPRETER :VARIABLE-AND-FORWARD),
          (:METHOD RULE-INTERPRETER :VARIABLE-OR-FORWARD),
          (:METHOD RULE-INTERPRETER :VERIFY)

-------------------------------------------------------------------

  :RELATION                     keyword

     used by: (:METHOD CONSTRAINT :PRINT),
          (:METHOD CONSTRAINT :TRACE-ON), GET-DEF-RELATION,
          (:METHOD TRACED-CONSTRAINT :TRACE-OFF)

-------------------------------------------------------------------

  :REMEMBER                     keyword

     used by: <--, (:METHOD DATA-BASE :REMEMBER),
          (:METHOD FRAME-CORE :SLOT-MESSAGE),
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE),
          (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT),
          (:METHOD MINI-RULE-MIXIN :DISPLAY-TRACE-ELEMENT),
          (:METHOD RULE-INTERPRETER :CONCLUDE),
          (:METHOD RULE-INTERPRETER :EXECUTE),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :REMEMBER)

-------------------------------------------------------------------

  :RESET-KB-CONFIRMED           keyword

     used by: RESET-KNOWLEDGE-BASE

-------------------------------------------------------------------

  :RESTRICTIONS                 keyword

     used by: GET-RESTRICTIONS,
          (:METHOD RESTRICTION-DEFINITION :PRINT),
          (:METHOD RESTRICTION-NET :REDEFINE-ONE)

-------------------------------------------------------------------

  :RULE-PROCESSOR               keyword

     used by: SEND-RULE

-------------------------------------------------------------------

  :SELECT-KB                    keyword

     used by: CALL-KB

-------------------------------------------------------------------

  :SEND-IF-HANDLES              keyword

     used by: (:METHOD BASIC-CONSTRAINT-MIXIN :CHOOSE-C-TYPE),
          (:METHOD BASIC-PROLOG-MIXIN :READ-CLAUSES),
          (:METHOD BASIC-PROLOG-MIXIN :REMOVE-AXIOM-SET),
          CONSTRAINT-ASSOC-TRACEDP,
          (:METHOD KB-PROCESSOR-CORE :GLOBAL-TRACE-STATUS),
          (:METHOD KB-PROCESSOR-CORE :KB-INFORM),
          (:METHOD KB-PROCESSOR-CORE :RESET-KB),
          (:METHOD NORMAL-PROLOG-MIXIN :DISPLAY-PROOFTREE),
          (:METHOD PROLOG-INTERPRETER :WHY),
          (:METHOD RULE-EXPLAIN-MIXIN :HOW-ULTIMATELY),
          (:METHOD RULE-EXPLAIN-MIXIN :WHY-NOT),
          (:METHOD RULE-TRACE-MIXIN :DISPLAY-TRACED-RULE)

-------------------------------------------------------------------

  :SET                          keyword

     used by: $SETF-VALUE, (:PROPERTY $VALUE SYS::SETF-METHOD),
          (:METHOD ACTIVE-VALUE-MIXIN :INIT-SLOT),
          (:METHOD ACTIVE-VALUE-MIXIN :PUT),
          (:METHOD ACTIVE-VALUE-MIXIN :PUT-INDIRECT),
          (:METHOD FRAME-CORE :ASK-FOR-SLOT-PROPERTY),
          (:METHOD FRAME-CORE :ASK-FOR-SLOT-VALUE),
          (:METHOD FRAME-CORE :INIT-SLOT),
          (:METHOD FRAME-INTERPRETER :SET),
          (:METHOD POSS-VAL-MIXIN :ASK-FOR-SLOT-VALUE),
          (:METHOD POSS-VAL-MIXIN :ASK-GUIDED),
          (:METHOD POSS-VAL-MIXIN :INIT-SLOT),
          (:METHOD POSS-VAL-MIXIN :PUT)

-------------------------------------------------------------------

  :SET-HYPOTHESES               keyword

     used by: HYPOTHESES

-------------------------------------------------------------------

  :SET-INSTRUCTIONS             keyword

     used by: INSTRUCTIONS

-------------------------------------------------------------------

  :SET-PROLOG-TRACE-OPTIONS     keyword

     used by: SET-PROLOG-TRACE-OPTIONS

-------------------------------------------------------------------

  :SETTABLE-INSTANCE-VARIABLES  keyword

     used by: DEF-KB-CONFIGURATION

-------------------------------------------------------------------

  :SLOTS                        keyword

     used by: %IS-SLOT,
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-META-PREDICATE-
REFERENCE),
          (:METHOD FRAME-BASE :INSPECT-INSTANCE)

-------------------------------------------------------------------

  :SPECIAL                      keyword

     used by: DEF-KB-CONFIGURATION, GET-SPECIAL-MIXINS-TO-INCLUDE,
          KNOWLEDGE-BASE

-------------------------------------------------------------------

  :START-KB-CONFIRMED           keyword

     used by: START-KNOWLEDGE-BASE

-------------------------------------------------------------------

  :STORE                        keyword

     used by: <--, (:METHOD DATA-BASE :STORE),
          (:METHOD FRAME-CORE :SLOT-MESSAGE),
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE),
          (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT),
          (:METHOD MINI-RULE-MIXIN :DISPLAY-TRACE-ELEMENT),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :STORE)

-------------------------------------------------------------------

  :STORE-DEKLARATION            keyword

     used by: DEF-KB-INSTANCE, KNOWLEDGE-BASE

-------------------------------------------------------------------

  :STRING                       keyword

     used by: POSSIBLE-VALUES-TO-VALUE-SPEC

-------------------------------------------------------------------

  :SUBCLASSES                   keyword

     used by: ADD-SUBFRAME, GET-SUBFRAMES

-------------------------------------------------------------------

  :SYMBOL                       keyword

     used by: POSSIBLE-VALUES-TO-VALUE-SPEC

-------------------------------------------------------------------

  :TEST                         keyword

     used by: (:METHOD ACTIVE-VALUE-MIXIN :PUT-IF-SATISFIED),
          BAB-REQUIRE, FIND-TRANSLATION,
          (:METHOD RESTRICTED-SLOT :PUT)

-------------------------------------------------------------------

  :TEST-HYPOTHESES              keyword

     used by: (:METHOD BASIC-RULE-MIXIN :TEST-HYPOTHESES),
          (:METHOD RULE-INTERPRETER :OBTAIN), TEST-HYPOTHESES

-------------------------------------------------------------------

  :TOGGLE-RULE-TRACE            keyword

     used by: (:METHOD MINI-RULE-MIXIN :TOGGLE-RULE-TRACE),
          TOGGLE-RULE-TRACE

-------------------------------------------------------------------

  :TOGGLE-SYSTEM-TRACE          keyword

     used by: TOGGLE-SYSTEM-TRACE

-------------------------------------------------------------------

  :TRACE                        keyword

     used by: (:METHOD CONSTRAINT-NET :STORE-STATE),
          MAKE-AGENDA-ELEM, MAKE-STACK-ELEM

-------------------------------------------------------------------

  :TRACE-OFF                    keyword

     used by: UPDATE-CONSTRAINT-TRACE-MODE

-------------------------------------------------------------------

  :TRACE-ON                     keyword

     used by: UPDATE-CONSTRAINT-TRACE-MODE

-------------------------------------------------------------------

  :TRACED-P                     keyword

     used by: CONSTRAINT-ASSOC-TRACEDP

-------------------------------------------------------------------

  :TRY-PUT                      keyword

     used by: REPLACE-SLOT-VALUE

-------------------------------------------------------------------

  :TRY-RULE                     keyword

     used by: (:METHOD MINI-RULE-MIXIN :DISPLAY-TRACE-ELEMENT),
          (:METHOD RULE-INTERPRETER :DO-ALL),
          (:METHOD RULE-INTERPRETER :DO-ONE),
          (:METHOD RULE-INTERPRETER :VERIFY),
          (:METHOD RULE-TRACE-MIXIN :BEFORE :TRY-RULE), RULE-TRIED-P

-------------------------------------------------------------------

  :TUPLE                        keyword

     used by: CHOOSE-RELATION, EVALUATE-RELATION-ELEMENT,
          PARSE-REL-ELEM

-------------------------------------------------------------------

  :TYPE                         keyword

     used by:
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-CLASS-REFERENCE),
          (:METHOD FRAME-INTERPRETER :TYPE), GET-DEF-TYP

-------------------------------------------------------------------

  :TYPEFKT                      keyword

     used by: DEF-KB-CONFIGURATION

-------------------------------------------------------------------

  :UPDATE-CONSTRAINT-TRACE      keyword

     used by: UPDATE-CONSTRAINT-TRACE-MODE

-------------------------------------------------------------------

  :USE                          keyword

     used by: (:METHOD BASIC-FRAME-MIXIN :SET-UP-PREFIX),
          DEF-KB-INSTANCE, USE-KB-INSTANCE

-------------------------------------------------------------------

  :VALUE                        keyword

     used by: $SETF-VALUE, $VALUE,
          (:PROPERTY $VALUE SYS::SETF-METHOD), <--,
          (:METHOD ACTIVE-VALUE-MIXIN :GET),
          (:METHOD ACTIVE-VALUE-MIXIN :GET-INDIRECT),
          (:METHOD ACTIVE-VALUE-MIXIN :INIT-SLOT),
          (:METHOD ACTIVE-VALUE-MIXIN :PUT),
          (:METHOD ACTIVE-VALUE-MIXIN :PUT-IF-SATISFIED),
          (:METHOD ACTIVE-VALUE-MIXIN :PUT-INDIRECT),
          (:METHOD ACTIVE-VALUE-MIXIN :SET),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-PREDICATE-
REFERENCE),
          CHOOSE-SPECIAL-CONSTRAINT,
          (:METHOD FRAME-CORE :ASK-FOR-SLOT-PROPERTY),
          (:METHOD FRAME-CORE :DELETE-PROPERTY),
          (:METHOD FRAME-CORE :GET),
          (:METHOD FRAME-CORE :GET-PROPERTIES),
          (:METHOD FRAME-CORE :GET-VALUE-ONLY),
          (:METHOD FRAME-CORE :PUT), (:METHOD FRAME-CORE :RECALL),
          (:METHOD FRAME-CORE :REMEMBER),
          (:METHOD FRAME-CORE :REPLACE),
          (:METHOD FRAME-CORE :RESET-SLOTS),
          (:METHOD FRAME-CORE :SET),
          (:METHOD FRAME-CORE :SET-VALUE-ONLY),
          (:METHOD FRAME-CORE :SLOT-MESSAGE),
          (:METHOD FRAME-CORE :STORE),
          (:METHOD FRAME-CORE :UNPARSE-SLOT),
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE),
          (:METHOD FRAME-INTERPRETER :GET),
          (:METHOD FRAME-INTERPRETER :GET-VALUE-ONLY),
          (:METHOD FRAME-INTERPRETER :PUT),
          (:METHOD FRAME-INTERPRETER :REPLACE),
          (:METHOD FRAME-INTERPRETER :SET), GENERATE-HOW-MENU-ITEMS,
          GET-VALUE, (:PROPERTY GET-VALUE SYS::SETF-METHOD),
          GET-VALUE-ONLY, MAKE-FACTS-CHOICE, MAKE-REC-CLAUSE-ITEMS,
          MAKE-TERM-ITEM, NORMALIZE-ARGS, NORMALIZE-PLIST,
          NORMALIZE-PLIST-WITH-ACT-VALS,
          (:METHOD POSS-VAL-MIXIN :INIT-SLOT),
          (:METHOD POSS-VAL-MIXIN :PUT), PUT-VALUE,
          (:METHOD RESTRICTION-NET :MAKE-SLOT-RESTRICTION),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-RULE-SET),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-TERM), SET-VALUE-ONLY

-------------------------------------------------------------------

  :VALUES                       keyword

     used by: (:METHOD CONSTRAINT-NET :STORE-STATE), MAKE-STACK-ELEM,
          MAKE-VAR-INFO

-------------------------------------------------------------------

  :VARIABLES                    keyword

     used by: IS-VARIABLES-SPECIFICATION

-------------------------------------------------------------------

  :VARNAME                      keyword

     used by: GEN-VARCELL, TRANS-CLAUSE1

-------------------------------------------------------------------

  :VARNR                        keyword

     used by: TRANS-CLAUSE1

-------------------------------------------------------------------

  :WITH                         keyword

     used by: DETERMINE-CONSISTENCY-LEVEL,
          DETERMINE-NUMBER-OF-RESULTS, GET-EXTERNAL-VALUE-ASS

-------------------------------------------------------------------

  $SEND                         symbol

     used by: $SETF-VALUE, $VALUE,
          (:PROPERTY $VALUE SYS::SETF-METHOD), <--,
          (:METHOD BASIC-GOALBOX :PROVE-FORMAT), DEF-KB-INSTANCE,
          DEFINSTANCE, DEFPROLOG-TRACE-METHODS, GET-VALUE,
          KNOWLEDGE-BASE, PUT-VALUE, TESTIF, USETHEN

-------------------------------------------------------------------

  %NORMAL                       symbol

     used by: (:METHOD BASIC-GOALBOX :PROVE-GOAL),
          (:METHOD GOALBOX-TRACE-MIXIN :PROVE-GOAL), MARK-PRED

-------------------------------------------------------------------

  -                             symbol

     used by: CONVERT-TO-CONSAT-VALUE,
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-EXT-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NORMAL-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TRY-AFTER),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-RULES-FOR-TERM),
          UNDETERMINED

-------------------------------------------------------------------

  <=                            symbol

     used by: =<, IS-REST-BOUND

-------------------------------------------------------------------

  =                             symbol

     used by: =.=, =/=,
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-PREDICATE-
REFERENCE),
          CHECK-INSTANCE-DEFINITION, EVAL-FIRST-VALUE-ASS,
          EXTERNAL-VALUE-ASS-P, GET-LIST-OF-CHOICES, GET-SLOT-REFS,
          MAKE-$INSTANCE-ALIST, REMOVE-NOISY-WORDS

-------------------------------------------------------------------

  ACTIVE-VALUE                  symbol

     used by: (:METHOD ACTIVE-VALUE-MIXIN :ACTIVE-VALUE-SET),
          IS-ACTIVE-VALUE

-------------------------------------------------------------------

  AGENDA-ELEM                   symbol

     used by: AGENDA-ELEM-P, COPY-AGENDA-ELEM, MAKE-AGENDA-ELEM

-------------------------------------------------------------------

  ALL                           symbol

     used by: (:METHOD BASIC-PROLOG-MIXIN :DISPLAY-RESULT),
          (:METHOD BASIC-PROLOG-MIXIN :PROLOG-MULT-PROVE),
          (:METHOD BASIC-PROLOG-MIXIN :PROLOG-PROVE-LOOP),
          (:METHOD BASIC-PROLOG-MIXIN :SELECT-LIST-PREDICATE),
          (:METHOD BASIC-RULE-MIXIN :SELECT-LIST-RULE),
          GEN-VAR-VALUE-LIST,
          (:METHOD MINI-PROLOG-MIXIN :SELECT-FOR-TRACE),
          (:METHOD MINI-PROLOG-MIXIN :SHOW-TRACE-STATUS),
          (:METHOD PROC-SC-MIXIN :RETURN-RESULT),
          (:METHOD PROLOG-TRACE-MIXIN :AFTER :SET-AXIOMS),
          (:METHOD PROLOG-TRACE-MIXIN :BEFORE :CLAUSE-TRANS-UNIFY),
          (:METHOD PROLOG-TRACE-MIXIN :BEFORE :TRANS-UNIFY),
          (:METHOD PROLOG-TRACE-MIXIN :GET-PREDS-WITH-MARK),
          (:METHOD PROLOG-TRACE-MIXIN :SYNCHRONIZE-TRACE)

-------------------------------------------------------------------

  AND                           symbol

     used by: ?-, DEFCLAUSES, DEFINSTANCE, DEFRULE-SET, FRAME-TYPE,
          HYPOTHESES, INST-ASSIGNMENT-P, IS-PATH, IS-REST-BOUND,
          IS-RULE-CLAUSE, IS-SIMPLE-CLAUSE, IS-VAR, LISP-TYPE,
          PROLOG-TYPE,
          (:METHOD RULE-INTERPRETER :VARIABLE-AND-FORWARD),
          RULE-REFERENCE-TYPE

-------------------------------------------------------------------

  ASSOC                         symbol

     used by: FRAME-OPTIONS, FRAME-SLOTS, FRAME-SUPERS

-------------------------------------------------------------------

  ATOM                          symbol

     used by: (:METHOD BASIC-GOALBOX :PROVE-TYPE), CONSTRAINT-TYPE,
          INST-ASSIGNMENT-P, IS-SIMPLE-LIST, LISP-TYPE

-------------------------------------------------------------------

  BABYLON-IO-TABLE              symbol

     used by: CURRENT-KB-TYPEP,
          (:METHOD KB-PROCESSOR-CORE :KB-INFORM),
          (:METHOD KB-PROCESSOR-CORE :RESET-KB-CONFIRMED),
          (:METHOD KB-PROCESSOR-CORE :START-KB-CONFIRMED),
          (:METHOD META-PROCESSOR-CORE :BEFORE :EVAL),
          (:METHOD META-PROCESSOR-CORE :EVAL),
          (:METHOD META-PROCESSOR-CORE :TRACE-STATUS),
          (:METHOD MINI-CONSTRAINT-PROCESSOR :TRACE-STATUS),
          NORMALIZE-ANSWER,
          (:METHOD PROLOG-TRACE-MIXIN :TRACE-STATUS),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-ACTION),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-PREMISE),
          (:METHOD RULE-EXPLAIN-MIXIN :HOW-ULTIMATELY),
          (:METHOD RULE-TRACE-MIXIN :TRACE-STATUS), SEARCH-FOR-KB,
          TRANSLATE-ANSWER, USE-OLD-KB?

-------------------------------------------------------------------

  BASIC-FRAME-MIXIN             symbol

     used by: CREATE-INSTANCE-OF, CREATE-UNNAMED-INSTANCE,
          DEFBEHAVIOR, DEFFRAME

-------------------------------------------------------------------

  BOUND                         symbol

     used by: (:METHOD BASIC-PROLOG-MIXIN :DISPLAY-RESULT),
          GEN-VAR-VALUE-LIST, (:METHOD PROC-SC-MIXIN :RETURN-RESULT)

-------------------------------------------------------------------

  CAR                           symbol

     used by: CONSTRAINT-TYPE, GET-CONSTR-NAME, GET-LOCAL-VAR,
          GET-NAME-OF-C-ASSOC, GET-NET-VAR, GET-VAR, HEAD, PRED

-------------------------------------------------------------------

  CDR                           symbol

     used by: BODY, GET-GLOBAL-VAR, GET-INST-ASSIGNMENT,
          GET-OBJECT-OF-C-ASSOC, GET-PARAMETERS, GET-VALUE-SPEC,
          GET-VAR-INFO

-------------------------------------------------------------------

  CHOOSE-NAME                   symbol

     used by: (:METHOD BASIC-CONSTRAINT-MIXIN :READ),
          CHOOSE-SPECIAL-CONSTRAINT

-------------------------------------------------------------------

  CLAUSES                       symbol

     used by: ASSERT-AXIOMS, (:METHOD AXSET-BASIC :KB-INFORM),
          (:METHOD AXSET-BASIC :PRINT), RESET-AXIOM-SET

-------------------------------------------------------------------

  COMB                          symbol

     used by: TRACE-ELEMENT-TO-SHOW, TRACE-ELEMENT-TO-STORE

-------------------------------------------------------------------

  COMPOUND                      symbol

     used by: (:METHOD BASIC-CONSTRAINT-MIXIN :READ),
          (:METHOD CONSTRAINT-BASE :NEW&DELETE), DEFCONSTRAINT,
          TRANSFORM-CONSTRAINT-TYPE

-------------------------------------------------------------------

  COND                          symbol

     used by: CLAUSE-TYPE, FRAME-TYPE, GET-CURR-METHOD,
          GET-PROVE-METHOD, INSTRUCTIONS, LISP-TYPE, NORMALIZE-ARGS

-------------------------------------------------------------------

  CONS                          symbol

     used by: MAKE-C-EXPR, MAKE-CONSTRAINT-ASSOC, MAKE-INFO-ASSOC,
          MAKE-VALUE-ASSOC, MAKE-VAR-ASSOC, NORMALIZE-ARGS,
          (:METHOD PROC-SC-MIXIN :SETGOAL)

-------------------------------------------------------------------

  CONSP                         symbol

     used by: GET-CURR-METHOD, GET-PROVE-METHOD, IS-PATH,
          IS-RULE-CLAUSE, IS-SIMPLE-CLAUSE

-------------------------------------------------------------------

  CONSTRAINT-IO-TABLE           symbol

     used by: (:METHOD BASIC-CONSTRAINT-MIXIN :CHOOSE-C-TYPE),
          (:METHOD BASIC-CONSTRAINT-MIXIN :PRINT-EXIT),
          (:METHOD BASIC-CONSTRAINT-MIXIN :READ),
          (:METHOD BASIC-CONSTRAINT-PROCESSOR :KB-INFORM),
          BUILD-CONSTRAINT-TRACE-ITEM-LIST,
          CHOOSE-CONSTRAINT-TRACE-MODE, CHOOSE-ELEMENT-TYPE,
          CHOOSE-NUMBER-OF-RESULTS, CHOOSE-RELATION,
          CHOOSE-SPECIAL-CONSTRAINT,
          (:METHOD CONSTRAINT-NET :RESTORE-STATE),
          DETERMINE-CONSISTENCY-LEVEL, EVAL-FIRST-VALUE-ASS,
          GET-CONSTRAINT, GET-DEF-CONDITION, GET-DEF-EXPRESSIONS,
          GET-DEF-INTERFACE, GET-DEF-RELATION, GET-DEF-TYP,
          GET-LIST-OF-CHOICES, GET-RESTRICTIONS, GET-SLOT-REFS,
          GET-VAR-INFO-VALUES, MAKE-GLOBAL-VALUE-ASS,
          MAKE-LOCAL-VALUE-ASS,
          (:METHOD MINI-CONSTRAINT-MIXIN :PROTOCOL),
          (:METHOD NORMAL-CONSTRAINT-PROCESSOR :AFTER :KB-INFORM),
          (:METHOD RESTRICTION-NET :MAKE-SLOT-RESTRICTION),
          SPLIT-AND-PUT-ASSOCIATION, VALUE-SPEC-TEST

-------------------------------------------------------------------

  CONSTRAINT-PROCESSOR          symbol

     used by: EVALUATE-CONDITION, EVALUATE-FUNCALL

-------------------------------------------------------------------

  CURR-PROLOG-METHOD            symbol

     used by: (:METHOD GOALBOX-TRACE-MIXIN :PROVE-GOAL), MARK-PRED,
          UNMARK-PRED

-------------------------------------------------------------------

  CURRENT                       symbol

     used by: (:METHOD BASIC-PROLOG-MIXIN :SELECT-LOAD-AXIOMS),
          GENERATE-CURRENT-ITEM-LIST

-------------------------------------------------------------------

  DEF$METHOD                    symbol

     used by: DEF-KB-CONFIGURATION, DEFINE-POSSIBLE-VALUES-METHOD,
          DEFINE-RELATION-METHOD, DEFPROLOG-TRACE-METHODS

-------------------------------------------------------------------

  DIRECT                        symbol

     used by: (:METHOD RULE-TRACE-MIXIN :FILTER-TRACE-LIST),
          TRACE-ELEMENT-TO-SHOW

-------------------------------------------------------------------

  DO-NOTHING-ITEMS              symbol

     used by: (:METHOD BASIC-CONSTRAINT-MIXIN :CHOOSE-C-TYPE),
          CHOOSE-SPECIAL-CONSTRAINT

-------------------------------------------------------------------

  DOLIST                        symbol

     used by: DEF-KB-CONFIGURATION,
          (:METHOD FRAME-BASE :NEW-FRAME-FORM)

-------------------------------------------------------------------

  DONE                          symbol

     used by: (:METHOD BASIC-PROLOG-MIXIN :PROLOG-PROVE-LOOP),
          (:METHOD PROC-EXPLAIN-MIXIN :EXPLAIN-KONTEXT),
          STOP-EXECUTION

-------------------------------------------------------------------

  EQ                            symbol

     used by: INST-ASSIGNMENT-P, IS-T, IS-VALUE

-------------------------------------------------------------------

  EQUAL                         symbol

     used by: /==, ==, DIFFERENCE-EMPTY-P, INTERSECT-SETS,
          (:METHOD RESTRICTION-BASE :DELETE-RESTRICTIONS),
          (:METHOD RULE-DEVELOP-MIXIN :FILTER-TERMS), UNION-SETS

-------------------------------------------------------------------

  ERROR                         symbol

     used by: (:METHOD BASIC-GOALBOX :ABORT),
          (:METHOD BASIC-GOALBOX :PROVE-ABOLISH),
          (:METHOD BASIC-GOALBOX :PROVE-AND),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTA),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTZ),
          (:METHOD BASIC-GOALBOX :PROVE-ASSUME),
          (:METHOD BASIC-GOALBOX :PROVE-BAGOF),
          (:METHOD BASIC-GOALBOX :PROVE-CALL),
          (:METHOD BASIC-GOALBOX :PROVE-CALLPRED),
          (:METHOD BASIC-GOALBOX :PROVE-CLAUSE),
          (:METHOD BASIC-GOALBOX :PROVE-COND),
          (:METHOD BASIC-GOALBOX :PROVE-NORMAL),
          (:METHOD BASIC-GOALBOX :PROVE-NOT),
          (:METHOD BASIC-GOALBOX :PROVE-ONCE),
          (:METHOD BASIC-GOALBOX :PROVE-OR),
          (:METHOD BASIC-GOALBOX :PROVE-RETRACT),
          (:METHOD BASIC-GOALBOX :PROVE-SUBGOALS),
          (:METHOD BASIC-GOALBOX :PROVE-TOP),
          (:METHOD BASIC-GOALBOX :PROVE-VAR),
          (:METHOD BASIC-GOALBOX :PROVE-VARPRED),
          (:METHOD CONSTRAINT :ACTIVATE),
          (:METHOD CONSTRAINT-BASE :NEW-COMPOUND),
          (:METHOD CONSTRAINT-BASE :NEW-PRIMITIVE),
          (:METHOD CONSTRAINT-BASE :SATISFIED-P),
          (:METHOD CONSTRAINT-BASE :SATISFY),
          (:METHOD CONSTRAINT-NET :ACTIVATE), DEFCONSTRAINT

-------------------------------------------------------------------

  EVAL                          symbol

     used by: CONVERT-TO-CONSAT-VALUE, EVAL-FIRST-VALUE-ASS,
          EVAL-LISP-CALL

-------------------------------------------------------------------

  EVAL-WHEN                     symbol

     used by: DEF-KB-INSTANCE, USE-KB-INSTANCE

-------------------------------------------------------------------

  EXIT                          symbol

     used by: (:METHOD AX-DEVELOP-MIXIN :INSPECT-AXIOMS),
          (:METHOD BASIC-FRAME-MIXIN :SELECT-DESCRIBE-FRAME),
          (:METHOD BASIC-FRAME-MIXIN :SELECT-DESCRIBE-INSTANCE),
          (:METHOD BASIC-PROLOG-MIXIN :SELECT-LIST-PREDICATE),
          (:METHOD BASIC-RULE-MIXIN :SELECT-LIST-RULE),
          CHOOSE-RELATION, GENERATE-HOW-MENU-ITEMS,
          (:METHOD MINI-PROLOG-MIXIN :SELECT-FOR-TRACE),
          (:METHOD MINI-PROLOG-MIXIN :SELECT-PREDS-FOR-TRACING),
          (:METHOD MINI-PROLOG-MIXIN :SET-PROLOG-TRACE-OPTIONS),
          (:METHOD MINI-RULE-MIXIN :SELECT-RULES-FOR-TRACING),
          (:METHOD MINI-RULE-MIXIN :SET-RULE-TRACE-OPTIONS),
          (:METHOD PROC-EXPLAIN-MIXIN :EXPLAIN-KONTEXT),
          (:METHOD RULE-EXPLAIN-MIXIN :ASK-FOR-HOW),
          (:METHOD RULE-EXPLAIN-MIXIN :WHICH-FACT)

-------------------------------------------------------------------

  EXPECT-FSTR                   symbol

     used by: MENU-CHOOSE-TRANSLATE, MENU-MULT-CHOOSE-TRANSLATE

-------------------------------------------------------------------

  EXPECT-RELATION-FSTR          symbol

     used by: <--, (:METHOD FRAME-CORE :SLOT-MESSAGE)

-------------------------------------------------------------------

  EXT                           symbol

     used by: (:METHOD BASIC-GOALBOX :ABORT),
          (:METHOD BASIC-GOALBOX :PROVE-ABOLISH),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTA),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTZ),
          (:METHOD BASIC-GOALBOX :PROVE-ASSUME),
          (:METHOD BASIC-GOALBOX :PROVE-CALL),
          (:METHOD BASIC-GOALBOX :PROVE-CALLPRED),
          (:METHOD BASIC-GOALBOX :PROVE-FORMAT),
          (:METHOD BASIC-GOALBOX :PROVE-VAR),
          (:METHOD BASIC-GOALBOX :PROVE-VARPRED),
          (:METHOD BASIC-GOALBOX :PROVE-WRITE),
          (:METHOD BASIC-PROLOG-MIXIN :SHOW-FORM),
          GEN-VAR-VALUE-LIST,
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-EXT-AFTER),
          (:METHOD PROC-SC-MIXIN :GET-CLAUSES),
          (:METHOD PROC-SC-MIXIN :RETURN-FORM),
          REST-SUBST-PROLOG-VARS, SUBST-PROLOG-VARS

-------------------------------------------------------------------

  FIND-PACKAGE                  symbol

     used by: DEF-KB-INSTANCE, USE-KB-INSTANCE

-------------------------------------------------------------------

  FIRST                         symbol

     used by: (:METHOD AXSET-BASIC :ADDAX),
          (:METHOD BASIC-PROLOG-MIXIN :ADD-AXIOM-SET), FRAME-TYPE,
          GET-ACTION-TYPE, GET-JUNCTOR, GET-KEYWORD,
          GET-OBJECT-OF-SLOT-REF, GET-TRACE-CONSTR,
          GET-VAR-OF-INST-ASS, INST-ASSIGNMENT-P, IS-RULE-CLAUSE,
          IS-SIMPLE-CLAUSE, LISP-TYPE, NORMALIZE-ARGS, PROLOG-TYPE,
          (:METHOD RULE-DEVELOP-MIXIN :FILTER-TERMS),
          RULE-REFERENCE-TYPE

-------------------------------------------------------------------

  FORMAT::FORMAT-STRING-STREAM  symbol

     used by: (:METHOD BASIC-PROLOG-MIXIN :INIT-KBAXSET),
          BUILD-CONSTRAINT-TRACE-ITEM-LIST,
          BUILD-MULT-CHOOSE-ITEM-LIST, CHOOSE-VALUE-SPEC,
          DEFPROLOG-TRACE-METHODS, FROM-LIST-TO-STRING,
          GEN-MULT-AXSET-ITEM-LIST, GEN-MULT-CHOOSE-ITEM-LIST,
          GENERATE-CURRENT-ITEM-LIST, KNOWLEDGE-BASE, MAKE-OP-HEADER,
          MAKE-TERM-ITEM, (:METHOD MINI-CONSTRAINT-MIXIN :PROTOCOL),
          (:METHOD MINI-PROLOG-MIXIN :SELECT-PREDS-TO-TOGGLE),
          (:METHOD MINI-RULE-MIXIN :SELECT-RULES-TO-TOGGLE),
          REST-SUBST-PROLOG-VARS,
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-RULES-FOR-TERM),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-TERM),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :COMPUTE-WHY-NOT-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :DISPLAY-TERM-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :DISPLAY-UNPROVABLE-TERM-TREE),
          SUBST-PROLOG-VARS

-------------------------------------------------------------------

  FRAME-IO-TABLE                symbol

     used by: <--, (:METHOD ACTIVE-VALUE-MIXIN :CHECK-INIT-VALUE),
          (:METHOD ACTIVE-VALUE-MIXIN :NO-UPDATE-PERMITTED),
          (:METHOD BASIC-FRAME-MIXIN :ASK-EVAL-FRAME-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-BEHAVIOR-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-CLASS-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-META-PREDICATE-
REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :EVAL-PROLOG-FRAME-REFERENCE),
          (:METHOD BASIC-FRAME-MIXIN :GET-ASK),
          (:METHOD BASIC-FRAME-MIXIN :SELECT-DESCRIBE-FRAME),
          (:METHOD BASIC-FRAME-MIXIN :SELECT-DESCRIBE-INSTANCE),
          (:METHOD BASIC-FRAME-PROCESSOR :KB-INFORM),
          (:METHOD BASIC-FRAME-PROCESSOR :PRINT),
          CHECK-FRAME-DEFINITION, CHECK-INSTANCE-DEFINITION,
          FORMAT-EXPECTATIONS,
          (:METHOD FRAME-BASE :NEW-BEHAVIOR-FORM),
          (:METHOD FRAME-CORE :ASK),
          (:METHOD FRAME-CORE :ASK-FOR-SLOT-PROPERTY),
          (:METHOD FRAME-CORE :DELETE-PROPERTY),
          (:METHOD FRAME-CORE :PROMPT-FOR-VALUE),
          (:METHOD FRAME-CORE :SLOT-MESSAGE),
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE),
          GET-FRAME-NAME, GET-FRAME-NAME-OR-SIGNAL-ERROR,
          GET-FRAME-NAME-WITH-CHECK, GET-INSTANCE-NAME,
          GET-INSTANCE-NAME-WITH-CHECK, MAKE-DEFINSTANCE-EXAMPLE,
          MAKE-FRAME-DEFINITION-EXAMPLE,
          MAKE-SLOT-SPECIFICATION-EXAMPLE,
          MAKE-SUPERS-SPECIFICATION-EXAMPLE, MENU-CHOOSE-TRANSLATE,
          MENU-MULT-CHOOSE-TRANSLATE,
          (:METHOD POSS-VAL-MIXIN :ANY-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :CHECK-CORRECT-VALUE),
          (:METHOD POSS-VAL-MIXIN :CHECK-FORMAT-OF-EXPLAIN-ANSWERS),
          (:METHOD POSS-VAL-MIXIN :CHECK-INIT-VALUE),
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :ONE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :PROVIDE-LOCAL-HELP),
          (:METHOD POSS-VAL-MIXIN :SOME-OF-READ-METHOD),
          SIGNAL-UNKNOWN-FRAME

-------------------------------------------------------------------

  FREE-TEXT-IO-TABLE            symbol

     used by: FORMAT-TRANSLATE-TRUE-OR-FALSE,
          (:METHOD FREE-TEXT-MIXIN :ASK-USER),
          (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT),
          (:METHOD FREE-TEXT-MIXIN :EVAL-FREE-TEXT-FOR-PROLOG),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER-WITHOUT-ADDING)

-------------------------------------------------------------------

  GET                           symbol

     used by: $INST, ADD-PRED, ASSIGN-TYPEFKT, DEFBABYLON-ENTRY,
          DEFBABYLON-TABLE, DEFJUNCTOR, DEFPROLOG-METHOD,
          DEFPROLOG-TRACE-METHODS, DEFREQUEST, FRAME-BEHAVIORS,
          FRAME-DEFINITION, FRAME-INSTANCES, FRAME-SUBCLASSES,
          GET-CURR-METHOD-FOR-PRED, GET-INSTANCE,
          GET-INSTANCE-WITH-CHECK, GET-METHOD-FOR-PRED, GET-PREDS,
          GETENTRY, INSTANCE-DEFINITION, IS-ENTRY

-------------------------------------------------------------------

  GETHASH                       symbol

     used by: DEFBABYLON-ENTRY, GET-STRING, GETENTRY, IS-ENTRY

-------------------------------------------------------------------

  GLOBAL-CONSISTENCY            symbol

     used by: ADAPT-CONSISTENCY-LEVEL,
          (:METHOD BASIC-CONSTRAINT-MIXIN :ACTIVATE-INTERACTIVE),
          (:METHOD BASIC-CONSTRAINT-MIXIN :PRINT-ENTER),
          (:METHOD CONSTRAINT :ACTIVATE),
          (:METHOD CONSTRAINT-NET :RESULT),
          (:METHOD CONSTRAINT-NET :TEST-CHOICES),
          DETERMINE-CONSISTENCY-LEVEL, SATISFY-CONSTRAINT-GLOBALLY,
          VALUE-ASSIGNMENT-TO-BOOLEAN-VALUE

-------------------------------------------------------------------

  GLOBAL-CONSISTENCY-IF-SINGLE-VALUED  symbol

     used by: ADAPT-CONSISTENCY-LEVEL,
          (:METHOD CONSTRAINT-NET :RESULT)

-------------------------------------------------------------------

  HELP                          symbol

     used by: (:METHOD BASIC-PROLOG-MIXIN :ASK-SET-GOAL),
          (:METHOD FRAME-CORE :ASK-FOR-SLOT-VALUE),
          (:METHOD FREE-TEXT-MIXIN :ASK-USER),
          (:METHOD FREE-TEXT-MIXIN :ASK-USER-FOR-PROLOG),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER-WITHOUT-ADDING),
          IS-HELP, (:METHOD POSS-VAL-MIXIN :ANY-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :ASK-FOR-SLOT-VALUE),
          (:METHOD POSS-VAL-MIXIN :ASK-GUIDED),
          (:METHOD POSS-VAL-MIXIN :DEFAULT-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :INSTANCE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :ONE-OF-READ-METHOD),
          (:METHOD POSS-VAL-MIXIN :PROVIDE-LOCAL-HELP),
          (:METHOD POSS-VAL-MIXIN :SOME-OF-READ-METHOD)

-------------------------------------------------------------------

  HIDE                          symbol

     used by: GET-RULE-MARK,
          (:METHOD MINI-RULE-MIXIN :SELECT-RULES-FOR-TRACING),
          (:METHOD MINI-RULE-MIXIN :SELECT-RULES-TO-TOGGLE),
          (:METHOD RULE-TRACE-MIXIN :MARK-RULE),
          (:METHOD RULE-TRACE-MIXIN :TOGGLE-RULES)

-------------------------------------------------------------------

  HOW                           symbol

     used by: GENERATE-HOW-MENU-ITEMS,
          (:METHOD RULE-EXPLAIN-MIXIN :ASK-FOR-HOW)

-------------------------------------------------------------------

  HOW-ALL                       symbol

     used by: GENERATE-HOW-MENU-ITEMS,
          (:METHOD RULE-EXPLAIN-MIXIN :ASK-FOR-HOW)

-------------------------------------------------------------------

  IF                            symbol

     used by: CHOOSE-RELATION, CONSTRAINT-TYPE,
          DEFINE-POSSIBLE-VALUES-METHOD, FRAME-TYPE, RESET-INSTANCE,
          (:METHOD RULE-DEVELOP-MIXIN :MAKE-RULE-ITEMS),
          RULE-REFERENCE-TYPE

-------------------------------------------------------------------

  IN-PACKAGE                    symbol

     used by: DEF-KB-INSTANCE, USE-KB-INSTANCE

-------------------------------------------------------------------

  INCONSISTENT                  symbol

     used by: (:METHOD CONSTRAINT-NET :CONSISTENT-P),
          STATE-OF-NET-SPEC, STATE-OF-VALUE-ASS

-------------------------------------------------------------------

  INSTANCE-DEF                  symbol

     used by:
          (:METHOD BASIC-FRAME-MIXIN :EVAL-FRAME-META-PREDICATE-
REFERENCE),
          RESET-INSTANCE

-------------------------------------------------------------------

  INT                           symbol

     used by: (:METHOD BASIC-GOALBOX :PROVE-CLAUSE),
          (:METHOD BASIC-GOALBOX :PROVE-RETRACT),
          REST-SUBST-PROLOG-VARS, SUBST-PROLOG-VARS

-------------------------------------------------------------------

  JUSTIFICATION                 symbol

     used by: COPY-JUSTIFICATION, JUSTIFICATION-P,
          MAKE-JUSTIFICATION

-------------------------------------------------------------------

  KB-NAME                       symbol

     used by: (:INTERNAL GET-KNOWN-FREE-AXIOM-SETS 0), INIT-AXSET,
          PRINT-AXIOM-SET, REMOVE-DEFAULT-AXSET

-------------------------------------------------------------------

  KB-PROCESSOR-CORE             symbol

     used by: IS-ACTIVATED-KB, SEARCH-FOR-KB, USE-OLD-KB?

-------------------------------------------------------------------

  KEYWORDP                      symbol

     used by: IS-FACET, IS-USER-DEFINED-METHOD

-------------------------------------------------------------------

  KNOWLEDGE-BASE-STOP-TAG       symbol

     used by: (:METHOD KB-PROCESSOR-CORE :START), STOP-KB-EXECUTION

-------------------------------------------------------------------

  LENGTH-ERROR                  symbol

     used by: MAKE-GLOBAL-VALUE-ASS, MAKE-LOCAL-VALUE-ASS

-------------------------------------------------------------------

  LET                           symbol

     used by: DEFBABYLON-ENTRY, DEFPROLOG-TRACE-METHODS,
          GET-CURR-METHOD, GET-PROVE-METHOD, RESET-INSTANCE,
          SET-INSTANCE-POINTER

-------------------------------------------------------------------

  LIST                          symbol

     used by: ADD-PRED, COMPUTE-LIST-EXPR, COMPUTE-SLOTS,
          DEF-KB-INSTANCE, DEFINE-POSSIBLE-VALUES-METHOD,
          (:METHOD FRAME-CORE :PROMPT-FOR-VALUE),
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE),
          MAKE-SIMPLE-VAL-ASSOC, MAKE-SLOT-REF, MAKE-TRACE-ELEM,
          USE-KB-INSTANCE

-------------------------------------------------------------------

  LISTP                         symbol

     used by: PROLOG-TYPE, RULE-REFERENCE-TYPE

-------------------------------------------------------------------

  LOCAL-CONSISTENCY             symbol

     used by: (:METHOD BASIC-CONSTRAINT-MIXIN :PRINT-ENTER),
          (:METHOD BASIC-CONSTRAINT-MIXIN :PRINT-EXIT),
          (:METHOD CONSTRAINT :ACTIVATE),
          (:METHOD CONSTRAINT-NET :ACTIVATE),
          (:METHOD CONSTRAINT-NET :FILTER),
          (:METHOD CONSTRAINT-NET :RESULT),
          DETERMINE-CONSISTENCY-LEVEL,
          (:METHOD RESTRICTION-NET :DEMON),
          (:METHOD RESTRICTION-NET :FILTER-POSSIBLE-VALUES),
          (:METHOD RESTRICTION-NET :GET-STABLE-STATE),
          SATISFY-CONSTRAINT-LOCALLY,
          VALUE-ASSIGNMENT-TO-BOOLEAN-VALUE

-------------------------------------------------------------------

  MAKE-PACKAGE                  symbol

     used by: DEF-KB-INSTANCE, USE-KB-INSTANCE

-------------------------------------------------------------------

  MEMBER                        symbol

     used by: CHECK-FOR-EQUAL-RELATION, GET-SLOT-PLIST

-------------------------------------------------------------------

  MODE-ERROR-FSTR               symbol

     used by: <--, (:METHOD FRAME-CORE :SLOT-MESSAGE),
          (:METHOD FRAME-INTERPRETER :EVAL-REFERENCE)

-------------------------------------------------------------------

  MULTIPLE-VALUED               symbol

     used by: (:METHOD CONSTRAINT-NET :CONSISTENT-P),
          STATE-OF-NET-SPEC, STATE-OF-VALUE-ASS

-------------------------------------------------------------------

  NO-EVAL                       symbol

     used by: CHOOSE-VALUE-SPEC, CONVERT-TO-CONSAT-VALUE

-------------------------------------------------------------------

  NO-SELECT                     symbol

     used by: CONSTRAINT-INPUT-TEST, DISPLAY-CONSTRAINT,
          READ-CONSTRAINT, SATISFY-CONSTRAINT-GLOBALLY,
          SATISFY-CONSTRAINT-LOCALLY, TRACE-CONSTRAINTS

-------------------------------------------------------------------

  NORMAL                        symbol

     used by: (:METHOD BASIC-GOALBOX :PROVE-ASSERTA),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTZ),
          (:METHOD BASIC-GOALBOX :PROVE-ASSUME),
          (:METHOD BASIC-GOALBOX :PROVE-BAGOF),
          (:METHOD BASIC-GOALBOX :PROVE-CLAUSE),
          (:METHOD BASIC-GOALBOX :PROVE-IS),
          (:METHOD BASIC-GOALBOX :PROVE-LISP),
          (:METHOD BASIC-GOALBOX :PROVE-RETRACT),
          (:METHOD BASIC-GOALBOX :PROVE-TYPE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-EQUAL),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-IS),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-LISP),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NOEQUAL),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NORMAL-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NORMAL-BEFORE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-READ),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TOP-BEFORE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TRY-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TRY-BEFORE),
          (:METHOD PROC-EXPLAIN-MIXIN :EXPLAIN-KONTEXT),
          (:METHOD PROC-EXPLAIN-MIXIN :WHY-GOAL),
          REST-SUBST-PROLOG-VARS, SUBST-PROLOG-VARS

-------------------------------------------------------------------

  NOT                           symbol

     used by: /==, =/=, INST-ASSIGNMENT-P, IS-NEGATED-TERM

-------------------------------------------------------------------

  OF                            symbol

     used by: CHECK-INSTANCE-DEFINITION,
          (:METHOD FRAME-BASE :NEW-INSTANCE),
          (:METHOD FRAME-BASE :NEW-UNNAMED-INSTANCE)

-------------------------------------------------------------------

  OPTIONS                       symbol

     used by: CHECK-FRAME-DEFINITION,
          (:METHOD FRAME-BASE :NEW-FRAME-FORM)

-------------------------------------------------------------------

  OR                            symbol

     used by: CHECK-FOR-EQUAL-RELATION, COMPILE-CONDITION,
          DEF-KB-CONFIGURATION, DEF-KB-INSTANCE,
          DEFINE-POSSIBLE-VALUES-METHOD, GET-CURR-METHOD-FOR-PRED,
          GET-METHOD-FOR-PRED, LISP-TYPE, PROLOG-TYPE,
          (:METHOD RULE-INTERPRETER :VARIABLE-OR-FORWARD),
          USE-KB-INSTANCE

-------------------------------------------------------------------

  POSSIBLE-ANSWERS              symbol

     used by: NORMALIZE-ANSWER, TRANSLATE-ANSWER

-------------------------------------------------------------------

  PREDS                         symbol

     used by: (:METHOD AX-DEVELOP-MIXIN :INSPECT-AXIOMS),
          (:METHOD BASIC-GOALBOX :PROVE-ABOLISH), GET-PREDICATES,
          INIT-AXSET, PRINT-AXIOM-SET, PROLOG-ASSERT, REM-CLAUSE,
          REMOVE-ALL-CLAUSES, REMOVE-DEFAULT-AXSET

-------------------------------------------------------------------

  PRIMITIVE                     symbol

     used by: (:METHOD BASIC-CONSTRAINT-MIXIN :READ),
          (:METHOD CONSTRAINT-BASE :NEW&DELETE), DEFCONSTRAINT,
          TRANSFORM-CONSTRAINT-TYPE

-------------------------------------------------------------------

  PRINT-RULE                    symbol

     used by: GENERATE-HOW-MENU-ITEMS,
          (:METHOD RULE-EXPLAIN-MIXIN :ASK-FOR-HOW)

-------------------------------------------------------------------

  PROGN                         symbol

     used by: DEF-KB-CONFIGURATION, DEFINE-POSSIBLE-VALUES-METHOD,
          DEFINE-RELATION-METHOD, DEFJUNCTOR, DEFPROLOG-METHOD,
          DEFPROLOG-TRACE-METHODS,
          (:METHOD FRAME-BASE :NEW-BEHAVIOR-FORM),
          (:METHOD FRAME-BASE :NEW-FRAME-FORM), GET-SLOT-PLIST,
          (:METHOD KB-PROCESSOR-CORE :START-EXECUTION),
          KNOWLEDGE-BASE, LISP, REM-CLAUSES, RESET-INSTANCES, SETVAR

-------------------------------------------------------------------

  PROLOG-IO-TABLE               symbol

     used by: (:METHOD AX-DEVELOP-MIXIN :INSPECT-AXIOMS),
          (:METHOD AX-DEVELOP-MIXIN :MOM-SHOW-PREMISE),
          (:METHOD AXSET-BASIC :ADDAX),
          (:METHOD AXSET-BASIC :KB-INFORM),
          (:METHOD AXSET-BASIC :PRINT),
          (:METHOD AXSET-BASIC :USE-AXIOM-SETS),
          (:METHOD BASIC-GOALBOX :ABORT),
          (:METHOD BASIC-GOALBOX :PROVE-ABOLISH),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTA),
          (:METHOD BASIC-GOALBOX :PROVE-ASSERTZ),
          (:METHOD BASIC-GOALBOX :PROVE-ASSUME),
          (:METHOD BASIC-GOALBOX :PROVE-CALL),
          (:METHOD BASIC-GOALBOX :PROVE-CALLPRED),
          (:METHOD BASIC-GOALBOX :PROVE-CLAUSE),
          (:METHOD BASIC-GOALBOX :PROVE-RETRACT),
          (:METHOD BASIC-GOALBOX :PROVE-VAR),
          (:METHOD BASIC-GOALBOX :PROVE-VARPRED),
          (:METHOD BASIC-PROLOG-MIXIN :ASK-SET-GOAL),
          (:METHOD BASIC-PROLOG-MIXIN :DISPLAY-RESULT),
          (:METHOD BASIC-PROLOG-MIXIN :EVAL-GOAL),
          (:METHOD BASIC-PROLOG-MIXIN :LIST-PREDICATE),
          (:METHOD BASIC-PROLOG-MIXIN :PROVE-DISPLAY),
          (:METHOD BASIC-PROLOG-MIXIN :READ-CLAUSES),
          (:METHOD BASIC-PROLOG-MIXIN :SELECT-AXSET-NAME),
          (:METHOD BASIC-PROLOG-MIXIN :SELECT-FORMAT),
          (:METHOD BASIC-PROLOG-MIXIN :SELECT-LIST-PREDICATE),
          (:METHOD BASIC-PROLOG-MIXIN :SHOW-AXIOMS),
          (:METHOD BASIC-PROLOG-MIXIN :SHOW-FORM),
          (:METHOD BASIC-PROLOG-MIXIN :SHOW-VARS), EXCEPTION-COMMENT,
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-ABOLISH),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-ASSERT),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-ASSUME),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-CUT),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-EQUAL),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-EXT-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-FAIL),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-FORMAT),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-IS),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-LISP),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NOEQUAL),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NORMAL-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-NORMAL-BEFORE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-READ),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-REPEAT),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TOP-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TOP-BEFORE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TRY-AFTER),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TRY-BEFORE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-TYPE),
          (:METHOD GOALBOX-TRACE-MIXIN :TRACE-WRITE),
          KNOWN-AXIOM-SET,
          (:METHOD MINI-PROLOG-MIXIN :SELECT-PREDS-FOR-TRACING),
          (:METHOD MINI-PROLOG-MIXIN :SELECT-PREDS-TO-TOGGLE),
          (:METHOD MINI-PROLOG-MIXIN :SET-PROLOG-TRACE-OPTIONS),
          (:METHOD MINI-PROLOG-MIXIN :SHOW-TRACE-STATUS),
          NORMALIZE-CLAUSE,
          (:METHOD PROC-EXPLAIN-MIXIN :EXPLAIN-KONTEXT),
          (:METHOD PROC-EXPLAIN-MIXIN :WHY-GOAL),
          (:METHOD PROC-SC-MIXIN :RETURN-FORM),
          (:METHOD PROC-SC-MIXIN :RETURN-RESULT),
          (:METHOD PROC-SC-MIXIN :RETURN-VARS),
          (:METHOD PROLOG-INTERPRETER :PROVE-RETURN),
          (:METHOD PROLOG-INTERPRETER :WHY), RESET-AXIOM-SET,
          WARN-IF-NO-PROLOG

-------------------------------------------------------------------

  PROLOG-METHOD                 symbol

     used by: (:METHOD BASIC-GOALBOX :PROVE-GOAL),
          DEFPROLOG-TRACE-METHODS, EXCEPTION-COMMENT, UNMARK-PRED

-------------------------------------------------------------------

  PUSH                          symbol

     used by: DEFPROLOG-METHOD, SETVAR

-------------------------------------------------------------------

  QUOTE                         symbol

     used by: /==, <--, ==, ?-, ASSERTA, ASSERTZ,
          (:METHOD BASIC-GOALBOX :PROVE-FORMAT), COMPUTE-SLOTS,
          COMPUTE-SLOTS2, DEF-KB-CONFIGURATION, DEF-KB-INSTANCE,
          DEFAXIOM-SET, DEFBABYLON-ENTRY, DEFBABYLON-TABLE,
          DEFCLAUSES, DEFCONSTRAINT, DEFINE-POSSIBLE-VALUES-METHOD,
          DEFINE-RELATION-METHOD, DEFINSTANCE, DEFJUNCTOR,
          DEFPROLOG-METHOD, DEFPROLOG-TRACE-METHODS, DEFREQUEST,
          DEFRESTRICTION, DEFRULE-SET,
          (:METHOD FRAME-BASE :NEW-BEHAVIOR-FORM),
          (:METHOD FRAME-BASE :NEW-FRAME-FORM), GET-STRING, GETENTRY,
          GETENTRY2, HYPOTHESES, INSTRUCTIONS, IS-ENTRY,
          KNOWLEDGE-BASE, RESET-INSTANCE, SATISFIED-P, SATISFY,
          SET-INSTANCE-POINTER, SUBSTITUTE-IF-POSSIBLE,
          SUBSTITUTE-O-AND-S, USE-KB-INSTANCE

-------------------------------------------------------------------

  REMPROP                       symbol

     used by: REM-CLAUSES, REM-PREDS

-------------------------------------------------------------------

  REST                          symbol

     used by: CLAUSE-TYPE, GET-RULE-ACTIONS, GET-RULE-CONDITIONS,
          NEXT-INST-ASSIGNMENT, RULE-BODY

-------------------------------------------------------------------

  RULE-INTERPRETER-STOP-TAG     symbol

     used by: (:METHOD RULE-INTERPRETER :START-FORWARD),
          (:METHOD RULE-INTERPRETER :TEST-HYPOTHESES),
          STOP-EXECUTION

-------------------------------------------------------------------

  RULE-IO-TABLE                 symbol

     used by: (:METHOD BASIC-RULE-MIXIN :BEFORE :ADD-TO-RULES),
          (:METHOD BASIC-RULE-MIXIN :EVAL-RULE-META-REFERENCE-FOR-
PROLOG),
          (:METHOD BASIC-RULE-MIXIN :OBTAIN),
          (:METHOD BASIC-RULE-MIXIN :SELECT-LIST-RULE),
          (:METHOD BASIC-RULE-MIXIN :SELECT-RULE-SET-NAME),
          (:METHOD BASIC-RULE-MIXIN :TEST-HYPOTHESES),
          CHECK-BINDINGS, CHECK-RULE-SET-SYNTAX,
          CHECK-RULE-SET-VARIABLES-SPECIFICATION, CHECK-RULE-SYNTAX,
          (:METHOD DATA-BASE :ASK-USER),
          (:METHOD DATA-BASE :PRINT-HYPOTHESES-VERIFIED),
          (:METHOD DATA-BASE :PRINT-TRUE-FACTS),
          GENERATE-HOW-MENU-ITEMS, GET-OP-DEF,
          MAKE-FULL-RULE-EXAMPLE, MAKE-LHS-EXAMPLE, MAKE-RHS-EXAMPLE,
          MAKE-RULE-HEADER,
          (:METHOD MINI-RULE-MIXIN :DISPLAY-RULE-TRACE),
          (:METHOD MINI-RULE-MIXIN :DISPLAY-TRACE-ELEMENT),
          (:METHOD MINI-RULE-MIXIN :SELECT-RULES-FOR-TRACING),
          (:METHOD MINI-RULE-MIXIN :SELECT-RULES-TO-TOGGLE),
          (:METHOD MINI-RULE-MIXIN :SET-RULE-TRACE-OPTIONS),
          (:METHOD RULE-BASE :GET-RULE-SET),
          (:METHOD RULE-BASE :MODIFY-RULE),
          (:METHOD RULE-BASE :RULE-STATISTICS),
          (:METHOD RULE-BASE :UNPARSE-RULES),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-RULES-FOR-TERM),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-TERMS-FOR-INSPECTION),
          (:METHOD RULE-DEVELOP-MIXIN :DISPLAY-TERMS-FOR-
INSPECTION2),
          (:METHOD RULE-DEVELOP-MIXIN :FILTER-TERMS),
          (:METHOD RULE-DEVELOP-MIXIN :INSPECT-TERMS),
          (:METHOD RULE-DEVELOP-MIXIN :INSPECT-TERMS2),
          (:METHOD RULE-DEVELOP-MIXIN :PRINT-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-RULE),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-RULE-SET),
          (:METHOD RULE-DEVELOP-MIXIN :SELECT-TERM),
          (:METHOD RULE-EXPLAIN-MIXIN :DISPLAY-TERM-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :DISPLAY-UNPROVABLE-TERM-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-ACTION),
          (:METHOD RULE-EXPLAIN-MIXIN :EXPLAIN-PREMISE),
          (:METHOD RULE-EXPLAIN-MIXIN :GET-INPUT-TYPE),
          (:METHOD RULE-EXPLAIN-MIXIN :HOW),
          (:METHOD RULE-EXPLAIN-MIXIN :TRANSLATE-STATUS-INTO-STRING),
          (:METHOD RULE-EXPLAIN-MIXIN :WHICH-FACT),
          (:METHOD RULE-EXPLAIN-MIXIN :WHY),
          (:METHOD RULE-TRACE-MIXIN :DISPLAY-TRACED-RULE),
          (:METHOD RULE-TRACE-MIXIN :NEEDED-TO-SHOW)

-------------------------------------------------------------------

  RULE-SET-NAME-ERROR-FSTR      symbol

     used by: (:METHOD BASIC-RULE-MIXIN :BEFORE :ADD-TO-RULES),
          CHECK-RULE-SET-SYNTAX

-------------------------------------------------------------------

  RULE-SET-NAME-ERROR-SPOT-FSTR  symbol

     used by: (:METHOD BASIC-RULE-MIXIN :BEFORE :ADD-TO-RULES),
          CHECK-RULE-SET-SYNTAX

-------------------------------------------------------------------

  SECOND                        symbol

     used by: FRAME-TYPE, GET-EXPRESSIONS, GET-SIMPLE-VALUE,
          GET-SLOT-OF-SLOT-REF, GET-TRACE-VALUE-ASS, GET-TUPEL,
          INST-ASSIGNMENT-P

-------------------------------------------------------------------

  SELF                          symbol

     used by: $SETF-VALUE, $VALUE,
          (:PROPERTY $VALUE SYS::SETF-METHOD), COMPUTE-LIST-EXPR,
          DEFPROLOG-TRACE-METHODS, GET-INSTANCE-OR-SELF,
          GET-SLOT-PLIST,
          (:METHOD KB-PROCESSOR-CORE :START-EXECUTION),
          SEND-TO-INSTANCE-OR-SELF, TESTIF, USETHEN

-------------------------------------------------------------------

  SETF                          symbol

     used by: ADD-PRED, ASSIGN-TYPEFKT, DEFBABYLON-ENTRY,
          DEFBABYLON-TABLE, DEFJUNCTOR, DEFPROLOG-METHOD,
          DEFPROLOG-TRACE-METHODS, DEFREQUEST,
          (:METHOD FRAME-BASE :NEW-FRAME-FORM), REM-PRED, SETVAR

-------------------------------------------------------------------

  SETQ                          symbol

     used by: DEF-KB-INSTANCE, SET-INSTANCE-POINTER

-------------------------------------------------------------------

  SHOW                          symbol

     used by: GET-RULE-MARK,
          (:METHOD MINI-RULE-MIXIN :SELECT-RULES-FOR-TRACING),
          (:METHOD MINI-RULE-MIXIN :SELECT-RULES-TO-TOGGLE),
          (:METHOD RULE-TRACE-MIXIN :MARK-RULE),
          (:METHOD RULE-TRACE-MIXIN :TOGGLE-RULES),
          TRACE-ELEMENT-TO-SHOW

-------------------------------------------------------------------

  SINGLE-VALUED                 symbol

     used by: (:METHOD CONSTRAINT-NET :CONSISTENT-P),
          (:METHOD CONSTRAINT-NET :TEST-CONSISTENCY-IF-SINGLE-
VALUED),
          STATE-OF-NET-SPEC, STATE-OF-VALUE-ASS

-------------------------------------------------------------------

  SLOTS                         symbol

     used by: CHECK-FRAME-DEFINITION,
          (:METHOD FRAME-BASE :NEW-FRAME-FORM), GET-FRAME-SLOTS,
          GET-SLOTS

-------------------------------------------------------------------

  STACK-ELEM                    symbol

     used by: COPY-STACK-ELEM, MAKE-STACK-ELEM, STACK-ELEM-P

-------------------------------------------------------------------

  STRING                        symbol

     used by: COMPLETE-TO-N, FORMAT-EXPECTATIONS, IS-VAR,
          MAKE-BLANKS, MAKE-REC-CLAUSE-ITEMS, MAKE-STRING-OF-LENGTH,
          (:METHOD MINI-PROLOG-MIXIN :SELECT-PREDS-FOR-TRACING),
          (:METHOD MINI-PROLOG-MIXIN :SELECT-PREDS-TO-TOGGLE),
          (:METHOD MINI-RULE-MIXIN :SELECT-RULES-FOR-TRACING),
          (:METHOD MINI-RULE-MIXIN :SELECT-RULES-TO-TOGGLE),
          PRINT-CLAUSES,
          (:METHOD RULE-EXPLAIN-MIXIN :DISPLAY-TERM-TREE),
          (:METHOD RULE-EXPLAIN-MIXIN :DISPLAY-UNPROVABLE-TERM-TREE)

-------------------------------------------------------------------

  SUPERS                        symbol

     used by: CHECK-FRAME-DEFINITION,
          (:METHOD FRAME-BASE :NEW-FRAME-FORM), GET-SUPERS

-------------------------------------------------------------------

  SYMBOLP                       symbol

     used by: IS-RULE-CLAUSE, IS-SIMPLE-CLAUSE, IS-VAR, LISP-TYPE,
          PROLOG-TYPE

-------------------------------------------------------------------

  THIRD                         symbol

     used by: FRAME-TYPE, GET-SET-OF-INSTANCES

-------------------------------------------------------------------

  TRACE-ELEMENT                 symbol

     used by: COPY-TRACE-ELEMENT, MAKE-TRACE-ELEMENT,
          TRACE-ELEMENT-P

-------------------------------------------------------------------

  UNCONSTRAINED                 symbol

     used by: ADJUST-VALUE-ASS, COMBINE-VALUES, COMPATIBLE-VALUE-P,
          CONSTRAINED-P, (:METHOD CONSTRAINT-NET :CONSISTENT-P),
          CONVERT-SIMPLE-TO-MULTIPLE, CONVERT-TO-CONSAT-VALUE,
          EXTENDED-INTERSECTION, EXTENDED-MEMBER,
          INTERSECT-ASSOCIATED-VALUE-SPECS, IS-VALUE-SPEC,
          MAKE-VAR-INFO, MORE-CONSTRAINED-P, NEW-ASSOCIATION,
          POSSIBLE-VALUES-TO-VALUE-SPEC, REPLACE-POSSIBLE-VALUES,
          REPLACE-SLOT-VALUE, RESET-VAR-INFO-VALUES,
          SELECT-RELEVANT-CONSTRAINTS, SLOT-VALUE-TO-VALUE-SPEC,
          SPLIT-AND-PUT-ASSOCIATION, STATE-OF-NET-SPEC,
          STATE-OF-VALUE-ASS, UNCONSTRAINED-P

-------------------------------------------------------------------

  UNKNOWN-AXSET-FSTR            symbol

     used by: (:METHOD AXSET-BASIC :USE-AXIOM-SETS), KNOWN-AXIOM-SET,
          RESET-AXIOM-SET

-------------------------------------------------------------------

  UNKNOWN-FRAME-ERROR-FSTR      symbol

     used by: GET-FRAME-NAME, GET-FRAME-NAME-WITH-CHECK

-------------------------------------------------------------------

  UNKNOWN-INSTANCE-ERROR-FSTR   symbol

     used by: GET-INSTANCE-NAME, GET-INSTANCE-NAME-WITH-CHECK

-------------------------------------------------------------------

  UNLESS                        symbol

     used by: DEF-KB-INSTANCE, DEFBABYLON-TABLE

-------------------------------------------------------------------

  VAR-INFO                      symbol

     used by: COPY-VAR-INFO, MAKE-VAR-INFO, VAR-INFO-P

-------------------------------------------------------------------

  VARCELL                       symbol

     used by: MAKE-VARCELL, VARCELL-P

-------------------------------------------------------------------

  WITH                          symbol

     used by: CHECK-INSTANCE-DEFINITION, REMOVE-NOISY-WORDS

-------------------------------------------------------------------

  YES                           symbol

     used by: (:METHOD FREE-TEXT-PROCESSOR :ASK-USER),
          (:METHOD FREE-TEXT-PROCESSOR :ASK-USER-WITHOUT-ADDING),
          IS-YES-LIST, (:METHOD PROC-SC-MIXIN :RETURN-VARS)

-------------------------------------------------------------------
