; output/00000936.smt: generated with canalyze.
; $10 Assumption: true
(declare-const $10 Int)
(assert (and (< (- 2147483648) $10) (< $10 2147483647)))
(assert (not (= $10 0)))
; (2(U64) < $3) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (< 2 $3))
; $9 Assumption: false
(declare-const $9 Int)
(assert (and (< (- 2147483648) $9) (< $9 2147483647)))
(assert (= $9 0))
; (1(U64) < $3) Assumption: true
(assert (< 1 $3))
; $8 Assumption: false
(declare-const $8 Int)
(assert (and (< (- 2147483648) $8) (< $8 2147483647)))
(assert (= $8 0))
; (0(U64) < $3) Assumption: true
(assert (< 0 $3))
(check-sat)
