; output/00000374.smt: generated with canalyze.
; ($cast: unsigned int $0$ == 200(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 200))
(check-sat)
