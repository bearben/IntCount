; output/00000943.smt: generated with canalyze.
; (((8(U64) * $cast: unsigned long $3$) * 2(U64)) > 0(U64)) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (> (* (* 8 $3) 2) 0))
; (((8(U64) * $cast: unsigned long $3$) * 3(U64)) > 0(U64)) Assumption: true
(assert (> (* (* 8 $3) 3) 0))
; ($cast: unsigned long $3$ >= 32(U64)) Assumption: false
(assert (not (>= $3 32)))
; ($3 < 2(U32)) Assumption: false
(assert (not (< $3 2)))
; ($3 == 1(U32)) Assumption: false
(assert (not (= $3 1)))
; ($3 == 0(U32)) Assumption: false
(assert (not (= $3 0)))
; ($0 == 0(U32)) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (= $0 0)))
(check-sat)
