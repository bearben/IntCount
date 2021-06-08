; output/00000361.smt: generated with canalyze.
; ($cast: unsigned int $0$ == 303(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 303))
(check-sat)
