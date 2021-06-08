; output/00000082.smt: generated with canalyze.
; (2(U32) < $2) Assumption: false
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 4294967295)))
(assert (not (< 2 $2)))
; (($cast: long $9$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $9 Int)
(assert (and (< 0 $9) (< $9 18446744073709551615)))
(assert (>= (- $9 8) 8))
; (($cast: long $7$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
(assert (>= (- $7 8) 8))
; (($cast: long $6$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 18446744073709551615)))
(assert (>= (- $6 8) 8))
; (($cast: long $4$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 8) 8))
; (1(U32) < $2) Assumption: true
(assert (< 1 $2))
; (($cast: long $9$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $9 0) 8))
; $8 Assumption: true
(declare-const $8 Int)
(assert (and (< (- 9223372036854775808) $8) (< $8 9223372036854775807)))
(assert (not (= $8 0)))
; (($cast: long $7$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 0) 8))
; (($cast: long $6$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $6 0) 8))
; $5 Assumption: true
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (not (= $5 0)))
; (($cast: long $4$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $4 0) 8))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; (0(U32) < $2) Assumption: true
(assert (< 0 $2))
(check-sat)
