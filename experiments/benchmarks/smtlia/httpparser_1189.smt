; output/00002437.smt: generated with canalyze.
; $7 Assumption: false
(declare-const $7 Int)
(assert (and (< (- 2147483648) $7) (< $7 2147483647)))
(assert (= $7 0))
; ($cast: int $2$ & 4(S32)) Assumption: true
; ($cast: int $14$ > 0(S32)) Assumption: true
(declare-const $14 Int)
(assert (and (< 0 $14) (< $14 65535)))
(assert (> $14 0))
; ($cast: int $1$ > 0(S32)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 65535)))
(assert (> $1 0))
; ((328600(S64) - (65720(S64) * (0(S64) + $cast: long $0$))) >= 65720(S64)) Assumption: true
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (>= (- 328600 (* 65720 (+ 0 $0))) 65720))
(check-sat)
