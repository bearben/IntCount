; output/00002025.smt: generated with canalyze.
; $0 Assumption: false
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (= $0 0))
(check-sat)
