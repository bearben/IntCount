; output/00001738.smt: generated with canalyze.
; [sym$FuncSymbol:1 memchr$] == NULL Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (= $1 0))
(check-sat)
