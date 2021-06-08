; output/00000161.smt: generated with canalyze.
; ($0 != 1(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (= $0 1)))
(check-sat)
