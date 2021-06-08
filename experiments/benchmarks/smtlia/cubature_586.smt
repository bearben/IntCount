; output/00000938.smt: generated with canalyze.
; $8 Assumption: true
(declare-const $8 Int)
(assert (and (< (- 2147483648) $8) (< $8 2147483647)))
(assert (not (= $8 0)))
; (0(U64) < $3) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (< 0 $3))
(check-sat)
