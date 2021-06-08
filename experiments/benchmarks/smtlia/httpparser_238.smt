; output/00000373.smt: generated with canalyze.
; ($cast: unsigned int $0$ == 201(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 201))
(check-sat)
