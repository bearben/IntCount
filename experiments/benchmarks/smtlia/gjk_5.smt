; output/00000005.smt: generated with canalyze.
; (1(U64) < $0) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 18446744073709551615)))
(assert (not (< 1 $0)))
; (($cast: long $3$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (>= (- $3 0) 8))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; (0(U64) < $0) Assumption: true
(assert (< 0 $0))
(check-sat)
