; output/00000364.smt: generated with canalyze.
; ($cast: unsigned int $0$ == 300(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 300))
(check-sat)
