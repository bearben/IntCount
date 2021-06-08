; output/00000016.smt: generated with canalyze.
; (1(U32) < $0) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (< 1 $0)))
; (($cast: long ((8(U64) * $cast: unsigned long $0$) * 2(U64))$ - (8(S64) * (0(S64) + $cast: long (0(U32) + $0)$))) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $0) 2) (* 8 (+ 0 (+ 0 $0)))) 8))
; (($cast: long $5$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 18446744073709551615)))
(assert (>= (- $5 0) 8))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; (($cast: long ((8(U64) * $cast: unsigned long $0$) * 2(U64))$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- (* (* 8 $0) 2) 0) 8))
; (($cast: long $4$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 0) 8))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; (0(U32) < $0) Assumption: true
(assert (< 0 $0))
; (((8(U64) * $cast: unsigned long $0$) * 2(U64)) > 0(U64)) Assumption: true
(assert (> (* (* 8 $0) 2) 0))
(check-sat)
