; output/00001822.smt: generated with canalyze.
; $6 Assumption: true
(declare-const $6 Int)
(assert (and (< (- 2147483648) $6) (< $6 2147483647)))
(assert (not (= $6 0)))
; ((328600(S64) - (65720(S64) * (0(S64) + $cast: long $3$))) >= 65720(S64)) Assumption: true
(declare-const $3 Int)
(assert (and (< (- 2147483648) $3) (< $3 2147483647)))
(assert (>= (- 328600 (* 65720 (+ 0 $3))) 65720))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (not (= $1 0)))
(check-sat)
