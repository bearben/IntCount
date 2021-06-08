; output/00000025.smt: generated with canalyze.
; ($4 < $3) Assumption: false
(declare-const $4 Int)
(assert (and (< (- 2147483648) $4) (< $4 2147483647)))
(declare-const $3 Int)
(assert (and (< (- 2147483648) $3) (< $3 2147483647)))
(assert (not (< $4 $3)))
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
