; output/00000973.smt: generated with canalyze.
; (2(U32) < $2) Assumption: false
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 4294967295)))
(assert (not (< 2 $2)))
; (($cast: long $4$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 8) 8))
; (1(U32) < $2) Assumption: true
(assert (< 1 $2))
; (($cast: long $4$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $4 0) 8))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; (0(U32) < $2) Assumption: true
(assert (< 0 $2))
; (($cast: long $1$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 18446744073709551615)))
(assert (>= (- $1 0) 8))
(check-sat)
