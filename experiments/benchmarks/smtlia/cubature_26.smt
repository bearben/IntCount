; output/00000031.smt: generated with canalyze.
; ((16(U64) * $cast: unsigned long $7$) > 0(U64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 4294967295)))
(assert (> (* 16 $7) 0))
; (($cast: long ((8(U64) * $cast: unsigned long $2$) * 2(U64))$ - (8(S64) * (0(S64) + $cast: long $1$))) >= 8(S64)) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 4294967295)))
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (>= (- (* (* 8 $2) 2) (* 8 (+ 0 $1))) 8))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long $1$))) >= 8(S64)) Assumption: true
(declare-const $9 Int)
(assert (and (< 0 $9) (< $9 18446744073709551615)))
(assert (>= (- $9 (* 8 (+ 0 $1))) 8))
; (2(U32) < $2) Assumption: false
(assert (not (< 2 $2)))
; (($cast: long ((8(U64) * $cast: unsigned long $2$) * 2(U64))$ - (8(S64) * (0(S64) + $cast: long (1(U32) + $2)$))) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $2) 2) (* 8 (+ 0 (+ 1 $2)))) 8))
; (($cast: long $9$ - (8(S64) * ((0(S64) + $cast: long $2$) + 1(S64)))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ (+ 0 $2) 1))) 8))
; (($cast: long ((8(U64) * $cast: unsigned long $2$) * 2(U64))$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $2) 2) 8) 8))
; (($cast: long $9$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $9 8) 8))
; (1(U32) < $2) Assumption: true
(assert (< 1 $2))
; (($cast: long ((8(U64) * $cast: unsigned long $2$) * 2(U64))$ - (8(S64) * (0(S64) + $cast: long (0(U32) + $2)$))) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $2) 2) (* 8 (+ 0 (+ 0 $2)))) 8))
; (($cast: long $9$ - (8(S64) * ((0(S64) + $cast: long $2$) + 0(S64)))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ (+ 0 $2) 0))) 8))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long $2$))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ 0 $2))) 8))
; (($cast: long ((8(U64) * $cast: unsigned long $2$) * 2(U64))$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $2) 2) 0) 8))
; (($cast: long $9$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $9 0) 8))
; (0(U32) < $2) Assumption: true
(assert (< 0 $2))
; (((8(U64) * $cast: unsigned long $2$) * 2(U64)) > 0(U64)) Assumption: true
(assert (> (* (* 8 $2) 2) 0))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long ($1 + $2)$))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ 0 (+ $1 $2)))) 8))
; $6 Assumption: true
(declare-const $6 Int)
(assert (and (< (- 9223372036854775808) $6) (< $6 9223372036854775807)))
(assert (not (= $6 0)))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; (($cast: long $5$ - 0(S64)) >= 48(S64)) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 18446744073709551615)))
(assert (>= (- $5 0) 48))
; (($cast: long $4$ - 0(S64)) >= 48(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 0) 48))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
