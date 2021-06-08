; output/00001819.smt: generated with canalyze.
; $2 Assumption: false
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (= $2 0))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (not (= $1 0)))
(check-sat)
