; output/00000015.smt: generated with canalyze.
; (2(U32) < ($4 >> 2(S32))) Assumption: false
; (($cast: long $7$ - 56(S64)) >= 8(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
(assert (>= (- $7 56) 8))
; (($cast: long $7$ - 48(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 48) 8))
; (($cast: long $7$ - 40(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 40) 8))
; (($cast: long $7$ - 32(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 32) 8))
; (($cast: long $5$ - (8(S64) * (0(S64) + $cast: long (1(U32) + ($4 >> 2(S32)))$))) >= 8(S64)) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 18446744073709551615)))
; (($cast: long $5$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $5 8) 8))
; (1(U32) < ($4 >> 2(S32))) Assumption: true
; (($cast: long $7$ - 24(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 24) 8))
; (($cast: long $7$ - 16(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 16) 8))
; (($cast: long $7$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 8) 8))
; (($cast: long $7$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 0) 8))
; (($cast: long $6$ - 16(S64)) >= 8(S64)) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 18446744073709551615)))
(assert (>= (- $6 16) 8))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; (($cast: long $5$ - (8(S64) * (0(S64) + $cast: long (0(U32) + ($4 >> 2(S32)))$))) >= 8(S64)) Assumption: true
; (($cast: long $5$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $5 0) 8))
; (0(U32) < ($4 >> 2(S32))) Assumption: true
(check-sat)
