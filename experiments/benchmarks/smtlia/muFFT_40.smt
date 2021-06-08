; output/00000055.smt: generated with canalyze.
; (1(U32) < ($6 >> 3(S32))) Assumption: false
; (2(U32) < $4) Assumption: false
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 4294967295)))
(assert (not (< 2 $4)))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long (1(U32) + (7(U32) * $5))$))) >= 8(S64)) Assumption: true
(declare-const $9 Int)
(assert (and (< 0 $9) (< $9 18446744073709551615)))
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 4294967295)))
(assert (>= (- $9 (* 8 (+ 0 (+ 1 (* 7 $5))))) 8))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long (1(U32) + (6(U32) * $5))$))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ 0 (+ 1 (* 6 $5))))) 8))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long (1(U32) + (5(U32) * $5))$))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ 0 (+ 1 (* 5 $5))))) 8))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long (1(U32) + (4(U32) * $5))$))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ 0 (+ 1 (* 4 $5))))) 8))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long (1(U32) + (3(U32) * $5))$))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ 0 (+ 1 (* 3 $5))))) 8))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long (1(U32) + (2(U32) * $5))$))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ 0 (+ 1 (* 2 $5))))) 8))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long (1(U32) + (1(U32) * $5))$))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ 0 (+ 1 (* 1 $5))))) 8))
; (($cast: long $9$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $9 8) 8))
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (1(U32) + (7(U32) * ($5 * ($6 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (1(U32) + (6(U32) * ($5 * ($6 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (1(U32) + (5(U32) * ($5 * ($6 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (1(U32) + (4(U32) * ($5 * ($6 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (1(U32) + (3(U32) * ($5 * ($6 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (1(U32) + (2(U32) * ($5 * ($6 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (1(U32) + ($5 * ($6 >> 3(S32))))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 8) 8))
; (1(U32) < $4) Assumption: true
(assert (< 1 $4))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (7(U32) * $5))$))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ 0 (+ 0 (* 7 $5))))) 8))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (6(U32) * $5))$))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ 0 (+ 0 (* 6 $5))))) 8))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (5(U32) * $5))$))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ 0 (+ 0 (* 5 $5))))) 8))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (4(U32) * $5))$))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ 0 (+ 0 (* 4 $5))))) 8))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (3(U32) * $5))$))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ 0 (+ 0 (* 3 $5))))) 8))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (2(U32) * $5))$))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ 0 (+ 0 (* 2 $5))))) 8))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (1(U32) * $5))$))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ 0 (+ 0 (* 1 $5))))) 8))
; (($cast: long $9$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $9 0) 8))
; (($cast: long $8$ - 56(S64)) >= 8(S64)) Assumption: true
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 18446744073709551615)))
(assert (>= (- $8 56) 8))
; (($cast: long $8$ - 48(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $8 48) 8))
; (($cast: long $8$ - 40(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $8 40) 8))
; (($cast: long $8$ - 16(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $8 16) 8))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (7(U32) * ($5 * ($6 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (6(U32) * ($5 * ($6 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (5(U32) * ($5 * ($6 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (4(U32) * ($5 * ($6 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (3(U32) * ($5 * ($6 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (2(U32) * ($5 * ($6 >> 3(S32)))))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (0(U32) + ($5 * ($6 >> 3(S32))))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 0) 8))
; (0(U32) < $4) Assumption: true
(assert (< 0 $4))
; (0(U32) < ($6 >> 3(S32))) Assumption: true
(check-sat)
