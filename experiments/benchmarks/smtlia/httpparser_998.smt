; output/00001848.smt: generated with canalyze.
; ($cast: int $7$ & 64(S32)) Assumption: true
; ($cast: int $4$ == 304(S32)) Assumption: false
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 4294967295)))
(assert (not (= $4 304)))
; ($cast: int $4$ == 204(S32)) Assumption: false
(assert (not (= $4 204)))
; (($cast: int $4$ / 100(S32)) == 1(S32)) Assumption: false
(assert (not (= (/ $4 100) 1)))
; ($cast: int $8$ == 0(S32)) Assumption: false
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 4294967295)))
(assert (not (= $8 0)))
; ($cast: int $7$ & 4(S32)) Assumption: false
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
