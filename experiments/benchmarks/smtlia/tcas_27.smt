; output/00000026.smt: generated with canalyze.
; ($7 >= 300(S32)) Assumption: false
(declare-const $7 Int)
(assert (and (< (- 2147483648) $7) (< $7 2147483647)))
(assert (not (>= $7 300)))
; ($4 < $3) Assumption: true
(declare-const $4 Int)
(assert (and (< (- 2147483648) $4) (< $4 2147483647)))
(declare-const $3 Int)
(assert (and (< (- 2147483648) $3) (< $3 2147483647)))
(assert (< $4 $3))
; ($1 > $2) Assumption: true
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (> $1 $2))
; $0 Assumption: false
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (= $0 0))
(check-sat)
