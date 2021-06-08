; output/00000027.smt: generated with canalyze.
; ($2 >= 0(S32)) Assumption: false
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (not (>= $2 0)))
; [sym$regval:0 [var: v]$] != NULL Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
; $0 Assumption: true
(assert (not (= $0 0)))
(check-sat)
