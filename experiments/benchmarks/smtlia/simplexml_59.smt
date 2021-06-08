; output/00000090.smt: generated with canalyze.
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; [sym$regval:3 [field: [sym$regval:0 [var: e]$]->children]$] != NULL Assumption: true
(assert (not (= $3 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
