; output/00000000.smt: generated with canalyze.
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; (($cast: long $2$ - 0(S64)) >= 4(S64)) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
(assert (>= (- $2 0) 4))
; (($cast: long $1$ - 0(S64)) >= 4(S64)) Assumption: true
(assert (>= (- $1 0) 4))
(check-sat)
