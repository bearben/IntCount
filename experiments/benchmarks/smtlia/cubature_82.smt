; output/00000165.smt: generated with canalyze.
; ((16(U64) * $cast: unsigned long $0$) > 0(U64)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (> (* 16 $0) 0))
(check-sat)
