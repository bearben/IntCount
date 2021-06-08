; output/00001853.smt: generated with canalyze.
; ($cast: int $7$ & 4(S32)) Assumption: true
; ($cast: int $6$ > 0(S32)) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 65535)))
(assert (> $6 0))
; ($cast: int $5$ > 0(S32)) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 65535)))
(assert (> $5 0))
; ((328600(S64) - (65720(S64) * (0(S64) + $cast: long $2$))) >= 65720(S64)) Assumption: true
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (>= (- 328600 (* 65720 (+ 0 $2))) 65720))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (not (= $1 0)))
(check-sat)
