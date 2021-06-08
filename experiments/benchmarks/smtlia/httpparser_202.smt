; output/00000337.smt: generated with canalyze.
; ($cast: unsigned int $0$ == 422(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 422))
(check-sat)
