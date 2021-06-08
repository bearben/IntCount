; output/00000164.smt: generated with canalyze.
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 18446744073709551615)))
(assert (not (= $1 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
