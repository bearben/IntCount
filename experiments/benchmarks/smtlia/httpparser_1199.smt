; output/00002452.smt: generated with canalyze.
; ($7 != $8) Assumption: false
(declare-const $7 Int)
(assert (and (< (- 2147483648) $7) (< $7 2147483647)))
(declare-const $8 Int)
(assert (and (< (- 2147483648) $8) (< $8 2147483647)))
(assert (not (not (= $7 $8))))
; ($cast: unsigned int $6$ == 0(U32)) Assumption: false
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 4294967295)))
(assert (not (= $6 0)))
; ($cast: int $4$ != $cast: int $5$) Assumption: false
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 65535)))
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 65535)))
(assert (not (not (= $4 $5))))
; ($cast: int $2$ != $cast: int $3$) Assumption: false
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 65535)))
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 65535)))
(assert (not (not (= $2 $3))))
; ((328600(S64) - (65720(S64) * (0(S64) + $cast: long $0$))) >= 65720(S64)) Assumption: true
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (>= (- 328600 (* 65720 (+ 0 $0))) 65720))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
(check-sat)
