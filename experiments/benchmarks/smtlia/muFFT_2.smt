; output/00000003.smt: generated with canalyze.
; (2(U32) < $0) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (< 2 $0)))
; (($cast: long $6$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 18446744073709551615)))
(assert (>= (- $6 8) 8))
; (($cast: long $5$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 18446744073709551615)))
(assert (>= (- $5 8) 8))
; (($cast: long $2$ - (8(S64) * (0(S64) + $cast: long ($0 - 1(U32))$))) >= 8(S64)) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
(assert (>= (- $2 (* 8 (+ 0 (- $0 1)))) 8))
; (($cast: long $2$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $2 8) 8))
; (1(U32) < $0) Assumption: true
(assert (< 1 $0))
; (($cast: long $6$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $6 0) 8))
; (($cast: long $5$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $5 0) 8))
; $4 Assumption: true
(declare-const $4 Int)
(assert (and (< (- 9223372036854775808) $4) (< $4 9223372036854775807)))
(assert (not (= $4 0)))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; (($cast: long $2$ - (8(S64) * (0(S64) + $cast: long ($0 - 0(U32))$))) >= 8(S64)) Assumption: true
(assert (>= (- $2 (* 8 (+ 0 (- $0 0)))) 8))
; (($cast: long $2$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $2 0) 8))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; (0(U32) < $0) Assumption: true
(assert (< 0 $0))
(check-sat)
