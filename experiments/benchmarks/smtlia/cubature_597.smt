; output/00000949.smt: generated with canalyze.
; (($0 + $3) > 0(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (> (+ $0 $3) 0))
; ((8(U64) * $cast: unsigned long ((2(U32) * (((1(U32) + (2(U32) * (2(U32) * $3))) + ((2(U32) * $3) * ($3 - 1(U32)))) + (1(U32) << $3))) * ($3 + $0))$) > 0(U64)) Assumption: true
; (($cast: long ((8(U64) * $cast: unsigned long $3$) * 2(U64))$ - (8(S64) * ((0(S64) + $cast: long $3$) + 1(S64)))) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $3) 2) (* 8 (+ (+ 0 $3) 1))) 8))
; (($cast: long ((8(U64) * $cast: unsigned long $3$) * 2(U64))$ - (8(S64) * ((0(S64) + $cast: long $3$) + 0(S64)))) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $3) 2) (* 8 (+ (+ 0 $3) 0))) 8))
; (($cast: long ((8(U64) * $cast: unsigned long $3$) * 2(U64))$ - (8(S64) * (0(S64) + $cast: long $3$))) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $3) 2) (* 8 (+ 0 $3))) 8))
; (2(U32) < $0) Assumption: false
(assert (not (< 2 $0)))
; (($cast: long (16(U64) * $cast: unsigned long $0$)$ - 16(S64)) >= 16(S64)) Assumption: true
(assert (>= (- (* 16 $0) 16) 16))
; (1(U32) < $0) Assumption: true
(assert (< 1 $0))
; (($cast: long (16(U64) * $cast: unsigned long $0$)$ - 0(S64)) >= 16(S64)) Assumption: true
(assert (>= (- (* 16 $0) 0) 16))
; (0(U32) < $0) Assumption: true
(assert (< 0 $0))
; ((16(U64) * $cast: unsigned long $0$) > 0(U64)) Assumption: true
(assert (> (* 16 $0) 0))
; ($cast: unsigned int $7$ > 4(U32)) Assumption: false
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 4294967295)))
(assert (not (> $7 4)))
; ($cast: unsigned int $7$ < 0(U32)) Assumption: false
(assert (not (< $7 0)))
; ($0 <= 1(U32)) Assumption: false
(assert (not (<= $0 1)))
; (2(U32) < $3) Assumption: false
(assert (not (< 2 $3)))
; (($cast: long ((8(U64) * $cast: unsigned long $3$) * 2(U64))$ - (8(S64) * (0(S64) + $cast: long (1(U32) + $3)$))) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $3) 2) (* 8 (+ 0 (+ 1 $3)))) 8))
; (($cast: long $13$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $13 Int)
(assert (and (< 0 $13) (< $13 18446744073709551615)))
(assert (>= (- $13 8) 8))
; (($cast: long ((8(U64) * $cast: unsigned long $3$) * 2(U64))$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $3) 2) 8) 8))
; (($cast: long $12$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $12 Int)
(assert (and (< 0 $12) (< $12 18446744073709551615)))
(assert (>= (- $12 8) 8))
; (1(U32) < $3) Assumption: true
(assert (< 1 $3))
; (($cast: long ((8(U64) * $cast: unsigned long $3$) * 2(U64))$ - (8(S64) * (0(S64) + $cast: long (0(U32) + $3)$))) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $3) 2) (* 8 (+ 0 (+ 0 $3)))) 8))
; (($cast: long $13$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $13 0) 8))
; $5 Assumption: true
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (not (= $5 0)))
; (($cast: long ((8(U64) * $cast: unsigned long $3$) * 2(U64))$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $3) 2) 0) 8))
; (($cast: long $12$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $12 0) 8))
; $4 Assumption: true
(declare-const $4 Int)
(assert (and (< (- 9223372036854775808) $4) (< $4 9223372036854775807)))
(assert (not (= $4 0)))
; (0(U32) < $3) Assumption: true
(assert (< 0 $3))
; (((8(U64) * $cast: unsigned long $3$) * 2(U64)) > 0(U64)) Assumption: true
(assert (> (* (* 8 $3) 2) 0))
; (((8(U64) * $cast: unsigned long $3$) * 3(U64)) > 0(U64)) Assumption: true
(assert (> (* (* 8 $3) 3) 0))
; ($cast: unsigned long $3$ >= 32(U64)) Assumption: false
(assert (not (>= $3 32)))
; ($3 < 2(U32)) Assumption: false
(assert (not (< $3 2)))
; ($3 == 1(U32)) Assumption: false
(assert (not (= $3 1)))
; ($3 == 0(U32)) Assumption: false
(assert (not (= $3 0)))
; ($0 == 0(U32)) Assumption: false
(assert (not (= $0 0)))
(check-sat)
