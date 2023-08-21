# BABYLON 2.2 Symbol Index

The following index includes all definitions of variables, structures, macros, functions, flavors, and methods in the kernel directory. It is noted in which subdirectory and which file the definition can be found.

The sorting is done alphabetically, with special characters such as `:` or `*` not being taken into account for the sorting order.

## Special Characters

`<-`, macro, ./frames/basic/fr-core

`<--`, macro, ./frames/basic/fr-core

`?-`, macro, ./prolog/basic/bp-mixin

`/==`, macro, ./prolog/basic/bp-preds

`=.=`, macro, ./prolog/basic/bp-preds

`=/=`, macro, ./prolog/basic/bp-preds

`=<`, macro, ./prolog/basic/bp-preds

`==`, macro, ./prolog/basic/bp-preds

## A

`abbreviated-condition`, function, ./consat/basic/cstrbase

`:abort`, method of basic-goalbox, ./prolog/basic/bp-preds

`:activate`, method of constraint, ./consat/basic/primcstr

`:activate`, method of constraint-net, ./consat/basic/net-prop

`:activate-and-adapt-result`, method of constraint-base, ./consat/basic/cstrbase

`:activate-interactive`, method of basic-constraint-mixin, ./consat/basic/bc-mixin

`activation-p`, function, ./consat/basic/primcstr

`active-value-frame-core`, flavor, ./frames/normal/nf-proc

`:active-value-get`, method of active-value-mixin, ./frames/normal/act-vals

`active-value-mixin`, flavor, ./frames/normal/act-vals

`:active-value-set`, method of active-value-mixin, ./frames/normal/act-vals

`adapt-consistency-level`, function, ./consat/basic/net-prop

`:adapt-to-local-consistency`, method of constraint-net, ./consat/basic/net-prop

`:add`, method of free-text-processor, ./freetext/ft-proc

`:add-as-negative`, method of data-base, ./rules/basic/data

`:add-as-positive`, method of data-base, ./rules/basic/data

`:add-as-unknown`, method of data-base, ./rules/basic/data

`:addax`, method of axset-basic, ./prolog/basic/axioms

`add-axioms`, function, ./prolog/basic/axioms

`:add-axiom-set`, method of basic-prolog-mixin, ./prolog/basic/bp-mixin

`:add-direct-deduced`, method of data-base, ./rules/basic/data

`:add-hypotheses-verified`, method of data-base, ./rules/basic/data

`add-instance-to-frame`, function, ./frames/basic/frames

`:add-operations`, method of basic-menu-item-handler, ./io/basic/b-mitem

`add-pred`, macro, ./prolog/basic/axioms

`:add-rule`, method of rule-base, ./rules/basic/rules

`:add-rule-tried`, method of data-base, ./rules/basic/data

`:add-rule-used`, method of data-base, ./rules/basic/data

`add-subframe`, function, ./frames/basic/frames

`:add-sub-operations`, method of basic-menu-item-handler, ./io/basic/b-mitem

`add-to-behaviors`, function, ./frames/basic/frames

`:add-to-frames`, method of basic-frame-mixin, ./frames/basic/bf-mixin

`:add-to-instances`, method of basic-frame-mixin, ./frames/basic/bf-mixin

`:add-to-rules`, :before method of basic-rule-mixin, ./rules/basic/br-mixin

`:add-to-rules`, method of basic-rule-mixin, ./rules/basic/br-mixin

`:add-unprovable`, method of data-base, ./rules/basic/data

`add-var-info-values`, function, ./consat/basic/cstrnet

`adjust-value-ass`, function, ./consat/basic/bc-fns

`admissible-net-p`, function, ./consat/normal/rstreval

`admissible-slot-value-p`, function, ./consat/normal/rstreval

`agenda-elem`, structure, ./consat/basic/cstrnet

`:all-answers`, method of prolog-interpreter, ./prolog/basic/bp-inter

`:and-backward`, method of rule-interpreter, ./rules/basic/br-inter

`:and-forward`, method of rule-interpreter, ./rules/basic/br-inter

:and-forward-asking-if-undetermined, method of rule-interpreter, ./rules/basic/`br-inter`

`:any-read-method`, method of poss-val-mixin, ./frames/mini/ask-supp

`:ask`, method of frame-core, ./frames/basic/fr-core

`:ask`, method of frame-interpreter, ./frames/basic/bf-inter

`:ask-eval-frame-reference`, method of basic-frame-mixin, ./frames/basic/bf-mixin

`:ask-for-how`, method of rule-explain-mixin, ./rules/normal/nr-expl

`:ask-for-slot-property`, method of frame-core, ./frames/basic/fr-core

`:ask-for-slot-value`, method of frame-core, ./frames/basic/fr-core

`:ask-for-slot-value`, method of poss-val-mixin, ./frames/mini/pos-vals

`:ask-for-slot-values`, method of frame-core, ./frames/basic/fr-core

`:ask-guided`, method of poss-val-mixin, ./frames/mini/pos-vals

`:ask-set-goal`, method of basic-prolog-mixin, ./prolog/basic/bp-mixin

`:ask-user`, :before method of rule-trace-mixin, ./rules/mini/mr-trace

`:ask-user`, method of data-base, ./rules/basic/data

`:ask-user`, method of free-text-mixin, ./freetext/ft-mixin

`:ask-user`, method of free-text-processor, ./freetext/ft-proc

`:ask-user-for-prolog`, method of free-text-mixin, ./freetext/ft-mixin

`:ask-user-without-adding`, method of free-text-processor, ./freetext/ft-proc

`:ask-with-help`, method of basic-frame-mixin, ./frames/basic/bf-mixin

`asserta`, macro, ./prolog/basic/axioms

`assert-axioms`, function, ./prolog/basic/axioms

`:assert-clauses`, method of basic-prolog-mixin, ./prolog/basic/bp-mixin

`assertz`, macro, ./prolog/basic/axioms

`assign-typefkt`, macro, ./common/c-fns

`augment-mult-choose-item-list`, function, ./io/basic/b-menu

`ax-develop-mixin`, flavor, ./prolog/normal/np-devel

`*axiom-sets*`, variable, ./common/vars

`axset-basic`, flavor, ./prolog/basic/axioms

## B

*bab-prompt*, variable, ./common/vars
bab-require, function, ./require
babylon, flavor, ./io/babylon/babylon
*babylon*, variable, ./common/vars
:babylon-format, method of basic-interface-mixin, ./io/basic/b-mixin
:babylon-format, method of basic-prolog-processor, ./prolog/basic/bp-proc
*babylon-module-search-path*, variable, ./require
:babylon-read, method of basic-prolog-processor, ./prolog/basic/bp-proc
*babylon-translations*, variable, ./require
*babylon-version*, variable, ./common/vars
basic-constraint-mixin, flavor, ./consat/basic/bc-mixin
basic-constraint-processor, flavor, ./consat/basic/bc-proc
basic-frame-mixin, flavor, ./frames/basic/bf-mixin
basic-frame-processor, flavor, ./frames/basic/bf-proc
basic-goalbox, flavor, ./prolog/basic/bp-preds
basic-interface-mixin, flavor, ./io/basic/b-mixin
basic-menu-item-handler, flavor, ./io/basic/b-mitem
basic-menu-loop, flavor, ./io/basic/b-mloop
basic-menu-mixin, flavor, ./io/basic/b-menu
basic-prolog-mixin, flavor, ./prolog/basic/bp-mixin
basic-prolog-processor, flavor, ./prolog/basic/bp-proc
basic-rule-mixin, flavor, ./rules/basic/br-mixin
basic-rule-processor, flavor, ./rules/basic/br-proc
basic-txsc-window, flavor, ./io/basic/b-txscw
body, macro, ./prolog/basic/axioms
build-constraint-trace-item-list, function, ./consat/mini/mc-mixin
build-explain-item-list, function, ./frames/mini/ask-supp
build-mult-choose-item-list, function, ./frames/mini/ask-supp
:bury, method of basic-txsc-window, ./io/basic/b-txscw

c

call-babylon, function, ./io/babylon/sys-core
call-kb, function, ./meta/kb-core
:call-rule-trace-displayer, method of mini-rule-mixin, ./rules/mini/mr-mixin
cc-load, function, ./require
check-bindings, function, ./rules/basic/rules
:check-correct-value, method of poss-val-mixin, ./frames/mini/pos-vals
check-for-clause, function, ./prolog/basic/bp-preds
check-for-equal-relation, macro, ./frames/basic/fr-core
:check-format-of-explain-answers, method of poss-val-mixin, ./frames/mini/pos-vals
check-frame-definition, function, ./frames/basic/frames
:check-init-value, method of active-value-mixin, ./frames/normal/act-vals
:check-init-value, method of poss-val-mixin, ./frames/mini/pos-vals
check-instance-definition, function, ./frames/basic/frames
check-rule-set-syntax, function, ./rules/basic/rules
check-rule-set-variables-specification, function, ./rules/basic/rules
check-rule-syntax, function, ./rules/basic/rules
:check-value, method of poss-val-mixin, ./frames/mini/pos-vals
:check-your-self, method of frame-core, ./frames/basic/fr-core
:check-your-self, method of poss-val-mixin, ./frames/mini/pos-vals
*c-help-key*, variable, ./common/vars
:choose-constraint, method of basic-constraint-mixin, ./consat/basic/bc-mixin
choose-constraint-trace-mode, function, ./consat/mini/mc-mixin
:choose-c-type, method of basic-constraint-mixin, ./consat/basic/bc-mixin
choose-element-type, function, ./consat/basic/bc-mixin
:choose-from-menu, method of basic-menu-mixin, ./io/basic/b-menu
:choose-kb, method of system-core, ./io/babylon/sys-core
choose-number-of-results, function, ./consat/basic/bc-mixin
choose-relation, function, ./consat/basic/bc-mixin
choose-special-constraint, function, ./consat/basic/bc-mixin
:choose-trace-mode, method of mini-constraint-mixin, ./consat/mini/mc-mixin
choose-value-assignment, function, ./consat/basic/bc-mixin
choose-value-spec, function, ./consat/basic/bc-mixin
:clause-trans-unify, :before method of prolog-trace-mixin, ./prolog/mini/mp-trace
:clause-trans-unify, method of proc-sc-mixin, ./prolog/basic/ax-sc
clause-type, macro, ./prolog/basic/axioms
:clause-used, method of basic-goalbox, ./prolog/normal/np-expl
:clear, method of basic-txsc-window, ./io/basic/b-txscw
:clear-menu, method of basic-menu-item-handler, ./io/basic/b-mitem
:close-menu, method of basic-menu-item-handler, ./io/basic/b-mitem
collect-clauses, function, ./prolog/basic/axioms
collect-results, function, ./io/basic/b-menu
collect-term-components, function, ./rules/normal/nr-devel
combine-two-alists, function, ./consat/basic/bc-fns
combine-values, function, ./consat/basic/bc-fns
combine-variable-alists, function, ./consat/basic/bc-fns
compatible-value-p, function, ./consat/basic/bc-fns
compile-condition, function, ./consat/basic/cstrbase
complete-to-n, function, ./common/c-fns
compute-list-expr, function, ./frames/basic/fr-core
compute-new-number-of-results, function, ./consat/basic/net-prop
compute-slot-names, function, ./frames/basic/frames
compute-slots, function, ./frames/basic/frames
compute-slots2, function, ./frames/basic/frames
compute-term, function, ./common/c-fns
:compute-tree, method of rule-explain-mixin, ./rules/normal/nr-expl
compute-used-slots, function, ./rules/normal/nr-devel
:compute-why-not-tree, method of rule-explain-mixin, ./rules/normal/nr-expl
:conclude, method of rule-interpreter, ./rules/basic/br-inter
:confirm, method of basic-interface-mixin, ./io/basic/b-mixin
cons-if-not-nil, function, ./consat/basic/bc-fns
:consistent-p, method of constraint-net, ./consat/basic/net-prop
consistent-value-ass-p, function, ./consat/basic/cstrnet
constrained-p, function, ./consat/basic/primcstr
constraint, flavor, ./consat/basic/primcstr
constraint-assoc-tracedp, function, ./consat/mini/mc-mixin
constraint-base, flavor, ./consat/basic/cstrbase
constraint-input-test, function, ./consat/basic/bc-mixin
constraint-net, flavor, ./consat/basic/cstrnet
constraint-trace-mixin, flavor, ./consat/mini/mc-trace
constraint-type, macro, ./consat/basic/bc-mixin
contains-vars, function, ./common/c-fns
:convert-sc-window-item, method of basic-txsc-window, ./io/basic/b-txscw
convert-simple-to-multiple, function, ./consat/basic/bc-fns
convert-to-consat-value, function, ./consat/basic/cstrbase
copy-possible-values, function, ./consat/normal/rstreval
:copy-possible-values, method of restriction-net, ./consat/normal/rstreval
copy-slot-value, function, ./consat/normal/rstreval
:copy-values, method of restriction-net, ./consat/normal/rstreval
:correct-restriction-net, method of restriction-net, ./consat/normal/restrict
create-instance-of, function, ./frames/basic/bf-mixin
create-net-spec, function, ./consat/basic/cstrnet
create-unnamed-instance, macro, ./frames/basic/bf-mixin
create-var-info-alist, function, ./consat/basic/cstrnet
current-kb-typep, function, ./common/c-fns
*current-knowledge-base*, variable, ./common/vars
current-p, function, ./common/c-fns
*current-ted*, variable, ./common/vars
:cut-reset, method of proc-sc-mixin, ./prolog/basic/ax-sc

d

data-base, flavor, ./rules/basic/data
decr-number-of-results, function, ./consat/basic/bc-fns
*default-dialog-stream*, variable, ./common/vars
:default-get-behavior, method of active-value-mixin, ./frames/normal/act-vals
*default-interface*, variable, ./common/vars
*default-kb-configuration*, variable, ./common/vars
*default-language*, variable, ./common/vars
*default-procs*, variable, ./common/vars
:default-put-behavior, method of active-value-mixin, ./frames/normal/act-vals
:default-read-method, method of poss-val-mixin, ./frames/mini/pos-vals
defaxiom-set, macro, ./prolog/basic/axioms
defbabylon-entry, macro, ./common/c-fns
defbabylon-table, macro, ./common/c-fns
defbabylon-translation, macro, ./require
defbehavior, macro, ./frames/basic/bf-mixin
defclauses, macro, ./prolog/basic/bp-mixin
defconstraint, macro, ./consat/basic/cstrbase
defframe, macro, ./frames/basic/bf-mixin
define-possible-values-behavior, macro, ./frames/mini/pos-vals
define-possible-values-method, macro, ./frames/mini/pos-vals
define-relation-behavior, macro, ./frames/basic/fr-core
define-relation-method, macro, ./frames/basic/fr-core
definstance, macro, ./frames/basic/bf-mixin
defjunctor, macro, ./rules/basic/br-inter
def-kb-configuration, macro, ./meta/kb-core
def-kb-instance, macro, ./meta/kb-core
defprolog-method, macro, ./prolog/basic/bp-preds
defprolog-trace-methods, macro, ./prolog/mini/mp-preds
defrelations, macro, ./prolog/basic/bp-mixin
defrequest, macro, ./common/c-fns
defrestriction, macro, ./consat/normal/rstrbase
defrule-set, macro, ./rules/basic/br-mixin
:delete, method of constraint-base, ./consat/basic/cstrbase
:delete-property, method of frame-core, ./frames/basic/fr-core
:delete-property, method of frame-interpreter, ./frames/basic/bf-inter
:delete-restrictions, method of restriction-base, ./consat/normal/rstrbase
:demon, method of restriction-net, ./consat/normal/rstreval
deref, function, ./prolog/basic/ax-sc
:describe-frame, method of basic-frame-mixin, ./frames/basic/bf-mixin
:describe-instance, method of basic-frame-mixin, ./frames/basic/bf-mixin
:describe-kb, method of kb-processor-core, ./meta/kb-core
:deselect-kb, method of kb-processor-core, ./meta/kb-core
determine-consistency-level, function, ./consat/basic/cstrbase
determine-net-variables, function, ./consat/basic/cstrnet
determine-number-of-results, function, ./consat/basic/cstrbase
determine-set-of-instances, function, ./consat/normal/rstrbase
determine-slots, function, ./consat/normal/rstrbase
difference-empty-p, function, ./consat/basic/bc-fns
diff-list, function, ./prolog/mini/mp-mixin
:display, method of basic-constraint-mixin, ./consat/basic/bc-mixin
display-constraint, function, ./consat/basic/bc-mixin
:display-named-rule, method of rule-develop-mixin, ./rules/normal/nr-devel
:display-predicate, method of ax-develop-mixin, ./prolog/normal/np-devel
:display-predicate, method of axset-basic, ./prolog/basic/bp-mixin
display-prooftree, function, ./prolog/normal/np-mixin
:display-prooftree, method of normal-prolog-mixin, ./prolog/normal/np-mixin
:display-result, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:display-rule, method of rule-develop-mixin, ./rules/normal/nr-devel
:display-rules-asking, method of mini-rule-mixin, ./rules/mini/mr-mixin
:display-rules-for-term, method of rule-develop-mixin, ./rules/normal/nr-devel
:display-rules-tried, method of mini-rule-mixin, ./rules/mini/mr-mixin
:display-rules-used, method of mini-rule-mixin, ./rules/mini/mr-mixin
:display-rule-trace, method of mini-rule-mixin, ./rules/mini/mr-mixin
:display-terms-for-inspection, method of rule-develop-mixin, ./rules/normal/nr-devel
:display-terms-for-inspection2, method of rule-develop-mixin, ./rules/normal/nr-devel
:display-term-tree, method of rule-explain-mixin, ./rules/normal/nr-expl
:display-traced-rule, method of rule-trace-mixin, ./rules/mini/mr-trace
:display-trace-element, method of mini-rule-mixin, ./rules/mini/mr-mixin
:display-unprovable-term-tree, method of rule-explain-mixin, ./rules/normal/nr-expl
:do-all, method of rule-interpreter, ./rules/basic/br-inter
:do-one, method of rule-interpreter, ./rules/basic/br-inter

e

empty-alist, function, ./consat/basic/bc-fns
*end-key*, variable, ./common/vars
enough-results, function, ./consat/basic/bc-fns
:eval, :before method of meta-processor-core, ./meta/m-mixin
:eval, method of kb-stub, ./meta/kb-stub
:eval, method of meta-processor-core, ./meta/m-mixin
:eval-behavior-reference, method of basic-frame-mixin, ./frames/basic/bf-mixin
eval-first-value-ass, function, ./consat/basic/cstrbase
:eval-frame-class-reference, method of basic-frame-mixin, ./frames/basic/bf-mixin
:eval-frame-meta-predicate-reference, method of basic-frame-mixin, ./frames/basic/bf-mixin
:eval-frame-predicate-reference, method of basic-frame-mixin, ./frames/basic/bf-mixin
:eval-frame-reference, method of basic-frame-mixin, ./frames/basic/bf-mixin
:eval-free-text, method of free-text-mixin, ./freetext/ft-mixin
:eval-free-text-for-prolog, method of free-text-mixin, ./freetext/ft-mixin
:eval-free-text-meta-predicate, method of free-text-mixin, ./freetext/ft-mixin
:eval-goal, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:eval-lisp, method of lisp-mixin, ./meta/l-mixin
eval-lisp-call, macro, ./prolog/basic/bp-preds
:eval-lisp-form-for-prolog, method of lisp-mixin, ./meta/l-mixin
:eval-prolog-frame-reference, method of basic-frame-mixin, ./frames/basic/bf-mixin
:eval-reference, method of frame-interpreter, ./frames/basic/bf-inter
:eval-rule-meta-reference-for-prolog, method of basic-rule-mixin, ./rules/basic/br-mixin
:eval-satisfied-p, method of basic-constraint-mixin, ./consat/basic/bc-mixin
:eval-satisfy, method of basic-constraint-mixin, ./consat/basic/bc-mixin
evaluate-condition, function, ./consat/basic/bc-mixin
:evaluate-expression, method of constraint, ./consat/basic/primcstr
:evaluate-expression, method of constraint-net, ./consat/basic/net-prop
:evaluate-expression, method of constraint-trace-mixin, ./consat/mini/mc-trace
evaluate-funcall, function, ./consat/basic/bc-mixin
evaluate-pattern, function, ./consat/basic/primcstr
evaluate-relation, function, ./consat/basic/primcstr
evaluate-relation-element, function, ./consat/basic/primcstr
evaluate-tupel, function, ./consat/basic/primcstr
eval-value-ass, function, ./consat/basic/cstrbase
exception-comment, function, ./prolog/normal/np-devel
exception-comment, function, ./prolog/normal/np-devel-rest
:execute, method of rule-interpreter, ./rules/basic/br-inter
:execute-ask, method of rule-interpreter, ./rules/basic/br-inter
execute-menu-action, function, ./io/basic/b-menu
:execute-operation, method of basic-menu-loop, ./io/basic/b-mloop
:exit-babylon, method of system-core, ./io/babylon/sys-core
:explain-action, method of rule-explain-mixin, ./rules/normal/nr-expl
explain-answers-choices, function, ./frames/mini/pos-vals
:explain-fact, method of rule-explain-mixin, ./rules/normal/nr-expl
:explain-kontext, method of proc-explain-mixin, ./prolog/normal/np-expl
:explain-premise, method of rule-explain-mixin, ./rules/normal/nr-expl
explain-results, function, ./rules/normal/nr-mixin
:explain-results, method of normal-rule-mixin, ./rules/normal/nr-mixin
:explain-results, method of rule-explain-mixin, ./rules/normal/nr-expl
:expose, method of basic-txsc-window, ./io/basic/b-txscw
extended-intersection, function, ./consat/basic/bc-fns
extended-member, function, ./consat/basic/bc-fns
external-value-ass-p, function, ./consat/basic/bc-mixin
ext-rep-clause, function, ./prolog/basic/axioms

f

:false, method of rule-interpreter, ./rules/basic/br-inter
:filter, method of constraint-net, ./consat/basic/net-prop
filter-first, function, ./rules/normal/nr-devel
filter-options, function, ./meta/kb-core
filter-plist, function, ./meta/kb-core
:filter-possible-values, method of restriction-net, ./consat/normal/rstreval
filter-second, function, ./rules/normal/nr-devel
:filter-terms, method of rule-develop-mixin, ./rules/normal/nr-devel
:filter-trace-list, method of rule-trace-mixin, ./rules/mini/mr-trace
:find-axiom-set, method of axset-basic, ./prolog/basic/axioms
find-implications, function, ./rules/basic/br-mixin
:find-implications, method of basic-rule-mixin, ./rules/basic/br-mixin
:find-matching-conclusions, method of rule-base, ./rules/basic/rules
find-translation, function, ./require
:first-answer, method of prolog-interpreter, ./prolog/basic/bp-inter
:first-fetch, method of active-value-mixin, ./frames/normal/act-vals
*first-ped-interface-call*, variable, ./common/vars
*font-menu*, variable, ./common/vars
:forget-state, method of constraint-net, ./consat/basic/net-prop
:format, method of basic-interface-mixin, ./io/basic/b-mixin
:format, method of basic-txsc-window, ./io/basic/b-txscw
format-expectations, function, ./frames/basic/fr-core
:format-trace, method of prolog-trace-mixin, ./prolog/mini/mp-trace
format-translate-true-or-false, function, ./freetext/ft-proc
frame-base, flavor, ./frames/basic/frames
frame-behaviors, macro, ./frames/basic/frames
frame-core, flavor, ./frames/basic/fr-core
frame-definition, macro, ./frames/basic/frames
frame-instances, macro, ./frames/basic/frames
frame-interpreter, flavor, ./frames/basic/bf-inter
*frame-meta-predicates*, variable, ./common/vars
frame-options, macro, ./frames/basic/frames
frame-slots, macro, ./frames/basic/frames
frame-subclasses, macro, ./frames/basic/frames
frame-supers, macro, ./frames/basic/frames
*free-text-meta-predicates*, variable, ./common/vars
free-text-mixin, flavor, ./freetext/ft-mixin
free-text-processor, flavor, ./freetext/ft-proc
free-text-type, macro, ./freetext/ft-mixin
:freeze-state, method of constraint-net, ./consat/basic/net-prop
freeze-var-info-values, function, ./consat/basic/cstrnet
from-list-to-string, function, ./common/c-fns
further-slot-restriction-p, function, ./consat/normal/rstreval

g

gen-choose-axioms-item-list, function, ./prolog/basic/bp-mixin
:generate-constraint-processor, method of basic-constraint-mixin, ./consat/basic/bc-mixin
:generate-constraint-processor, method of mini-constraint-mixin, ./consat/mini/mc-mixin
:generate-constraint-processor, method of normal-constraint-mixin, ./consat/normal/nc-mixin
generate-current-item-list, function, ./prolog/basic/bp-mixin
:generate-frame-processor, method of basic-frame-mixin, ./frames/basic/bf-mixin
:generate-frame-processor, method of mini-frame-mixin, ./frames/mini/mf-mixin
:generate-frame-processor, method of normal-frame-mixin, ./frames/normal/nf-mixin
:generate-free-text-processor, method of free-text-mixin, ./freetext/ft-mixin
generate-how-menu-items, function, ./rules/normal/nr-expl
:generate-prolog-processor, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:generate-prolog-processor, method of mini-prolog-mixin, ./prolog/mini/mp-mixin
:generate-prolog-processor, method of normal-prolog-mixin, ./prolog/normal/np-mixin
:generate-rule-processor, method of basic-rule-mixin, ./rules/basic/br-mixin
:generate-rule-processor, method of mini-rule-mixin, ./rules/mini/mr-mixin
:generate-rule-processor, method of normal-rule-mixin, ./rules/normal/nr-mixin
:generate-subgoal, method of basic-goalbox, ./prolog/basic/bp-preds
:generate-subgoals, method of basic-goalbox, ./prolog/basic/bp-preds
generic-expr-p, function, ./consat/normal/rstrbase
gen-mult-axset-item-list, function, ./prolog/basic/bp-mixin
gen-mult-choose-item-list, function, ./rules/normal/nr-devel
gen-varcell, macro, ./prolog/basic/ax-sc
gen-var-value-list, function, ./prolog/basic/ax-sc
:get, method of active-value-mixin, ./frames/normal/act-vals
:get, method of basic-constraint-processor, ./consat/basic/bc-proc
:get, method of constraint-base, ./consat/basic/cstrbase
:get, method of frame-core, ./frames/basic/fr-core
:get, method of frame-interpreter, ./frames/basic/bf-inter
:get, method of normal-constraint-processor, ./consat/normal/nc-proc
:get, method of restricted-slot, ./consat/normal/restrict
get-action-type, macro, ./rules/basic/rules
:get-all-facts, method of data-base, ./rules/basic/data
get-all-instances, function, ./frames/basic/frames
get-all-subframes, function, ./frames/basic/frames
get-all-supers, function, ./frames/basic/frames
:get-ask, method of basic-frame-mixin, ./frames/basic/bf-mixin
get-associated-constraints, function, ./consat/basic/cstrnet
:get-behavior, method of active-value-mixin, ./frames/normal/act-vals
get-bindings, function, ./rules/basic/rules
get-check-result, function, ./frames/mini/pos-vals
get-clauses, function, ./prolog/basic/axioms
:get-clauses, method of proc-sc-mixin, ./prolog/basic/ax-sc
get-clauses-direct, function, ./prolog/basic/axioms
get-condition, macro, ./consat/basic/bc-fns
get-constraint, function, ./consat/basic/cstrbase
get-constr-name, macro, ./consat/basic/bc-fns
:get-current, method of basic-goalbox, ./prolog/normal/np-expl
:get-current, method of proc-explain-mixin, ./prolog/normal/np-expl
:get-current-rule-set-name, method of rule-base, ./rules/basic/rules
get-curr-method, macro, ./prolog/mini/mp-preds
get-curr-method-for-pred, macro, ./prolog/mini/mp-preds
get-def-condition, function, ./consat/basic/cstrbase
get-def-expressions, function, ./consat/basic/cstrbase
get-def-interface, function, ./consat/basic/cstrbase
get-def-relation, function, ./consat/basic/cstrbase
get-def-typ, function, ./consat/basic/cstrbase
getentry, macro, ./common/c-fns
getentry2, macro, ./common/c-fns
get-expressions, macro, ./consat/basic/bc-fns
get-external-value-ass, function, ./consat/basic/cstrbase
get-frame-behaviors, function, ./frames/basic/frames
get-frame-behavior-specs, function, ./frames/basic/frames
get-frame-def, function, ./frames/basic/frames
\%get-frame-name, function, ./frames/basic/frames
get-frame-name, function, ./frames/basic/frames
get-frame-name-or-signal-error, function, ./frames/basic/frames
get-frame-name-with-check, function, ./frames/basic/frames
get-frame-slot-names, function, ./frames/basic/frames
get-frame-slots, function, ./frames/basic/frames
get-global-var, macro, ./consat/basic/bc-fns
:get-goal-on-init, method of basic-goalbox, ./prolog/normal/np-expl
get-guarded-slots, function, ./consat/normal/rstrbase
:get-indirect, method of active-value-mixin, ./frames/normal/act-vals
:get-initiale-state, method of constraint-net, ./consat/basic/net-prop
:get-input-type, method of rule-explain-mixin, ./rules/normal/nr-expl
get-instance, macro, ./frames/basic/frames
get-instance-combinations, function, ./consat/normal/rstrbase
get-instance-condition, function, ./consat/normal/rstrbase
get-instance-def, function, ./frames/basic/frames
get-instance-list, function, ./frames/basic/frames
get-instance-name, function, ./frames/basic/frames
get-instance-name-with-check, function, ./frames/basic/frames
get-instance-or-self, macro, ./frames/basic/frames
get-instance-with-check, macro, ./frames/basic/frames
get-inst-assignment, macro, ./consat/normal/rstrbase
get-interface-mixins-to-include, function, ./meta/kb-core
get-junctor, macro, ./rules/basic/rules
get-kb-configuration, function, ./meta/kb-core
get-keyword, macro, ./consat/basic/bc-fns
get-known-axiom-sets, function, ./prolog/basic/axioms
get-known-free-axiom-sets, function, ./prolog/basic/axioms
:get-known-knowledge-bases, method of system-core, ./io/babylon/sys-core
:get-last-status, method of rule-explain-mixin, ./rules/normal/nr-expl
:get-last-status-identifier, method of rule-explain-mixin, ./rules/normal/nr-expl
get-list-of-choices, function, ./consat/basic/bc-mixin
get-local-condition, function, ./consat/basic/cstrbase
get-local-var, macro, ./consat/basic/bc-fns
:get-menu-keys, method of basic-menu-item-handler, ./io/basic/b-mitem
get-method-for-pred, macro, ./prolog/basic/bp-preds
get-name-of-c-assoc, macro, ./consat/basic/bc-fns
get-negation, function, ./common/c-fns
get-net-var, macro, ./consat/basic/cstrnet
\%get-object-name, function, ./frames/basic/frames
get-object-of-c-assoc, macro, ./consat/basic/bc-fns
get-object-of-slot-ref, macro, ./consat/normal/restrict
get-op-def, function, ./rules/basic/br-inter
:get-operation, method of basic-menu-loop, ./io/basic/b-mloop
get-parameters, macro, ./consat/basic/bc-fns
get-positive-term, function, ./common/c-fns
get-poss-val-args, function, ./frames/mini/pos-vals
get-poss-val-type, function, ./frames/mini/pos-vals
get-predicates, function, ./prolog/basic/axioms
get-preds, macro, ./prolog/basic/axioms
:get-preds-with-mark, method of prolog-trace-mixin, ./prolog/mini/mp-trace
get-proc-mixins-to-include, function, ./meta/kb-core
:get-properties, method of frame-core, ./frames/basic/fr-core
get-protected-slots, function, ./consat/normal/rstrbase
get-prove-method, macro, ./prolog/basic/bp-preds
:get-read-method, method of poss-val-mixin, ./frames/mini/pos-vals
get-restrictions, function, ./consat/normal/rstrbase
:get-restrictions, method of restriction-base, ./consat/normal/rstrbase
:get-rule, method of rule-base, ./rules/basic/rules
get-rule-actions, macro, ./rules/basic/rules
get-rule-conditions, macro, ./rules/basic/rules
get-rule-mark, function, ./rules/mini/mr-trace
:get-rule-names, method of rule-base, ./rules/basic/rules
:get-rule-set, method of rule-base, ./rules/basic/rules
:get-rule-set-names, method of rule-base, ./rules/basic/rules
get-rule-set-variables, function, ./rules/basic/rules
:get-rules-with-mark, method of rule-trace-mixin, ./rules/mini/mr-trace
get-set-of-instances, macro, ./consat/normal/rstrbase
get-simple-value, macro, ./consat/basic/bc-fns
get-slot-of-slot-ref, macro, ./consat/normal/restrict
get-slot-of-term, function, ./rules/normal/nr-devel
get-slot-refs, function, ./consat/normal/rstrbase
get-slots, function, ./frames/basic/fr-core
get-special-mixins-to-include, function, ./meta/kb-core
:get-stable-state, method of restriction-net, ./consat/normal/rstreval
:get-status, method of rule-explain-mixin, ./rules/normal/nr-expl
get-string, macro, ./common/c-fns
get-subframes, function, ./frames/basic/frames
get-subgoal-predicates, function, ./prolog/basic/axioms
:get-sub-menu, method of basic-menu-item-handler, ./io/basic/b-mitem
get-supers, function, ./frames/basic/frames
get-trace-constr, macro, ./consat/basic/bc-fns
get-trace-value-ass, macro, ./consat/basic/bc-fns
:get-true-facts, method of data-base, ./rules/basic/data
:get-true-facts-for, method of free-text-processor, ./freetext/ft-proc
get-tupel, macro, ./consat/basic/bc-fns
:get-type, method of ,flavor-name, ./meta/kb-core
get-uninstantiated-restriction, function, ./consat/normal/rstrbase
:get-unprovable-facts, method of data-base, ./rules/basic/data
get-value, macro, ./frames/basic/fr-core
get-value-of-referenced-slot, function, ./consat/normal/rstreval
get-value-only, function, ./frames/basic/fr-core
:get-value-only, method of frame-core, ./frames/basic/fr-core
:get-value-only, method of frame-interpreter, ./frames/basic/bf-inter
get-value-spec, macro, ./consat/basic/bc-fns
get-var, macro, ./consat/basic/bc-fns
get-variables, function, ./rules/basic/rules
get-var-info, macro, ./consat/basic/cstrnet
get-var-info-constraints, function, ./consat/basic/cstrnet
get-var-info-values, function, ./consat/basic/cstrnet
get-var-of-inst-ass, macro, ./consat/normal/rstrbase
global-to-local, function, ./consat/basic/net-prop
:global-trace-status, method of kb-processor-core, ./meta/kb-core
goalbox-sc-mixin, flavor, ./prolog/basic/ax-sc
goalbox-trace-mixin, flavor, ./prolog/mini/mp-preds

h

has-condition-p, function, ./consat/basic/cstrbase
head, macro, ./prolog/basic/axioms
:help, method of meta-processor-core, ./meta/m-mixin
*help-key*, variable, ./common/vars
:how, method of rule-explain-mixin, ./rules/normal/nr-expl
:how-ultimately, method of rule-explain-mixin, ./rules/normal/nr-expl
hypotheses, macro, ./rules/basic/br-mixin

i

:inif, method of rule-base, ./rules/basic/rules
:init, :after method of basic-constraint-mixin, ./consat/basic/bc-mixin
:init, :after method of basic-frame-mixin, ./frames/basic/bf-mixin
:init, :after method of basic-interface-mixin, ./io/basic/b-mixin
:init, :after method of basic-menu-item-handler, ./io/basic/b-mitem
:init, :after method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:init, :after method of basic-rule-mixin, ./rules/basic/br-mixin
:init, :after method of frame-core, ./frames/basic/fr-core
:init, :after method of free-text-mixin, ./freetext/ft-mixin
:init, :after method of meta-processor-core, ./meta/m-mixin
:init, :after method of mini-frame-processor, ./frames/mini/mf-proc
:init, :after method of normal-frame-processor, ./frames/normal/nf-proc
:init, :after method of normal-prolog-processor, ./prolog/normal/np-proc
:init, :after method of rule-trace-mixin, ./rules/mini/mr-trace
:init-all-slots, method of frame-core, ./frames/basic/fr-core
init-axset, function, ./prolog/basic/axioms
:initialize, method of constraint-net, ./consat/basic/net-prop
:initialize, method of frame-core, ./frames/basic/fr-core
:initialize, method of kb-processor-core, ./meta/kb-core
:initialize-agenda, method of constraint-net, ./consat/basic/net-prop
:initialize-variables, method of constraint-net, ./consat/basic/net-prop
:init-kbaxset, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:init-slot, method of active-value-mixin, ./frames/normal/act-vals
:init-slot, method of frame-core, ./frames/basic/fr-core
:init-slot, method of poss-val-mixin, ./frames/mini/pos-vals
:init-slot-state, method of restriction-net, ./consat/normal/rstreval
init-var-info-values, function, ./consat/basic/cstrnet
:inspect-axioms, method of ax-develop-mixin, ./prolog/normal/np-devel
:inspect-frame, method of frame-base, ./frames/basic/frames
:inspect-frames, method of basic-frame-mixin, ./frames/basic/bf-mixin
:inspect-instance, method of frame-base, ./frames/basic/frames
:inspect-instances, method of basic-frame-mixin, ./frames/basic/bf-mixin
:inspect-terms, method of normal-rule-mixin, ./rules/normal/nr-mixin
:inspect-terms, method of rule-develop-mixin, ./rules/normal/nr-devel
:inspect-terms2, method of rule-develop-mixin, ./rules/normal/nr-devel
\$inst, macro, ./frames/basic/frames
install-subframe, function, ./frames/basic/frames
instance-definition, macro, ./frames/basic/frames
instantiate-pattern, macro, ./rules/basic/br-inter
instantiate-restrictions, function, ./consat/normal/rstrbase
instantiate-slots, function, ./consat/normal/rstrbase
inst-assignment-p, macro, ./consat/normal/rstrbase
inst-generic-restriction, function, ./consat/normal/rstrbase
inst-restriction, function, ./consat/normal/rstrbase
instructions, macro, ./meta/kb-core
inst-simple-restriction, function, ./consat/normal/rstrbase
inst-slot-ref, function, ./consat/normal/rstrbase
inst-slot-ref-list, function, ./consat/normal/rstrbase
inst-slot-set, function, ./consat/normal/rstrbase
inst-uninstantiated-restriction, function, ./consat/normal/rstrbase
:interface-assignment, method of constraint-net, ./consat/basic/net-prop
:internal-properties, method of frame-core, ./frames/basic/fr-core
internal-relation-name, function, ./frames/basic/fr-core
intersect-associated-value-specs, function, ./consat/basic/net-prop
intersect-sets, function, ./consat/basic/bc-fns
:inthen, method of rule-base, ./rules/basic/rules
:in-then-part, :before method of rule-trace-mixin, ./rules/mini/mr-trace
:in-then-part, method of rule-interpreter, ./rules/basic/br-inter
is-activated-kb, function, ./meta/kb-core
is-active-value, function, ./frames/normal/act-vals
\%is-behavior, function, ./frames/basic/bf-mixin
is-bindings, function, ./rules/basic/rules
is-bound, macro, ./prolog/basic/ax-sc
is-call, macro, ./prolog/normal/np-expl-rest
is-callpred, macro, ./prolog/normal/np-expl-rest
:is-defined-p, method of restriction-base, ./consat/normal/rstrbase
is-entry, macro, ./common/c-fns
is-equality-relation, function, ./frames/basic/fr-core
is-facet, macro, ./frames/basic/frames
is-fact, macro, ./prolog/basic/axioms
\%is-frame, function, ./frames/basic/frames
is-frame, function, ./frames/basic/frames
is-frame-meta-predicate, function, ./frames/basic/bf-mixin
\%is-frame-name, function, ./frames/basic/bf-mixin
is-free-text-meta-predicate, function, ./freetext/ft-mixin
is-help, function, ./common/c-fns
is-in-interval, function, ./frames/basic/fr-core
\%is-instance, function, ./frames/basic/frames
is-instance, function, ./frames/basic/frames
\%is-instance-name, function, ./frames/basic/bf-mixin
is-interval-specification, function, ./frames/basic/fr-core
is-kb-axiom-set, function, ./prolog/normal/np-devel-rest
is-liste, function, ./consat/basic/cstrbase
is-method-of, function, ./frames/mini/pos-vals
is-multiple-answer, function, ./common/c-fns
is-multiple-value, function, ./common/c-fns
is-negated-term, function, ./common/c-fns
is-path, macro, ./frames/basic/frames
is-prolog-junctor-for-rules, function, ./prolog/basic/bp-mixin
is-rest-bound, macro, ./prolog/basic/ax-sc
is-rule-clause, macro, ./prolog/basic/axioms
is-rule-meta-predicate, function, ./rules/basic/br-mixin
is-rule-set-with-variables, function, ./rules/basic/rules
is-rule-variable, function, ./rules/basic/rules
is-setf-\$value-form, macro, ./frames/basic/frames
is-simple-clause, macro, ./prolog/basic/axioms
is-simple-list, function, ./common/c-fns
\%is-slot, function, ./frames/basic/bf-mixin
is-t, macro, ./prolog/basic/ax-sc
is-true-list, function, ./common/c-fns
is-undetermined, function, ./common/c-fns
is-undetermined-or-null, function, ./rules/basic/br-inter
is-unknown, function, ./common/c-fns
:is-unprovable, method of data-base, ./rules/basic/data
is-user-defined-method, macro, ./frames/basic/frames
is-value, macro, ./frames/basic/frames
is-\$value-form, macro, ./frames/basic/frames
is-value-spec, function, ./consat/basic/cstrbase
is-var, macro, ./prolog/basic/ax-sc
is-variable, function, ./common/c-fns
is-variables-specification, function, ./rules/basic/rules
is-varpred, macro, ./prolog/normal/np-expl-rest
is-yes-list, function, ./prolog/basic/bp-inter
*item-width*, variable, ./common/vars

j

justification, structure, ./rules/basic/data

k

:kb-inform, :after method of normal-constraint-processor, ./consat/normal/nc-proc
:kb-inform, method of axset-basic, ./prolog/basic/axioms
:kb-inform, method of basic-constraint-processor, ./consat/basic/bc-proc
:kb-inform, method of basic-frame-processor, ./frames/basic/bf-proc
:kb-inform, method of basic-rule-processor, ./rules/basic/br-proc
:kb-inform, method of kb-processor-core, ./meta/kb-core
kb-processor-core, flavor, ./meta/kb-core
kb-stub, flavor, ./meta/kb-stub
:kill-any-kb, method of system-core, ./io/babylon/sys-core
:kill-kb, method of kb-processor-core, ./meta/kb-core
:kill-kb, method of system-core, ./io/babylon/sys-core
:kill-rule, method of rule-base, ./rules/basic/rules
knowledge-base, macro, ./meta/kb-core
known-axiom-set, function, ./prolog/basic/axioms
*known-knowledge-bases*, variable, ./common/vars

l

*language*, variable, ./common/vars
lisp, macro, ./common/c-fns
lisp-mixin, flavor, ./meta/l-mixin
lisp-type, macro, ./meta/l-mixin
:list-axioms, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:list-axset, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:list-predicate, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:list-rule, method of basic-rule-mixin, ./rules/basic/br-mixin
:list-rules, method of basic-rule-mixin, ./rules/basic/br-mixin
:load-any-file, method of system-core, ./io/babylon/sys-core
local-to-global, function, ./consat/basic/net-prop
:local-value, method of active-value-mixin, ./frames/normal/act-vals

m

:make-active-values, method of restriction-net, ./consat/normal/restrict
make-babylon, macro, ./io/babylon/sys-core
make-behavior-def, function, ./frames/basic/frames
make-blanks, function, ./common/c-fns
make-c-expr, macro, ./consat/basic/bc-fns
make-clause-items, function, ./prolog/normal/np-expl-rest
make-clauses, function, ./frames/basic/bf-mixin
make-clause-used-items, function, ./prolog/normal/np-expl-rest
make-constraint-assoc, macro, ./consat/basic/bc-fns
make-definstance-example, function, ./frames/basic/frames
make-determined-value-ass, function, ./consat/basic/net-prop
make-facts-choice, function, ./rules/normal/nr-expl
make-frame-definition-example, function, ./frames/basic/frames
make-frame-name, function, ./frames/basic/frames
make-full-rule-example, function, ./rules/basic/rules
make-global-value-ass, function, ./consat/basic/net-prop
:make-guarded-slot, method of restriction-net, ./consat/normal/restrict
make-info-assoc, macro, ./consat/basic/cstrnet
make-\$instance-alist, function, ./consat/normal/rstrbase
make-instance-name, function, ./frames/basic/frames
make-lhs-example, function, ./rules/basic/rules
make-local-value-ass, function, ./consat/basic/net-prop
:make-menus-current, method of basic-menu-item-handler, ./io/basic/b-mitem
make-mult-clause-items, function, ./prolog/normal/np-expl-rest
make-multiple-answer, function, ./common/c-fns
make-multiple-value, function, ./common/c-fns
make-numbered-facts, function, ./rules/normal/nr-expl
\%make-object-name, function, ./frames/basic/frames
make-op-header, function, ./rules/normal/nr-devel
:make-protected-slot, method of restriction-net, ./consat/normal/restrict
make-rec-clause-items, function, ./prolog/normal/np-devel
make-rec-clause-items, function, ./prolog/normal/np-devel-rest
make-rhs-example, function, ./rules/basic/rules
make-rule-header, function, ./rules/normal/nr-devel
:make-rule-items, method of rule-develop-mixin, ./rules/normal/nr-devel
make-simple-val-assoc, macro, ./consat/basic/bc-fns
make-slot-ref, macro, ./consat/normal/restrict
:make-slot-restriction, method of restriction-net, ./consat/normal/restrict
make-slot-specification-example, function, ./frames/basic/frames
make-string-of-length, function, ./common/c-fns
make-supers-specification-example, function, ./frames/basic/frames
make-term-item, function, ./rules/normal/nr-devel
make-trace-elem, macro, ./consat/basic/bc-fns
make-value-assoc, macro, ./consat/basic/bc-fns
make-value-ass-of-posted-slots, function, ./consat/normal/rstreval
make-var-assoc, macro, ./consat/basic/bc-fns
:make-yourself-current, :after method of mini-prolog-mixin, ./prolog/mini/mp-mixin
:make-yourself-current, method of kb-processor-core, ./meta/kb-core
:make-yourself-known, method of kb-processor-core, ./meta/kb-core
:make-yourself-unknown, method of kb-processor-core, ./meta/kb-core
:mark-all, method of mini-rule-mixin, ./rules/mini/mr-mixin
mark-pred, function, ./prolog/mini/mp-trace
:mark-rule, method of rule-trace-mixin, ./rules/mini/mr-trace
:mark-rules, method of rule-trace-mixin, ./rules/mini/mr-trace
match-first, function, ./rules/basic/rules
match-first-and-second, function, ./rules/basic/rules
match-second, function, ./rules/basic/rules
*max-menu-entries*, variable, ./common/vars
*maxvar*, variable, ./common/vars
menu-choose-translate, function, ./frames/mini/ask-supp
menu-mult-choose-translate, function, ./frames/mini/ask-supp
*meta-preds*, variable, ./common/vars
meta-processor-core, flavor, ./meta/m-mixin
mini-constraint-mixin, flavor, ./consat/mini/mc-mixin
mini-constraint-processor, flavor, ./consat/mini/mc-proc
mini-frame-mixin, flavor, ./frames/mini/mf-mixin
mini-frame-processor, flavor, ./frames/mini/mf-proc
mini-goalbox, flavor, ./prolog/mini/mp-proc
mini-interface-mixin, flavor, ./io/basic/m-mixin
mini-prolog-mixin, flavor, ./prolog/mini/mp-mixin
mini-prolog-processor, flavor, ./prolog/mini/mp-proc
mini-rule-mixin, flavor, ./rules/mini/mr-mixin
mini-rule-processor, flavor, ./rules/mini/mr-proc
modify-net-value-ass, function, ./consat/basic/cstrnet
:modify-possible-values, method of restriction-net, ./consat/normal/rstreval
:modify-rule, method of rule-base, ./rules/basic/rules
:modify-values, method of restriction-net, ./consat/normal/rstreval
:mom-show-premise, method of ax-develop-mixin, ./prolog/normal/np-devel
more-constrained-p, function, ./consat/basic/bc-fns
:mult-choose-from-menu, method of basic-menu-mixin, ./io/basic/b-menu
multiple-evaluation, function, ./consat/basic/primcstr
mult-prompt-assoc, function, ./io/basic/b-menu

n

:needed-to-show, method of rule-trace-mixin, ./rules/mini/mr-trace
:net-variables, method of constraint-net, ./consat/basic/net-prop
new-association, function, ./consat/basic/bc-fns
:new-behavior-form, method of frame-base, ./frames/basic/frames
:new-compound, method of constraint-base, ./consat/basic/cstrbase
:new\&delete, :after method of basic-constraint-mixin, ./consat/basic/bc-mixin
:new\&delete, method of constraint-base, ./consat/basic/cstrbase
:new\&delete-restriction, :after method of normal-constraint-mixin, ./consat/normal/nc-mixin
:new\&delete-restriction, method of restriction-base, ./consat/normal/rstrbase
:new-frame-form, method of frame-base, ./frames/basic/frames
:new-instance, method of frame-base, ./frames/basic/frames
:new-primitive, method of constraint-base, ./consat/basic/cstrbase
:new-restriction, method of restriction-base, ./consat/normal/rstrbase
:new-unnamed-instance, method of frame-base, ./frames/basic/frames
next-inst-assignment, macro, ./consat/normal/rstrbase
normal-constraint-mixin, flavor, ./consat/normal/nc-mixin
normal-constraint-processor, flavor, ./consat/normal/nc-proc
normal-frame-mixin, flavor, ./frames/normal/nf-mixin
normal-frame-processor, flavor, ./frames/normal/nf-proc
normal-indent, function, ./prolog/mini/mp-trace
normalize-answer, function, ./common/c-fns
normalize-args, macro, ./frames/basic/fr-core
normalize-clause, function, ./prolog/basic/axioms
normalize-plist, function, ./frames/basic/fr-core
normalize-plist-with-act-vals, function, ./frames/normal/act-vals
normal-prolog-mixin, flavor, ./prolog/normal/np-mixin
normal-prolog-processor, flavor, ./prolog/normal/np-proc
normal-rule-mixin, flavor, ./rules/normal/nr-mixin
normal-rule-processor, flavor, ./rules/normal/nr-proc
:notify, method of basic-interface-mixin, ./io/basic/b-mixin
:no-update-permitted, method of active-value-mixin, ./frames/normal/act-vals

o

obtain, function, ./rules/basic/br-mixin
:obtain, method of basic-rule-mixin, ./rules/basic/br-mixin
:obtain, method of rule-interpreter, ./rules/basic/br-inter
occurs-in-restriction, function, ./consat/normal/rstrbase
:one-of-read-method, method of poss-val-mixin, ./frames/mini/ask-supp
:one-shot, method of rule-interpreter, ./rules/basic/br-inter
:open-menu, method of basic-menu-item-handler, ./io/basic/b-mitem
:or-backward, method of rule-interpreter, ./rules/basic/br-inter
:or-forward, method of rule-interpreter, ./rules/basic/br-inter
:or-forward-asking-if-undetermined, method of rule-interpreter, ./rules/basic/br-inter

p

parse-relation, function, ./consat/basic/cstrbase
parse-rel-elem, function, ./consat/basic/cstrbase
possible-values-to-value-spec, function, ./consat/normal/rstreval
poss-val-frame-core, flavor, ./frames/mini/mf-proc
poss-val-mixin, flavor, ./frames/mini/pos-vals
pred, macro, ./prolog/basic/axioms
:print, :after method of normal-constraint-processor, ./consat/normal/nc-proc
:print, method of axset-basic, ./prolog/basic/axioms
:print, method of basic-constraint-processor, ./consat/basic/bc-proc
:print, method of basic-frame-processor, ./frames/basic/bf-proc
:print, method of basic-rule-processor, ./rules/basic/br-proc
:print, method of constraint, ./consat/basic/primcstr
:print, method of constraint-net, ./consat/basic/cstrnet
:print, method of restriction-definition, ./consat/normal/restrict
print-axiom-set, function, ./prolog/basic/axioms
print-clause, function, ./prolog/basic/axioms
print-clauses, function, ./prolog/basic/axioms
print-constraint-list, function, ./consat/basic/cstrbase
:print-enter, method of basic-constraint-mixin, ./consat/basic/bc-mixin
:print-exit, method of basic-constraint-mixin, ./consat/basic/bc-mixin
print-frame, function, ./frames/basic/frames
print-frame-behavior, function, ./frames/basic/frames
print-frame-definition, function, ./frames/basic/frames
print-frames, function, ./frames/basic/frames
print-header, function, ./io/basic/b-menu
:print-hypotheses-verified, method of basic-rule-mixin, ./rules/basic/br-mixin
:print-hypotheses-verified, method of data-base, ./rules/basic/data
print-instance-def, function, ./frames/basic/frames
print-instances, function, ./frames/basic/frames
print-item, function, ./io/basic/b-menu
:print-numbered-facts, method of rule-explain-mixin, ./rules/normal/nr-expl
print-pred, function, ./prolog/basic/axioms
print-preds, function, ./prolog/basic/axioms
print-result, function, ./consat/basic/bc-mixin
:print-rule, method of normal-rule-mixin, ./rules/normal/nr-mixin
:print-rule, method of rule-develop-mixin, ./rules/normal/nr-devel
print-rule-set, function, ./rules/basic/rules
:print-true-facts, method of basic-rule-mixin, ./rules/basic/br-mixin
:print-true-facts, method of data-base, ./rules/basic/data
print-value-ass, function, ./consat/basic/bc-mixin
processor-core, flavor, ./common/p-core
proc-explain-mixin, flavor, ./prolog/normal/np-expl
proc-sc-mixin, flavor, ./prolog/basic/ax-sc
prolog-assert, function, ./prolog/basic/axioms
prolog-interpreter, flavor, ./prolog/basic/bp-inter
*prolog-junctor-for-rules*, variable, ./common/vars
*prolog-preds-traced*, variable, ./common/vars
:prolog-prove, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:prolog-prove, method of prolog-interpreter, ./prolog/basic/bp-inter
:prolog-prove-loop, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
*prolog-syspreds*, variable, ./common/vars
prolog-trace-mixin, flavor, ./prolog/mini/mp-trace
:prolog-why, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:prolog-why, method of normal-prolog-mixin, ./prolog/normal/np-mixin
:prompt-for-input, method of basic-interface-mixin, ./io/basic/b-mixin
:prompt-for-value, method of frame-core, ./frames/basic/fr-core
:propagate, method of constraint-net, ./consat/basic/net-prop
:protocol, method of mini-constraint-mixin, ./consat/mini/mc-mixin
:prove-abolish, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-and, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-asserta, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-assertz, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-assume, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-bagof, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-call, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-callpred, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-clause, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-cond, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-cut, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-display, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:prove-equal, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-fail, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-format, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-goal, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-goal, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:prove-is, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-lisp, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-noequal, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-normal, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-not, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-once, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-or, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-read, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-repeat, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-retract, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-return, method of prolog-interpreter, ./prolog/basic/bp-inter
:prove-subgoals, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-top, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-topgoals, :before method of prolog-trace-mixin, ./prolog/mini/mp-trace
:prove-topgoals, method of prolog-interpreter, ./prolog/basic/bp-inter
:prove-true, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-type, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-var, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-varpred, method of basic-goalbox, ./prolog/basic/bp-preds
:prove-write, method of basic-goalbox, ./prolog/basic/bp-preds
:provide-local-help, method of poss-val-mixin, ./frames/mini/ask-supp
:provide-local-help, method of poss-val-mixin, ./frames/mini/pos-vals
purge-instance-alist, function, ./consat/normal/rstrbase
:push-goalbox, method of proc-sc-mixin, ./prolog/basic/ax-sc
:put, method of active-value-mixin, ./frames/normal/act-vals
:put, method of frame-core, ./frames/basic/fr-core
:put, method of frame-interpreter, ./frames/basic/bf-inter
:put, method of poss-val-mixin, ./frames/mini/pos-vals
:put, method of restricted-slot, ./consat/normal/restrict
:put-behavior, method of active-value-mixin, ./frames/normal/act-vals
:put-compound, method of constraint-base, ./consat/basic/cstrbase
:put-if-satisfied, method of active-value-mixin, ./frames/normal/act-vals
:put-indirect, method of active-value-mixin, ./frames/normal/act-vals
:put-primitive, method of constraint-base, ./consat/basic/cstrbase
:put-restrictions, method of restriction-base, ./consat/normal/rstrbase
put-value, macro, ./frames/basic/fr-core

r

:read, method of basic-constraint-mixin, ./consat/basic/bc-mixin
:read-clauses, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
read-constraint, function, ./consat/basic/bc-mixin
read-expr-from-window, function, ./consat/basic/bc-mixin
:recall, method of data-base, ./rules/basic/data
:recall, method of frame-core, ./frames/basic/fr-core
:recall, method of free-text-processor, ./freetext/ft-proc
:recall-without-asking, method of data-base, ./rules/basic/data
*recompile*, variable, ./require
:redefine, method of restriction-base, ./consat/normal/rstrbase
:redefine-all, method of restriction-base, ./consat/normal/rstrbase
:redefine-one, method of restriction-net, ./consat/normal/rstrbase
:remax, method of axset-basic, ./prolog/basic/axioms
rem-clause, function, ./prolog/basic/axioms
rem-clauses, macro, ./prolog/basic/axioms
:remember, :before method of rule-trace-mixin, ./rules/mini/mr-trace
:remember, method of data-base, ./rules/basic/data
:remember, method of frame-core, ./frames/basic/fr-core
:remember, method of free-text-processor, ./freetext/ft-proc
remove-all-clauses, function, ./prolog/basic/axioms
:remove-axiom-set, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
remove-default-axset, function, ./prolog/basic/bp-mixin
remove-doubles, function, ./common/c-fns
remove-noisy-words, function, ./frames/basic/frames
remove-request-key, function, ./consat/basic/bc-mixin
rem-pred, macro, ./prolog/basic/axioms
rem-preds, macro, ./prolog/basic/axioms
:replace, method of frame-core, ./frames/basic/fr-core
:replace, method of frame-interpreter, ./frames/basic/bf-inter
replace-possible-values, function, ./consat/normal/rstreval
:replace-possible-values, method of restriction-net, ./consat/normal/rstreval
replace-slot-value, function, ./consat/normal/rstreval
:replace-values, method of restriction-net, ./consat/normal/rstreval
replace-var-info-values, function, ./consat/basic/cstrnet
reset-axiom-set, function, ./prolog/basic/axioms
:reset-axiom-sets, method of axset-basic, ./prolog/basic/axioms
:reset-axiom-sets, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:reset-data-base, method of data-base, ./rules/basic/data
:reset-env, method of proc-sc-mixin, ./prolog/basic/ax-sc
reset-instance, macro, ./frames/basic/frames
reset-instances, macro, ./frames/basic/frames
:reset-kb, method of kb-processor-core, ./meta/kb-core
:reset-kb-confirmed, method of kb-processor-core, ./meta/kb-core
reset-knowledge-base, function, ./meta/kb-core
:reset-proc, :after method of normal-constraint-processor, ./consat/normal/nc-proc
:reset-proc, :after method of rule-trace-mixin, ./rules/mini/mr-trace
:reset-proc, :before method of rule-interpreter, ./rules/basic/br-inter
:reset-proc, method of basic-constraint-processor, ./consat/basic/bc-proc
:reset-proc, method of basic-frame-processor, ./frames/basic/bf-proc
:reset-proc, method of basic-prolog-processor, ./prolog/basic/bp-proc
:reset-proc, method of basic-rule-processor, ./rules/basic/br-proc
:reset-proc, method of free-text-processor, ./freetext/ft-proc
:reset-slots, method of frame-core, ./frames/basic/fr-core
:reset-slot-state, method of restriction-net, ./consat/normal/rstreval
:reset-state, method of constraint-net, ./consat/basic/net-prop
:reset-trace-list, method of rule-trace-mixin, ./rules/mini/mr-trace
reset-var-info-values, function, ./consat/basic/cstrnet
rest-deref, function, ./prolog/basic/ax-sc
:restore-state, method of constraint-net, ./consat/basic/net-prop
restricted-slot, flavor, ./consat/normal/restrict
restriction-base, flavor, ./consat/normal/rstrbase
restriction-definition, flavor, ./consat/normal/restrict
restriction-net, flavor, ./consat/normal/restrict
rest-subst-prolog-vars, function, ./prolog/basic/ax-sc
rest-ult-goal, function, ./prolog/normal/np-expl-rest
:result, method of constraint-net, ./consat/basic/net-prop
:return-form, method of proc-sc-mixin, ./prolog/basic/ax-sc
:return-nil, method of meta-processor-core, ./meta/m-mixin
:return-result, method of proc-sc-mixin, ./prolog/basic/ax-sc
:return-vars, method of proc-sc-mixin, ./prolog/basic/ax-sc
rule-asking-p, function, ./rules/mini/mr-trace
rule-base, flavor, ./rules/basic/rules
rule-body, macro, ./rules/basic/rules
rule-develop-mixin, flavor, ./rules/normal/nr-devel
rule-explain-mixin, flavor, ./rules/normal/nr-expl
rule-interpreter, flavor, ./rules/basic/br-inter
rule-left-hand-side, function, ./rules/basic/rules
*rule-meta-predicates*, variable, ./common/vars
rule-name, function, ./rules/basic/rules
rule-reference-type, macro, ./rules/basic/br-mixin
rule-right-hand-side, function, ./rules/basic/rules
rule-set, macro, ./rules/basic/br-mixin
rule-set-name, function, ./rules/basic/rules
rule-set-rules, function, ./rules/basic/rules
:rule-statistics, method of rule-base, ./rules/basic/rules
:rule-trace, method of mini-rule-mixin, ./rules/mini/mr-mixin
rule-trace-mixin, flavor, ./rules/mini/mr-trace
rule-tried-p, function, ./rules/mini/mr-trace
rule-used-p, function, ./rules/mini/mr-trace
:run, method of basic-menu-loop, ./io/basic/b-mloop
:run, method of kb-processor-core, ./meta/kb-core
:run, method of system-core, ./io/babylon/sys-core

s

satisfied-p, macro, ./consat/basic/bc-mixin
:satisfied-p, method of constraint-base, ./consat/basic/cstrbase
satisfy, macro, ./consat/basic/bc-mixin
:satisfy, method of constraint-base, ./consat/basic/cstrbase
satisfy-constraint-globally, function, ./consat/basic/bc-mixin
satisfy-constraint-locally, function, ./consat/basic/bc-mixin
say, function, ./common/c-fns
s-display-info, function, ./io/basic/b-menu
search-cc-load, function, ./require
search-for-kb, function, ./meta/kb-core
select-all-constraints, function, ./consat/basic/cstrnet
:select-any-kb, method of system-core, ./io/babylon/sys-core
:select-axiom-set, method of axset-basic, ./prolog/basic/axioms
:select-axset-name, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:select-current-kb, method of system-core, ./io/babylon/sys-core
:select-describe-frame, method of basic-frame-mixin, ./frames/basic/bf-mixin
:select-describe-instance, method of basic-frame-mixin, ./frames/basic/bf-mixin
:select-for-trace , method of mini-prolog-mixin, ./prolog/mini/mp-mixin
:select-format, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
select-instance-combinations, function, ./consat/normal/rstrbase
:select-kb, method of kb-processor-core, ./meta/kb-core
:select-kb, method of system-core, ./io/babylon/sys-core
:select-list-predicate, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:select-list-rule, method of basic-rule-mixin, ./rules/basic/br-mixin
:select-load-axioms, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
select-local-conditions, function, ./consat/basic/cstrbase
select-multiple-valued-variable, function, ./consat/basic/cstrnet
:select-preds-for-tracing, method of mini-prolog-mixin, ./prolog/mini/mp-mixin
:select-preds-to-toggle, method of mini-prolog-mixin, ./prolog/mini/mp-mixin
select-relevant-constraints, function, ./consat/basic/cstrnet
:select-rule, method of rule-develop-mixin, ./rules/normal/nr-devel
:select-rule-set, method of rule-develop-mixin, ./rules/normal/nr-devel
:select-rule-set-name, method of basic-rule-mixin, ./rules/basic/br-mixin
:select-rules-for-tracing, method of mini-rule-mixin, ./rules/mini/mr-mixin
:select-rules-to-toggle, method of mini-rule-mixin, ./rules/mini/mr-mixin
select-some-value-ass, function, ./consat/basic/bc-fns
:select-term, method of rule-develop-mixin, ./rules/normal/nr-devel
send-bab, function, ./common/c-fns
send-babylon, function, ./common/c-fns
:send-consat-trace-window, method of mini-constraint-mixin, ./consat/mini/mc-mixin
send-constraint-processor, function, ./consat/basic/bc-proc
send-current-knowledge-base, function, ./common/c-fns
:send-explanation-window, method of normal-prolog-mixin, ./prolog/normal/np-mixin
:send-explanation-window, method of normal-rule-mixin, ./rules/normal/nr-mixin
send-fp, function, ./frames/basic/bf-mixin
send-kb, function, ./common/c-fns
send-prolog, function, ./prolog/basic/bp-mixin
:send-prolog-trace-window, method of mini-prolog-mixin, ./prolog/mini/mp-mixin
send-rule, function, ./rules/basic/br-mixin
:send-rule-ted, method of normal-rule-mixin, ./rules/normal/nr-mixin
:send-rule-trace-window, method of mini-rule-mixin, ./rules/mini/mr-mixin
:send-system-trace-window, method of meta-processor-core, ./meta/m-mixin
send-to-instance-or-self, function, ./frames/normal/act-vals
:set, method of active-value-mixin, ./frames/normal/act-vals
:set, method of frame-core, ./frames/basic/fr-core
:set, method of frame-interpreter, ./frames/basic/bf-inter
:set-axioms, :after method of prolog-trace-mixin, ./prolog/mini/mp-trace
:set-conflict-resolution, method of basic-rule-mixin, ./rules/basic/br-mixin
\$setf-value, macro, ./frames/basic/fr-core
:setgoal, :after method of prolog-interpreter, ./prolog/basic/bp-inter
:setgoal, :after method of prolog-trace-mixin, ./prolog/mini/mp-trace
:setgoal, method of proc-sc-mixin, ./prolog/basic/ax-sc
set-instance-pointer, macro, ./frames/basic/frames
:\%set-object-name, method of frame-core, ./frames/basic/fr-core
:set-prolog-trace-mode, method of mini-prolog-mixin, ./prolog/mini/mp-mixin
set-prolog-trace-options, function, ./prolog/mini/mp-mixin
:set-prolog-trace-options, method of mini-prolog-mixin, ./prolog/mini/mp-mixin
:set-rule-trace-mode, method of mini-rule-mixin, ./rules/mini/mr-mixin
:set-rule-trace-options, method of mini-rule-mixin, ./rules/mini/mr-mixin
:set-up-commands, method of babylon, ./io/babylon/babylon
:set-up-commands, method of basic-menu-item-handler, ./io/basic/b-mitem
:set-up-commands, method of mini-interface-mixin, ./io/basic/m-mixin
:set-up-constraint-cmds, method of basic-constraint-mixin, ./consat/basic/bc-mixin
:set-up-constraint-cmds, method of mini-constraint-mixin, ./consat/mini/mc-mixin
:set-up-frame-cmds, method of basic-frame-mixin, ./frames/basic/bf-mixin
:set-up-prefix, method of basic-frame-mixin, ./frames/basic/bf-mixin
:set-up-prolog-cmds, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:set-up-prolog-cmds, method of mini-prolog-mixin, ./prolog/mini/mp-mixin
:set-up-rule-cmds, method of basic-rule-mixin, ./rules/basic/br-mixin
:set-up-rule-cmds, method of mini-rule-mixin, ./rules/mini/mr-mixin
:set-up-rule-cmds, method of normal-rule-mixin, ./rules/normal/nr-mixin
:set-up-windows, method of basic-interface-mixin, ./io/basic/b-mixin
set-value-only, function, ./frames/basic/fr-core
:set-value-only, method of frame-core, ./frames/basic/fr-core
setvar, macro, ./prolog/basic/ax-sc
:show-axioms, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:show-form, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
show-menu-loop, function, ./io/basic/b-menu
:show-status, :after method of mini-prolog-mixin, ./prolog/mini/mp-mixin
:show-status, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:show-trace-status, method of mini-prolog-mixin, ./prolog/mini/mp-mixin
:show-vars, method of basic-prolog-mixin, ./prolog/basic/bp-mixin
:side-reset, method of proc-sc-mixin, ./prolog/basic/ax-sc
signal-unknown-frame, function, ./frames/basic/frames
:slot-message, method of frame-core, ./frames/basic/fr-core
slot-value-to-value-spec, function, ./consat/normal/rstreval
some-new-restrictions-p, function, ./consat/basic/bc-fns
:some-of-read-method, method of poss-val-mixin, ./frames/mini/ask-supp
splice, function, ./prolog/basic/axioms
split-and-put-association, function, ./consat/basic/bc-fns
split-variable-alist, function, ./consat/basic/bc-fns
stack-elem, structure, ./consat/basic/cstrnet
standard-conflict-resolution, function, ./rules/basic/br-inter
:start, method of kb-processor-core, ./meta/kb-core
:start-execution, method of kb-processor-core, ./meta/kb-core
:start-forward, method of rule-interpreter, ./rules/basic/br-inter
:start-kb, method of kb-processor-core, ./meta/kb-core
:start-kb-confirmed, method of kb-processor-core, ./meta/kb-core
start-knowledge-base, function, ./meta/kb-core
state-of-net-spec, function, ./consat/basic/cstrnet
state-of-value-ass, function, ./consat/basic/cstrnet
stop-execution, function, ./rules/basic/br-inter
stop-kb-execution, function, ./meta/kb-core
:store, :before method of rule-trace-mixin, ./rules/mini/mr-trace
:store, method of data-base, ./rules/basic/data
:store, method of frame-core, ./frames/basic/fr-core
:store, method of free-text-processor, ./freetext/ft-proc
:store-definition, method of restriction-definition, ./consat/normal/restrict
:store-deklaration, method of kb-processor-core, ./meta/kb-core
:store-state, method of constraint-net, ./consat/basic/net-prop
substitute-constraint-variables, function, ./consat/basic/bc-mixin
substitute-if-possible, function, ./consat/basic/bc-mixin
substitute-o-and-s, function, ./frames/basic/fr-core
substitute-variables-in-rule-set, function, ./rules/basic/rules
subst-prolog-vars, function, ./prolog/basic/ax-sc
subst-\$value, function, ./frames/basic/frames
:suspend, method of basic-menu-loop, ./io/basic/b-mloop
:switch-mode, method of processor-core, ./common/p-core
:synchronize-trace, method of prolog-trace-mixin, ./prolog/mini/mp-trace
system-core, flavor, ./io/babylon/sys-core
:system-status, method of system-core, ./io/babylon/sys-core

t

*tenv, variable, ./prolog/basic/ax-sc
*tenv-depth, variable, ./prolog/basic/ax-sc
:test-choices, :before method of constraint-trace-mixin, ./consat/mini/mc-trace
:test-choices, method of constraint-net, ./consat/basic/net-prop
:test-consistency-if-single-valued, method of constraint-net, ./consat/basic/net-prop
test-hypotheses, function, ./rules/basic/br-mixin
:test-hypotheses, method of basic-rule-mixin, ./rules/basic/br-mixin
:test-hypotheses, method of rule-interpreter, ./rules/basic/br-inter
testif, macro, ./rules/basic/br-inter
:test-possible-values, method of restriction-net, ./consat/normal/rstreval
:test-values, method of restriction-net, ./consat/normal/rstreval
:toggle-frcheck, method of basic-frame-mixin, ./frames/basic/bf-mixin
:toggle-frcheck, method of frame-base, ./frames/basic/frames
:toggle-prolog-trace, method of mini-prolog-mixin, ./prolog/mini/mp-mixin
:toggle-prolog-trace, method of prolog-trace-mixin, ./prolog/mini/mp-trace
:toggle-rules, method of rule-trace-mixin, ./rules/mini/mr-trace
:toggle-rule-trace, method of mini-rule-mixin, ./rules/mini/mr-mixin
:toggle-rule-trace, method of rule-trace-mixin, ./rules/mini/mr-trace
toggle-system-trace, function, ./meta/m-mixin
:toggle-system-trace, method of meta-processor-core, ./meta/m-mixin
:total-init-queue, method of constraint-net, ./consat/basic/net-prop
:trace-abolish, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-assert, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-assume, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
trace-constraints, function, ./consat/mini/mc-mixin
:trace-cut, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
traced-constraint, flavor, ./consat/mini/mc-trace
traced-constraint-net, flavor, ./consat/mini/mc-trace
:traced-p, method of constraint-trace-mixin, ./consat/mini/mc-trace
trace-element, structure, ./rules/mini/mr-trace
trace-element-to-show, function, ./rules/mini/mr-trace
trace-element-to-store, function, ./rules/mini/mr-trace
:trace-equal, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-ext-after, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-fail, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-format, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-is, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-lisp, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-noequal, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-normal-after, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-normal-before, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-nothing, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-off, method of constraint, ./consat/mini/mc-trace
:trace-off, method of constraint-net, ./consat/mini/mc-trace
:trace-off, method of traced-constraint, ./consat/mini/mc-trace
:trace-off, method of traced-constraint-net, ./consat/mini/mc-trace
:trace-on, method of constraint, ./consat/mini/mc-trace
:trace-on, method of constraint-net, ./consat/mini/mc-trace
:trace-on, method of traced-constraint, ./consat/mini/mc-trace
:trace-on, method of traced-constraint-net, ./consat/mini/mc-trace
:trace-preds, method of mini-prolog-mixin, ./prolog/mini/mp-mixin
:trace-read, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-repeat, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-status, method of meta-processor-core, ./meta/m-mixin
:trace-status, method of mini-constraint-processor, ./consat/mini/mc-proc
:trace-status, method of prolog-trace-mixin, ./prolog/mini/mp-trace
:trace-status, method of rule-trace-mixin, ./rules/mini/mr-trace
trace-test, function, ./consat/basic/net-prop
:trace-top-after, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-top-before, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-try-after, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-try-before, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-type, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
:trace-write, method of goalbox-trace-mixin, ./prolog/mini/mp-preds
trans-clause, function, ./prolog/basic/ax-sc
trans-clause1, function, ./prolog/basic/ax-sc
transform-constraint-type, function, ./consat/basic/bc-mixin
transform-pathstring, function, ./require
transform-pathstring1, function, ./require
translate-answer, function, ./common/c-fns
translate-free-texts-into-prolog-facts, function, ./freetext/ft-mixin
:translate-status-into-string, method of rule-explain-mixin, ./rules/normal/nr-expl
*trans-path-fkt*, variable, ./require
:trans-unify, :before method of prolog-trace-mixin, ./prolog/mini/mp-trace
:trans-unify, method of proc-sc-mixin, ./prolog/basic/ax-sc
:true, method of rule-interpreter, ./rules/basic/br-inter
:try-put, method of restricted-slot, ./consat/normal/restrict
:try-rule, :before method of rule-trace-mixin, ./rules/mini/mr-trace
:try-rule, method of rule-interpreter, ./rules/basic/br-inter
:type, method of frame-core, ./frames/basic/fr-core
:type, method of frame-interpreter, ./frames/basic/bf-inter
:type-end-to-continue, method of basic-interface-mixin, ./io/basic/b-mixin

u

ult-goal, function, ./prolog/normal/np-expl-rest
unconstrained-p, function, ./consat/basic/primcstr
undetermined, function, ./common/c-fns
undetermined-2, function, ./common/c-fns
undetermined-slot-value-p, function, ./consat/normal/rstreval
unify, function, ./prolog/basic/ax-sc
:unify, method of proc-sc-mixin, ./prolog/basic/ax-sc
union-sets, function, ./consat/basic/bc-fns
unknown, function, ./common/c-fns
unknown-2, function, ./common/c-fns
unmark-pred, function, ./prolog/mini/mp-trace
:unparse-instance, method of frame-core, ./frames/basic/fr-core
:unparse-rules, method of rule-base, ./rules/basic/rules
:unparse-slot, method of frame-core, ./frames/basic/fr-core
:update-agenda, method of constraint-net, ./consat/basic/net-prop
:update-constraint-trace, method of mini-constraint-mixin, ./consat/mini/mc-mixin
update-constraint-trace-mode, function, ./consat/mini/mc-mixin
update-net-value-ass, function, ./consat/basic/cstrnet
update-queue, function, ./consat/basic/net-prop
:update-slot-state, method of restriction-net, ./consat/normal/rstreval
:update-variables, method of constraint-net, ./consat/basic/net-prop
:use-axiom-sets, method of axset-basic, ./prolog/basic/axioms
:used-terms, method of rule-develop-mixin, ./rules/normal/nr-devel
use-kb-instance, macro, ./meta/kb-core
use-old-kb?, function, ./meta/kb-core
usethen, macro, ./rules/basic/br-inter

v

\$value, macro, ./frames/basic/fr-core
value-assignment-to-boolean-value, function, ./consat/basic/cstrbase
value-is-var, function, ./prolog/basic/ax-sc
value-spec-test, function, ./consat/basic/cstrbase
varcell, structure, ./prolog/basic/ax-sc
:variable-and-forward, method of rule-interpreter, ./rules/basic/br-inter
:variable-or-forward, method of rule-interpreter, ./rules/basic/br-inter
var-info, structure, ./consat/basic/cstrnet
*var-prefix*, variable, ./common/vars
*vars, variable, ./prolog/basic/ax-sc
:verify, method of rule-interpreter, ./rules/basic/br-inter
:verify-hypothesis, :before method of rule-trace-mixin, ./rules/mini/mr-trace
:verify-hypothesis, method of rule-interpreter, ./rules/basic/br-inter

w

warn-if-no-prolog, function, ./prolog/basic/bp-mixin
:which-fact, method of rule-explain-mixin, ./rules/normal/nr-expl
:while-all, method of rule-interpreter, ./rules/basic/br-inter
:while-one, method of rule-interpreter, ./rules/basic/br-inter
:why, method of data-base, ./rules/basic/data
:why, method of prolog-interpreter, ./prolog/basic/bp-inter
:why, method of rule-explain-mixin, ./rules/normal/nr-expl
:why-goal, method of proc-explain-mixin, ./prolog/normal/np-expl
:why-not, method of rule-explain-mixin, ./rules/normal/nr-expl

x

xpush, function, ./prolog/basic/axioms
