; output/00001999.smt: generated with canalyze.
; $1 Assumption: false
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (= $1 0))
(check-sat)
