; output/00000005.smt: generated with canalyze.
; (2(U32) < ($4 >> 1(S32))) Assumption: false
; (($cast: long $6$ - 24(S64)) >= 8(S64)) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 18446744073709551615)))
(assert (>= (- $6 24) 8))
; (($cast: long $6$ - 16(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $6 16) 8))
; (($cast: long $5$ - (8(S64) * (0(S64) + $cast: long (1(U32) + ($4 >> 1(S32)))$))) >= 8(S64)) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 18446744073709551615)))
; (($cast: long $5$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $5 8) 8))
; (1(U32) < ($4 >> 1(S32))) Assumption: true
; (($cast: long $6$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $6 8) 8))
; (($cast: long $6$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $6 0) 8))
; (($cast: long $5$ - (8(S64) * (0(S64) + $cast: long (0(U32) + ($4 >> 1(S32)))$))) >= 8(S64)) Assumption: true
; (($cast: long $5$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $5 0) 8))
; (0(U32) < ($4 >> 1(S32))) Assumption: true
(check-sat)
