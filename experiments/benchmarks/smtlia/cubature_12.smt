; output/00000014.smt: generated with canalyze.
; (((8(U64) * $cast: unsigned long $0$) * 2(U64)) > 0(U64)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (> (* (* 8 $0) 2) 0))
(check-sat)
