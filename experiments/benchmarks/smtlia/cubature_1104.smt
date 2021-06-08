; output/00001581.smt: generated with canalyze.
; $14 Assumption: true
(declare-const $14 Int)
(assert (and (< (- 2147483648) $14) (< $14 2147483647)))
(assert (not (= $14 0)))
; (1(U32) == $2) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 4294967295)))
(assert (= 1 $2))
; (0(U32) != $2) Assumption: true
(assert (not (= 0 $2)))
; ((8(U64) * ($cast: unsigned long $3$ * 3(U64))) > 0(U64)) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (> (* 8 (* $3 3)) 0))
; ((24(U64) * $cast: unsigned long $2$) > 0(U64)) Assumption: true
(assert (> (* 24 $2) 0))
; (0(U32) == $2) Assumption: false
(assert (not (= 0 $2)))
; (1(U32) < $2) Assumption: false
(assert (not (< 1 $2)))
; (($cast: long $13$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $13 Int)
(assert (and (< 0 $13) (< $13 18446744073709551615)))
(assert (>= (- $13 0) 8))
; $4 Assumption: true
(declare-const $4 Int)
(assert (and (< (- 9223372036854775808) $4) (< $4 9223372036854775807)))
(assert (not (= $4 0)))
; (($cast: long $12$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $12 Int)
(assert (and (< 0 $12) (< $12 18446744073709551615)))
(assert (>= (- $12 0) 8))
; $5 Assumption: true
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (not (= $5 0)))
; (0(U32) < $2) Assumption: true
(assert (< 0 $2))
; (2(U32) < $3) Assumption: false
(assert (not (< 2 $3)))
; (($cast: long $11$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $11 Int)
(assert (and (< 0 $11) (< $11 18446744073709551615)))
(assert (>= (- $11 8) 8))
; (($cast: long $10$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $10 Int)
(assert (and (< 0 $10) (< $10 18446744073709551615)))
(assert (>= (- $10 8) 8))
; (1(U32) < $3) Assumption: true
(assert (< 1 $3))
; (($cast: long $11$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $11 0) 8))
; $9 Assumption: true
(declare-const $9 Int)
(assert (and (< (- 9223372036854775808) $9) (< $9 9223372036854775807)))
(assert (not (= $9 0)))
; (($cast: long $10$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $10 0) 8))
; $8 Assumption: true
(declare-const $8 Int)
(assert (and (< (- 9223372036854775808) $8) (< $8 9223372036854775807)))
(assert (not (= $8 0)))
; (0(U32) < $3) Assumption: true
(assert (< 0 $3))
; ($2 == 0(U32)) Assumption: false
(assert (not (= $2 0)))
; ($2 > 20(U32)) Assumption: false
(assert (not (> $2 20)))
; ($3 == 0(U32)) Assumption: false
(assert (not (= $3 0)))
; ($cast: unsigned int $7$ > 4(U32)) Assumption: false
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 4294967295)))
(assert (not (> $7 4)))
; ($cast: unsigned int $7$ < 0(U32)) Assumption: false
(assert (not (< $7 0)))
; ($3 <= 1(U32)) Assumption: false
(assert (not (<= $3 1)))
(check-sat)
