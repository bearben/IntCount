; output/00001043.smt: generated with canalyze.
; ($13 != 7(S32)) Assumption: true
(declare-const $13 Int)
(assert (and (< (- 2147483648) $13) (< $13 2147483647)))
(assert (not (= $13 7)))
; ($13 != 6(S32)) Assumption: true
(assert (not (= $13 6)))
; ($13 != 5(S32)) Assumption: true
(assert (not (= $13 5)))
; ($13 != 4(S32)) Assumption: true
(assert (not (= $13 4)))
; ($13 != 3(S32)) Assumption: true
(assert (not (= $13 3)))
; ($13 != 2(S32)) Assumption: true
(assert (not (= $13 2)))
; ($13 != 1(S32)) Assumption: true
(assert (not (= $13 1)))
; ($13 != 0(S32)) Assumption: true
(assert (not (= $13 0)))
; ($13 == 6(S32)) Assumption: false
(assert (not (= $13 6)))
; (($cast: long $4$ - 8(S64)) >= 4(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 8) 4))
; (2(U32) < $2) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 4294967295)))
(assert (< 2 $2))
; (($cast: long $11$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $11 Int)
(assert (and (< 0 $11) (< $11 18446744073709551615)))
(assert (>= (- $11 8) 8))
; $18 Assumption: true
(declare-const $18 Int)
(assert (and (< (- 2147483648) $18) (< $18 2147483647)))
(assert (not (= $18 0)))
; $17 Assumption: true
(declare-const $17 Int)
(assert (and (< (- 2147483648) $17) (< $17 2147483647)))
(assert (not (= $17 0)))
; ($12 == 1(S32)) Assumption: true
(declare-const $12 Int)
(assert (and (< (- 2147483648) $12) (< $12 2147483647)))
(assert (= $12 1))
; ($12 == 6(S32)) Assumption: false
(assert (not (= $12 6)))
; (($cast: long $4$ - 4(S64)) >= 4(S64)) Assumption: true
(assert (>= (- $4 4) 4))
; (1(U32) < $2) Assumption: true
(assert (< 1 $2))
; (($cast: long $11$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $11 0) 8))
; $10 Assumption: true
(declare-const $10 Int)
(assert (and (< (- 9223372036854775808) $10) (< $10 9223372036854775807)))
(assert (not (= $10 0)))
; (2(U32) < $8) Assumption: false
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 4294967295)))
(assert (not (< 2 $8)))
; (($cast: long $16$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $16 Int)
(assert (and (< 0 $16) (< $16 18446744073709551615)))
(assert (>= (- $16 8) 8))
; (1(U32) < $8) Assumption: true
(assert (< 1 $8))
; (($cast: long $16$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $16 0) 8))
; $9 Assumption: true
(declare-const $9 Int)
(assert (and (< (- 9223372036854775808) $9) (< $9 9223372036854775807)))
(assert (not (= $9 0)))
; (0(U32) < $8) Assumption: true
(assert (< 0 $8))
; ($5 == 7(S32)) Assumption: true
(declare-const $5 Int)
(assert (and (< (- 2147483648) $5) (< $5 2147483647)))
(assert (= $5 7))
; ($5 == 6(S32)) Assumption: false
(assert (not (= $5 6)))
; (($cast: long $4$ - 0(S64)) >= 4(S64)) Assumption: true
(assert (>= (- $4 0) 4))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; (0(U32) < $2) Assumption: true
(assert (< 0 $2))
(check-sat)
