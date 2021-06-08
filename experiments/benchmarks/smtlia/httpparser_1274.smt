; output/00002802.smt: generated with canalyze.
; (1(U64) < $0) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 18446744073709551615)))
(assert (not (< 1 $0)))
; $5 Assumption: false
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (= $5 0))
; ($4 > 0(U64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (> $4 0))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; (0(U64) < $0) Assumption: true
(assert (< 0 $0))
(check-sat)
