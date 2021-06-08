; output/00000006.smt: generated with canalyze.
; ($0 < $1) Assumption: false
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (not (< $0 $1)))
(check-sat)
