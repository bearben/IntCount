; output/00000024.smt: generated with canalyze.
; ((16(U64) * $cast: unsigned long $3$) > 0(U64)) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (> (* 16 $3) 0))
; (2(U32) < $1) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (not (< 2 $1)))
; (($cast: long ((8(U64) * $cast: unsigned long $1$) * 2(U64))$ - (8(S64) * (0(S64) + $cast: long (1(U32) + $1)$))) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $1) 2) (* 8 (+ 0 (+ 1 $1)))) 8))
; (($cast: long $5$ - (8(S64) * ((0(S64) + $cast: long $1$) + 1(S64)))) >= 8(S64)) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 18446744073709551615)))
(assert (>= (- $5 (* 8 (+ (+ 0 $1) 1))) 8))
; (($cast: long ((8(U64) * $cast: unsigned long $1$) * 2(U64))$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $1) 2) 8) 8))
; (($cast: long $5$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $5 8) 8))
; (1(U32) < $1) Assumption: true
(assert (< 1 $1))
; (($cast: long ((8(U64) * $cast: unsigned long $1$) * 2(U64))$ - (8(S64) * (0(S64) + $cast: long (0(U32) + $1)$))) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $1) 2) (* 8 (+ 0 (+ 0 $1)))) 8))
; (($cast: long $5$ - (8(S64) * ((0(S64) + $cast: long $1$) + 0(S64)))) >= 8(S64)) Assumption: true
(assert (>= (- $5 (* 8 (+ (+ 0 $1) 0))) 8))
; (($cast: long $5$ - (8(S64) * (0(S64) + $cast: long $1$))) >= 8(S64)) Assumption: true
(assert (>= (- $5 (* 8 (+ 0 $1))) 8))
; (($cast: long ((8(U64) * $cast: unsigned long $1$) * 2(U64))$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $1) 2) 0) 8))
; (($cast: long $5$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $5 0) 8))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; (0(U32) < $1) Assumption: true
(assert (< 0 $1))
; (((8(U64) * $cast: unsigned long $1$) * 2(U64)) > 0(U64)) Assumption: true
(assert (> (* (* 8 $1) 2) 0))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
