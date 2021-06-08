; output/00000381.smt: generated with canalyze.
; ($cast: size_t $0$ < 33(U64)) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (< $0 33)))
(check-sat)
