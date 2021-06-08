; output/00002800.smt: generated with canalyze.
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; (0(U64) < $0) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 18446744073709551615)))
(assert (< 0 $0))
(check-sat)
