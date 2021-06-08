; output/00000051.smt: generated with canalyze.
; $2 Assumption: false
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (= $2 0))
; ($1 == 1(S32)) Assumption: true
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (= $1 1))
; ($5 > 600(S32)) Assumption: false
(declare-const $5 Int)
(assert (and (< (- 2147483648) $5) (< $5 2147483647)))
(assert (not (> $5 600)))
; ($4 <= 600(S32)) Assumption: true
(declare-const $4 Int)
(assert (and (< (- 2147483648) $4) (< $4 2147483647)))
(assert (<= $4 600))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (not (= $0 0)))
(check-sat)
