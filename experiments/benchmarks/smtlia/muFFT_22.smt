; output/00000023.smt: generated with canalyze.
; (2(U32) < ($4 >> 3(S32))) Assumption: false
; (($cast: long $7$ - 120(S64)) >= 8(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
(assert (>= (- $7 120) 8))
; (($cast: long $7$ - 112(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 112) 8))
; (($cast: long $7$ - 104(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 104) 8))
; (($cast: long $7$ - 96(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 96) 8))
; (($cast: long $7$ - 88(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 88) 8))
; (($cast: long $7$ - 80(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 80) 8))
; (($cast: long $7$ - 72(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 72) 8))
; (($cast: long $7$ - 64(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 64) 8))
; (($cast: long $5$ - (8(S64) * (0(S64) + $cast: long (1(U32) + (3(U32) * ($4 >> 3(S32))))$))) >= 8(S64)) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 18446744073709551615)))
; (($cast: long $5$ - (8(S64) * (0(S64) + $cast: long (1(U32) + (2(U32) * ($4 >> 3(S32))))$))) >= 8(S64)) Assumption: true
; (($cast: long $5$ - (8(S64) * (0(S64) + $cast: long (1(U32) + ($4 >> 3(S32)))$))) >= 8(S64)) Assumption: true
; (($cast: long $5$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $5 8) 8))
; (1(U32) < ($4 >> 3(S32))) Assumption: true
; (($cast: long $7$ - 56(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 56) 8))
; (($cast: long $7$ - 48(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 48) 8))
; (($cast: long $7$ - 40(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 40) 8))
; (($cast: long $7$ - 32(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 32) 8))
; (($cast: long $7$ - 24(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 24) 8))
; (($cast: long $7$ - 16(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 16) 8))
; (($cast: long $7$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 8) 8))
; (($cast: long $7$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 0) 8))
; (($cast: long $6$ - 56(S64)) >= 8(S64)) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 18446744073709551615)))
(assert (>= (- $6 56) 8))
; (($cast: long $6$ - 48(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $6 48) 8))
; (($cast: long $6$ - 40(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $6 40) 8))
; (($cast: long $6$ - 32(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $6 32) 8))
; (($cast: long $6$ - 16(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $6 16) 8))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; (($cast: long $5$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (3(U32) * ($4 >> 3(S32))))$))) >= 8(S64)) Assumption: true
; (($cast: long $5$ - (8(S64) * (0(S64) + $cast: long (0(U32) + (2(U32) * ($4 >> 3(S32))))$))) >= 8(S64)) Assumption: true
; (($cast: long $5$ - (8(S64) * (0(S64) + $cast: long (0(U32) + ($4 >> 3(S32)))$))) >= 8(S64)) Assumption: true
; (($cast: long $5$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $5 0) 8))
; (0(U32) < ($4 >> 3(S32))) Assumption: true
(check-sat)
