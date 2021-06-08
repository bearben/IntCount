; output/00000031.smt: generated with canalyze.
; (1(U32) < ($4 >> 1(S32))) Assumption: false
; (2(U32) < $6) Assumption: false
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 4294967295)))
(assert (not (< 2 $6)))
; (($cast: long $8$ - (8(S64) * (0(S64) + $cast: long (1(U32) + (1(U32) * $5))$))) >= 8(S64)) Assumption: true
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 18446744073709551615)))
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 4294967295)))
(assert (>= (- $8 (* 8 (+ 0 (+ 1 (* 1 $5))))) 8))
; (($cast: long $8$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $8 8) 8))
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (1(U32) + ($5 * ($4 >> 1(S32))))$))) >= 8(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
; (($cast: long $7$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 8) 8))
; (1(U32) < $6) Assumption: true
(assert (< 1 $6))
; (($cast: long $8$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (1(U32) * $5))$))) >= 8(S64)) Assumption: true
(assert (>= (- $8 (* 8 (+ 0 (+ 0 (* 1 $5))))) 8))
; (($cast: long $8$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $8 0) 8))
; (($cast: long $7$ - (8(S64) * (0(S64) + $cast: long (0(U32) + ($5 * ($4 >> 1(S32))))$))) >= 8(S64)) Assumption: true
; (($cast: long $7$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 0) 8))
; (0(U32) < $6) Assumption: true
(assert (< 0 $6))
; (0(U32) < ($4 >> 1(S32))) Assumption: true
(check-sat)
