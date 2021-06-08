; output/00001798.smt: generated with canalyze.
; ($cast: int $3$ == 62(S32)) Assumption: false
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (not (= $3 62)))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; $1 Assumption: false
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (= $1 0))
; ((328600(S64) - (65720(S64) * (0(S64) + $cast: long $0$))) >= 65720(S64)) Assumption: true
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (>= (- 328600 (* 65720 (+ 0 $0))) 65720))
(check-sat)
