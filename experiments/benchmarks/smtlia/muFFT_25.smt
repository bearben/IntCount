; output/00000026.smt: generated with canalyze.
; (1(U32) < ($2 >> 3(S32))) Assumption: false
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long ((((0(U32) - (0(U32) & ($3 - 1(U32)))) << 3(S32)) + (0(U32) & ($3 - 1(U32)))) + (7(U32) * $3))$))) >= 8(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long ((((0(U32) - (0(U32) & ($3 - 1(U32)))) << 3(S32)) + (0(U32) & ($3 - 1(U32)))) + (6(U32) * $3))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long ((((0(U32) - (0(U32) & ($3 - 1(U32)))) << 3(S32)) + (0(U32) & ($3 - 1(U32)))) + (5(U32) * $3))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long ((((0(U32) - (0(U32) & ($3 - 1(U32)))) << 3(S32)) + (0(U32) & ($3 - 1(U32)))) + (4(U32) * $3))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long ((((0(U32) - (0(U32) & ($3 - 1(U32)))) << 3(S32)) + (0(U32) & ($3 - 1(U32)))) + (3(U32) * $3))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long ((((0(U32) - (0(U32) & ($3 - 1(U32)))) << 3(S32)) + (0(U32) & ($3 - 1(U32)))) + (2(U32) * $3))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long ((((0(U32) - (0(U32) & ($3 - 1(U32)))) << 3(S32)) + (0(U32) & ($3 - 1(U32)))) + (1(U32) * $3))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long ((((0(U32) - (0(U32) & ($3 - 1(U32)))) << 3(S32)) + (0(U32) & ($3 - 1(U32)))) + (0(U32) * $3))$))) >= 8(S64)) Assumption: true
; (($cast: long $6$ - (8(S64) * (0(S64) + $cast: long (((3(U32) * $3) + (0(U32) & ($3 - 1(U32)))) + (3(U32) * $3))$))) >= 8(S64)) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 18446744073709551615)))
; (($cast: long $6$ - (8(S64) * (0(S64) + $cast: long (((3(U32) * $3) + (0(U32) & ($3 - 1(U32)))) + (2(U32) * $3))$))) >= 8(S64)) Assumption: true
; (($cast: long $6$ - (8(S64) * (0(S64) + $cast: long (((3(U32) * $3) + (0(U32) & ($3 - 1(U32)))) + $3)$))) >= 8(S64)) Assumption: true
; (($cast: long $6$ - (8(S64) * (0(S64) + $cast: long ((3(U32) * $3) + (0(U32) & ($3 - 1(U32))))$))) >= 8(S64)) Assumption: true
; (($cast: long $6$ - (8(S64) * (0(S64) + $cast: long (($3 + (0(U32) & ($3 - 1(U32)))) + $3)$))) >= 8(S64)) Assumption: true
; (($cast: long $6$ - (8(S64) * (0(S64) + $cast: long ($3 + (0(U32) & ($3 - 1(U32))))$))) >= 8(S64)) Assumption: true
; (($cast: long $4$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (7(U32) * ($2 >> 3(S32))))$))) >= 8(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
; (($cast: long $4$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (6(U32) * ($2 >> 3(S32))))$))) >= 8(S64)) Assumption: true
; (($cast: long $4$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (5(U32) * ($2 >> 3(S32))))$))) >= 8(S64)) Assumption: true
; (($cast: long $4$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (4(U32) * ($2 >> 3(S32))))$))) >= 8(S64)) Assumption: true
; (($cast: long $6$ - (8(S64) * (0(S64) + $cast: long (0(U32) & ($3 - 1(U32)))$))) >= 8(S64)) Assumption: true
; $5 Assumption: true
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (not (= $5 0)))
; (($cast: long $4$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (3(U32) * ($2 >> 3(S32))))$))) >= 8(S64)) Assumption: true
; (($cast: long $4$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (2(U32) * ($2 >> 3(S32))))$))) >= 8(S64)) Assumption: true
; (($cast: long $4$ - (8(S64) * (0(S64) + $cast: long (0(U32) + ($2 >> 3(S32)))$))) >= 8(S64)) Assumption: true
; (($cast: long $4$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $4 0) 8))
; (0(U32) < ($2 >> 3(S32))) Assumption: true
(check-sat)
