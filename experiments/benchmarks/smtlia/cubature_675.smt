; output/00001059.smt: generated with canalyze.
; [sym$regval:0 [var: v]$] == NULL Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (= $0 0))
(check-sat)
