; output/00000012.smt: generated with canalyze.
; [sym$regval:0 [var: v]$] != NULL Assumption: false
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (not (= $0 0))))
(check-sat)
