; output/00000148.smt: generated with canalyze.
; ($cast: unsigned long $0$ >= 32(U64)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (>= $0 32))
; ($0 < 2(U32)) Assumption: false
(assert (not (< $0 2)))
(check-sat)
