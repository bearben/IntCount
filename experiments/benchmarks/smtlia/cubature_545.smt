; output/00000882.smt: generated with canalyze.
; (2(U32) < $0) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (< 2 $0)))
; (($cast: long $5$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 18446744073709551615)))
(assert (>= (- $5 8) 8))
; (($cast: long $3$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (>= (- $3 8) 8))
; (1(U32) < $0) Assumption: true
(assert (< 1 $0))
; (($cast: long $5$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $5 0) 8))
; $4 Assumption: true
(declare-const $4 Int)
(assert (and (< (- 9223372036854775808) $4) (< $4 9223372036854775807)))
(assert (not (= $4 0)))
; (($cast: long $3$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $3 0) 8))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; (0(U32) < $0) Assumption: true
(assert (< 0 $0))
; (((8(U64) * $cast: unsigned long $1$) * 3(U64)) > 0(U64)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (> (* (* 8 $1) 3) 0))
; ($cast: unsigned long $1$ >= 32(U64)) Assumption: false
(assert (not (>= $1 32)))
; ($1 < 2(U32)) Assumption: false
(assert (not (< $1 2)))
; ($1 == 1(U32)) Assumption: false
(assert (not (= $1 1)))
; ($1 == 0(U32)) Assumption: false
(assert (not (= $1 0)))
; ($0 == 0(U32)) Assumption: false
(assert (not (= $0 0)))
(check-sat)