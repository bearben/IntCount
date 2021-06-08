; output/00000030.smt: generated with canalyze.
; ($1 >= $6) Assumption: false
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(declare-const $6 Int)
(assert (and (< (- 2147483648) $6) (< $6 2147483647)))
(assert (not (>= $1 $6)))
; ((16(S64) - (4(S64) * (0(S64) + $cast: long $5$))) >= 4(S64)) Assumption: true
(declare-const $5 Int)
(assert (and (< (- 2147483648) $5) (< $5 2147483647)))
(assert (>= (- 16 (* 4 (+ 0 $5))) 4))
; ($3 < $4) Assumption: true
(declare-const $3 Int)
(assert (and (< (- 2147483648) $3) (< $3 2147483647)))
(declare-const $4 Int)
(assert (and (< (- 2147483648) $4) (< $4 2147483647)))
(assert (< $3 $4))
; (($1 + 100(S32)) > $2) Assumption: false
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (not (> (+ $1 100) $2)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (not (= $0 0)))
(check-sat)
