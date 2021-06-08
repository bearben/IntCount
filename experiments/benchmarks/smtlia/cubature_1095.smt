; output/00001572.smt: generated with canalyze.
; (1(U64) < $3) Assumption: false
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (not (< 1 $3)))
; $8 Assumption: false
(declare-const $8 Int)
(assert (and (< (- 2147483648) $8) (< $8 2147483647)))
(assert (= $8 0))
; (0(U64) < $3) Assumption: true
(assert (< 0 $3))
(check-sat)
