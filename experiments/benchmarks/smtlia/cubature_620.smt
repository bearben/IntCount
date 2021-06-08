; output/00000981.smt: generated with canalyze.
; ($5 != 7(S32)) Assumption: true
(declare-const $5 Int)
(assert (and (< (- 2147483648) $5) (< $5 2147483647)))
(assert (not (= $5 7)))
; ($5 != 6(S32)) Assumption: true
(assert (not (= $5 6)))
; ($5 != 5(S32)) Assumption: true
(assert (not (= $5 5)))
; ($5 != 4(S32)) Assumption: true
(assert (not (= $5 4)))
; ($5 != 3(S32)) Assumption: true
(assert (not (= $5 3)))
; ($5 != 2(S32)) Assumption: true
(assert (not (= $5 2)))
; ($5 != 1(S32)) Assumption: true
(assert (not (= $5 1)))
; ($5 != 0(S32)) Assumption: true
(assert (not (= $5 0)))
; ($5 == 6(S32)) Assumption: false
(assert (not (= $5 6)))
; (($cast: long $4$ - 0(S64)) >= 4(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 0) 4))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; (0(U32) < $2) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 4294967295)))
(assert (< 0 $2))
(check-sat)
