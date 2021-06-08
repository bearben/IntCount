; output/00000041.smt: generated with canalyze.
; ($3 == 0(S32)) Assumption: true
(declare-const $3 Int)
(assert (and (< (- 2147483648) $3) (< $3 2147483647)))
(assert (= $3 0))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (not (= $2 0)))
; ($1 == 1(S32)) Assumption: true
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (= $1 1))
; $0 Assumption: false
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (= $0 0))
(check-sat)
