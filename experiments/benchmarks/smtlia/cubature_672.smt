; output/00001055.smt: generated with canalyze.
; $1 Assumption: false
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (= $1 0))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
; [sym$regval:0 [var: v]$] == NULL Assumption: false
(assert (not (= $0 0)))
(check-sat)
