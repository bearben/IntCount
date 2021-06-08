; output/00001821.smt: generated with canalyze.
; ($cast: int $7$ == 62(S32)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 4294967295)))
(assert (= $7 62))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
; $6 Assumption: false
(declare-const $6 Int)
(assert (and (< (- 2147483648) $6) (< $6 2147483647)))
(assert (= $6 0))
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
