; output/00000039.smt: generated with canalyze.
; ($0 > 0(U64)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 18446744073709551615)))
(assert (> $0 0))
; ($0 < 48(U64)) Assumption: false
(assert (not (< $0 48)))
(check-sat)
