; output/00000058.smt: generated with canalyze.
; (1(U32) < ($2 >> 3(S32))) Assumption: false
; (1(U32) < $5) Assumption: false
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 4294967295)))
(assert (not (< 1 $5)))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long ((0(U32) + ((((0(U32) - (0(U32) & ($4 - 1(U32)))) << 3(S32)) + (0(U32) & ($4 - 1(U32)))) * $3)) + (7(U32) * ($4 * $3)))$))) >= 8(S64)) Assumption: true
(declare-const $9 Int)
(assert (and (< 0 $9) (< $9 18446744073709551615)))
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 4294967295)))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long ((0(U32) + ((((0(U32) - (0(U32) & ($4 - 1(U32)))) << 3(S32)) + (0(U32) & ($4 - 1(U32)))) * $3)) + (6(U32) * ($4 * $3)))$))) >= 8(S64)) Assumption: true
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long ((0(U32) + ((((0(U32) - (0(U32) & ($4 - 1(U32)))) << 3(S32)) + (0(U32) & ($4 - 1(U32)))) * $3)) + (5(U32) * ($4 * $3)))$))) >= 8(S64)) Assumption: true
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long ((0(U32) + ((((0(U32) - (0(U32) & ($4 - 1(U32)))) << 3(S32)) + (0(U32) & ($4 - 1(U32)))) * $3)) + (4(U32) * ($4 * $3)))$))) >= 8(S64)) Assumption: true
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long ((0(U32) + ((((0(U32) - (0(U32) & ($4 - 1(U32)))) << 3(S32)) + (0(U32) & ($4 - 1(U32)))) * $3)) + (3(U32) * ($4 * $3)))$))) >= 8(S64)) Assumption: true
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long ((0(U32) + ((((0(U32) - (0(U32) & ($4 - 1(U32)))) << 3(S32)) + (0(U32) & ($4 - 1(U32)))) * $3)) + (2(U32) * ($4 * $3)))$))) >= 8(S64)) Assumption: true
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long ((0(U32) + ((((0(U32) - (0(U32) & ($4 - 1(U32)))) << 3(S32)) + (0(U32) & ($4 - 1(U32)))) * $3)) + (1(U32) * ($4 * $3)))$))) >= 8(S64)) Assumption: true
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long ((0(U32) + ((((0(U32) - (0(U32) & ($4 - 1(U32)))) << 3(S32)) + (0(U32) & ($4 - 1(U32)))) * $3)) + (0(U32) * ($4 * $3)))$))) >= 8(S64)) Assumption: true
; (($cast: long $8$ - (8(S64) * (0(S64) + $cast: long (((3(U32) * $4) + (0(U32) & ($4 - 1(U32)))) + (3(U32) * $4))$))) >= 8(S64)) Assumption: true
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 18446744073709551615)))
; (($cast: long $8$ - (8(S64) * (0(S64) + $cast: long (((3(U32) * $4) + (0(U32) & ($4 - 1(U32)))) + (2(U32) * $4))$))) >= 8(S64)) Assumption: true
; (($cast: long $8$ - (8(S64) * (0(S64) + $cast: long (((3(U32) * $4) + (0(U32) & ($4 - 1(U32)))) + $4)$))) >= 8(S64)) Assumption: true
; (($cast: long $8$ - (8(S64) * (0(S64) + $cast: long ((3(U32) * $4) + (0(U32) & ($4 - 1(U32))))$))) >= 8(S64)) Assumption: true
; (($cast: long $8$ - (8(S64) * (0(S64) + $cast: long (($4 + (0(U32) & ($4 - 1(U32)))) + $4)$))) >= 8(S64)) Assumption: true
; (($cast: long $8$ - (8(S64) * (0(S64) + $cast: long ($4 + (0(U32) & ($4 - 1(U32))))$))) >= 8(S64)) Assumption: true
; (($cast: long $6$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (7(U32) * ($3 * ($2 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 18446744073709551615)))
; (($cast: long $6$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (6(U32) * ($3 * ($2 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
; (($cast: long $6$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (5(U32) * ($3 * ($2 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
; (($cast: long $6$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (4(U32) * ($3 * ($2 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
; (($cast: long $8$ - (8(S64) * (0(S64) + $cast: long (0(U32) & ($4 - 1(U32)))$))) >= 8(S64)) Assumption: true
; $7 Assumption: true
(declare-const $7 Int)
(assert (and (< (- 9223372036854775808) $7) (< $7 9223372036854775807)))
(assert (not (= $7 0)))
; (($cast: long $6$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (3(U32) * ($3 * ($2 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
; (($cast: long $6$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (2(U32) * ($3 * ($2 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
; (($cast: long $6$ - (8(S64) * (0(S64) + $cast: long (0(U32) + ($3 * ($2 >> 3(S32))))$))) >= 8(S64)) Assumption: true
; (($cast: long $6$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $6 0) 8))
; (0(U32) < $5) Assumption: true
(assert (< 0 $5))
; (0(U32) < ($2 >> 3(S32))) Assumption: true
(check-sat)
