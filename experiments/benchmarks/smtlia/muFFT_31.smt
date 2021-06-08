; output/00000038.smt: generated with canalyze.
; (1(U32) < ($4 >> 2(S32))) Assumption: false
; (1(U32) < $6) Assumption: false
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 4294967295)))
(assert (not (< 1 $6)))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (3(U32) * $5))$))) >= 8(S64)) Assumption: true
(declare-const $9 Int)
(assert (and (< 0 $9) (< $9 18446744073709551615)))
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 4294967295)))
(assert (>= (- $9 (* 8 (+ 0 (+ 0 (* 3 $5))))) 8))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (2(U32) * $5))$))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ 0 (+ 0 (* 2 $5))))) 8))
; (($cast: long $9$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (1(U32) * $5))$))) >= 8(S64)) Assumption: true
(assert (>= (- $9 (* 8 (+ 0 (+ 0 (* 1 $5))))) 8))
; (($cast: long $9$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $9 0) 8))
; (($cast: long $8$ - 16(S64)) >= 8(S64)) Assumption: true
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 18446744073709551615)))
(assert (>= (- $8 16) 8))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (3(U32) * ($5 * ($4 >> 2(S32)))))$))) >= 8(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (2(U32) * ($5 * ($4 >> 2(S32)))))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (0(U32) + ($5 * ($4 >> 2(S32))))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 0) 8))
; (0(U32) < $6) Assumption: true
(assert (< 0 $6))
; (0(U32) < ($4 >> 2(S32))) Assumption: true
(check-sat)
