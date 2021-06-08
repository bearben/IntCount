; output/00000091.smt: generated with canalyze.
; [sym$regval:1 [field: [sym$regval:0 [var: p]$]->element_stack]$] != NULL Assumption: false
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (not (= $1 0))))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
