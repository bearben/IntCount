; output/00000368.smt: generated with canalyze.
; ($cast: unsigned int $0$ == 206(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 206))
(check-sat)
