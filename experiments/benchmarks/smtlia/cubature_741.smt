; output/00001146.smt: generated with canalyze.
; (1(U64) < $2) Assumption: false
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
(assert (not (< 1 $2)))
; (($7 + 0(U32)) <= $11) Assumption: false
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 4294967295)))
(declare-const $11 Int)
(assert (and (< 0 $11) (< $11 4294967295)))
(assert (not (<= (+ $7 0) $11)))
; (($cast: long $10$ - (4(S64) * (0(S64) + $cast: long $5$))) >= 4(S64)) Assumption: true
(declare-const $10 Int)
(assert (and (< 0 $10) (< $10 18446744073709551615)))
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 4294967295)))
(assert (>= (- $10 (* 4 (+ 0 $5))) 4))
; $9 Assumption: true
(declare-const $9 Int)
(assert (and (< (- 9223372036854775808) $9) (< $9 9223372036854775807)))
(assert (not (= $9 0)))
; ($5 == $8) Assumption: false
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 4294967295)))
(assert (not (= $5 $8)))
; ((80(S64) - (4(S64) * (0(S64) + $cast: long $5$))) >= 4(S64)) Assumption: true
(assert (>= (- 80 (* 4 (+ 0 $5))) 4))
; ($5 >= $6) Assumption: false
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 4294967295)))
(assert (not (>= $5 $6)))
; (($cast: long $4$ - 0(S64)) >= 96(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 0) 96))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; (0(U64) < $2) Assumption: true
(assert (< 0 $2))
(check-sat)
