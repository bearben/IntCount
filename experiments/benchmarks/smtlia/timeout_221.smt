; output/00000304.smt: generated with canalyze.
; [sym$regval:1 [field: [field: [sym$regval:0 [var: T]$]->expired]->tqh_first]$] == NULL Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (= $1 0))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
