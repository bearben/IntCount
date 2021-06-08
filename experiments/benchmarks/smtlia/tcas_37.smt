; output/00000036.smt: generated with canalyze.
; $2 Assumption: false
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (= $2 0))
; ($1 == 1(S32)) Assumption: false
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (not (= $1 1)))
; $0 Assumption: false
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (= $0 0))
(check-sat)
