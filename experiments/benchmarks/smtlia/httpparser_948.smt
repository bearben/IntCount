; output/00001737.smt: generated with canalyze.
; [sym$FuncSymbol:1 memchr$] == NULL Assumption: false
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
(check-sat)
