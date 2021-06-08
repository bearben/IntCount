; output/00000126.smt: generated with canalyze.
; ($0 < 13(S32)) Assumption: true
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (< $0 13))
(check-sat)
