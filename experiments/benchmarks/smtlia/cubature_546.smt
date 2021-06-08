; output/00000883.smt: generated with canalyze.
; (((8(U64) * $cast: unsigned long $1$) * 2(U64)) > 0(U64)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (> (* (* 8 $1) 2) 0))
; (((8(U64) * $cast: unsigned long $1$) * 3(U64)) > 0(U64)) Assumption: true
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
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (= $0 0)))
(check-sat)
