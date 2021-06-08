; output/00001047.smt: generated with canalyze.
; ($0 != 2(S32)) Assumption: true
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (not (= $0 2)))
; ($0 != 0(S32)) Assumption: true
(assert (not (= $0 0)))
(check-sat)
