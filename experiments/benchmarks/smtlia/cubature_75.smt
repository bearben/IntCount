; output/00000149.smt: generated with canalyze.
; ($0 < 2(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (< $0 2))
(check-sat)
