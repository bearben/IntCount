; output/00002799.smt: generated with canalyze.
; $4 Assumption: true
(declare-const $4 Int)
(assert (and (< (- 9223372036854775808) $4) (< $4 9223372036854775807)))
(assert (not (= $4 0)))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; (1(U64) < $0) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 18446744073709551615)))
(assert (< 1 $0))
; $2 Assumption: false
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (= $2 0))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; (0(U64) < $0) Assumption: true
(assert (< 0 $0))
(check-sat)
