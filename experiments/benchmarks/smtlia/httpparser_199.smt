; output/00000334.smt: generated with canalyze.
; ($cast: unsigned int $0$ == 426(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 426))
(check-sat)
