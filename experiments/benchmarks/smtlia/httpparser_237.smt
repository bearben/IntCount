; output/00000372.smt: generated with canalyze.
; ($cast: unsigned int $0$ == 202(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 202))
(check-sat)
