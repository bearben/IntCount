; output/00000001.smt: generated with canalyze.
; ((16(S64) - (4(S64) * (0(S64) + $cast: long $0$))) >= 4(S64)) Assumption: true
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (>= (- 16 (* 4 (+ 0 $0))) 4))
(check-sat)
