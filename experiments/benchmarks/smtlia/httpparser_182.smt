; output/00000317.smt: generated with canalyze.
; ($cast: unsigned long $cast: unsigned int $0$$ < 34(U64)) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (< $0 34)))
(check-sat)
