; output/00000002.smt: generated with canalyze.
; $0 Assumption: false
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (= $0 0))
(check-sat)
