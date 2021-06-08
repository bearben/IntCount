; output/00000009.smt: generated with canalyze.
; (2(U32) < $1) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (not (< 2 $1)))
; (($cast: long $3$ - (8(S64) * (0(S64) + $cast: long (1(U32) + $1)$))) >= 8(S64)) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (>= (- $3 (* 8 (+ 0 (+ 1 $1)))) 8))
; (1(U32) < $1) Assumption: true
(assert (< 1 $1))
; (($cast: long $3$ - (8(S64) * (0(S64) + $cast: long (0(U32) + $1)$))) >= 8(S64)) Assumption: true
(assert (>= (- $3 (* 8 (+ 0 (+ 0 $1)))) 8))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; (0(U32) < $1) Assumption: true
(assert (< 0 $1))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
