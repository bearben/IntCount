; output/00000055.smt: generated with canalyze.
; ($7 >= $12) Assumption: false
(declare-const $7 Int)
(assert (and (< (- 2147483648) $7) (< $7 2147483647)))
(declare-const $12 Int)
(assert (and (< (- 2147483648) $12) (< $12 2147483647)))
(assert (not (>= $7 $12)))
; ((16(S64) - (4(S64) * (0(S64) + $cast: long $11$))) >= 4(S64)) Assumption: true
(declare-const $11 Int)
(assert (and (< (- 2147483648) $11) (< $11 2147483647)))
(assert (>= (- 16 (* 4 (+ 0 $11))) 4))
; ($5 >= 300(S32)) Assumption: true
(declare-const $5 Int)
(assert (and (< (- 2147483648) $5) (< $5 2147483647)))
(assert (>= $5 300))
; ($9 < $10) Assumption: true
(declare-const $9 Int)
(assert (and (< (- 2147483648) $9) (< $9 2147483647)))
(declare-const $10 Int)
(assert (and (< (- 2147483648) $10) (< $10 2147483647)))
(assert (< $9 $10))
; ($7 > $8) Assumption: false
(declare-const $8 Int)
(assert (and (< (- 2147483648) $8) (< $8 2147483647)))
(assert (not (> $7 $8)))
; $6 Assumption: false
(declare-const $6 Int)
(assert (and (< (- 2147483648) $6) (< $6 2147483647)))
(assert (= $6 0))
; $2 Assumption: false
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (= $2 0))
; ($1 == 1(S32)) Assumption: false
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (not (= $1 1)))
; ($5 > 600(S32)) Assumption: true
(assert (> $5 600))
; ($4 <= 600(S32)) Assumption: true
(declare-const $4 Int)
(assert (and (< (- 2147483648) $4) (< $4 2147483647)))
(assert (<= $4 600))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (not (= $0 0)))
(check-sat)
