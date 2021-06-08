; output/00000325.smt: generated with canalyze.
; ($cast: unsigned int $0$ == 504(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 504))
(check-sat)
