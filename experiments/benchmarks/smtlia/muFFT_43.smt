; output/00000060.smt: generated with canalyze.
; ($1 < 0(S32)) Assumption: false
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (not (< $1 0)))
(check-sat)
