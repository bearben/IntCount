; output/00000146.smt: generated with canalyze.
; (((8(U64) * $cast: unsigned long $0$) * 3(U64)) > 0(U64)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (> (* (* 8 $0) 3) 0))
; ($cast: unsigned long $0$ >= 32(U64)) Assumption: false
(assert (not (>= $0 32)))
; ($0 < 2(U32)) Assumption: false
(assert (not (< $0 2)))
(check-sat)
