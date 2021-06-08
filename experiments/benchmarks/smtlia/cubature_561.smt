; output/00000899.smt: generated with canalyze.
; (($0 + $1) > 0(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (> (+ $0 $1) 0))
; ((8(U64) * $cast: unsigned long ((2(U32) * (((1(U32) + (2(U32) * (2(U32) * $1))) + ((2(U32) * $1) * ($1 - 1(U32)))) + (1(U32) << $1))) * ($1 + $0))$) > 0(U64)) Assumption: true
; (($cast: long ((8(U64) * $cast: unsigned long $1$) * 2(U64))$ - (8(S64) * ((0(S64) + $cast: long $1$) + 1(S64)))) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $1) 2) (* 8 (+ (+ 0 $1) 1))) 8))
; (($cast: long ((8(U64) * $cast: unsigned long $1$) * 2(U64))$ - (8(S64) * ((0(S64) + $cast: long $1$) + 0(S64)))) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $1) 2) (* 8 (+ (+ 0 $1) 0))) 8))
; (($cast: long ((8(U64) * $cast: unsigned long $1$) * 2(U64))$ - (8(S64) * (0(S64) + $cast: long $1$))) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $1) 2) (* 8 (+ 0 $1))) 8))
; (1(U32) < $0) Assumption: false
(assert (not (< 1 $0)))
; (($cast: long (16(U64) * $cast: unsigned long $0$)$ - 0(S64)) >= 16(S64)) Assumption: true
(assert (>= (- (* 16 $0) 0) 16))
; (0(U32) < $0) Assumption: true
(assert (< 0 $0))
; ((16(U64) * $cast: unsigned long $0$) > 0(U64)) Assumption: true
(assert (> (* 16 $0) 0))
; ($0 <= 1(U32)) Assumption: true
(assert (<= $0 1))
; (2(U32) < $1) Assumption: false
(assert (not (< 2 $1)))
; (($cast: long ((8(U64) * $cast: unsigned long $1$) * 2(U64))$ - (8(S64) * (0(S64) + $cast: long (1(U32) + $1)$))) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $1) 2) (* 8 (+ 0 (+ 1 $1)))) 8))
; (($cast: long $9$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $9 Int)
(assert (and (< 0 $9) (< $9 18446744073709551615)))
(assert (>= (- $9 8) 8))
; (($cast: long ((8(U64) * $cast: unsigned long $1$) * 2(U64))$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $1) 2) 8) 8))
; (($cast: long $8$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 18446744073709551615)))
(assert (>= (- $8 8) 8))
; (1(U32) < $1) Assumption: true
(assert (< 1 $1))
; (($cast: long ((8(U64) * $cast: unsigned long $1$) * 2(U64))$ - (8(S64) * (0(S64) + $cast: long (0(U32) + $1)$))) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $1) 2) (* 8 (+ 0 (+ 0 $1)))) 8))
; (($cast: long $9$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $9 0) 8))
; $7 Assumption: true
(declare-const $7 Int)
(assert (and (< (- 9223372036854775808) $7) (< $7 9223372036854775807)))
(assert (not (= $7 0)))
; (($cast: long ((8(U64) * $cast: unsigned long $1$) * 2(U64))$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $1) 2) 0) 8))
; (($cast: long $8$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $8 0) 8))
; $6 Assumption: true
(declare-const $6 Int)
(assert (and (< (- 9223372036854775808) $6) (< $6 9223372036854775807)))
(assert (not (= $6 0)))
; (0(U32) < $1) Assumption: true
(assert (< 0 $1))
; (((8(U64) * $cast: unsigned long $1$) * 2(U64)) > 0(U64)) Assumption: true
(assert (> (* (* 8 $1) 2) 0))
; (((8(U64) * $cast: unsigned long $1$) * 3(U64)) > 0(U64)) Assumption: true
(assert (> (* (* 8 $1) 3) 0))
; ($cast: unsigned long $1$ >= 32(U64)) Assumption: false
(assert (not (>= $1 32)))
; ($1 < 2(U32)) Assumption: false
(assert (not (< $1 2)))
; ($1 == 1(U32)) Assumption: false
(assert (not (= $1 1)))
; ($1 == 0(U32)) Assumption: false
(assert (not (= $1 0)))
; ($0 == 0(U32)) Assumption: false
(assert (not (= $0 0)))
(check-sat)
