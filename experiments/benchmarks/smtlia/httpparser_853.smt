; output/00001565.smt: generated with canalyze.
; ($cast: int $3$ & 2(S32)) Assumption: false
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
