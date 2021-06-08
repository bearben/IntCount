; output/00000107.smt: generated with canalyze.
; ($5 >= (($2 + 1(S32)) + 1(S32))) Assumption: false
(declare-const $5 Int)
(assert (and (< (- 2147483648) $5) (< $5 2147483647)))
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (not (>= $5 (+ (+ $2 1) 1))))
; ($cast: int $6$ == 32(S32)) Assumption: false
(declare-const $6 Int)
(assert (and (< (- 128) $6) (< $6 127)))
(assert (not (= $6 32)))
; (($cast: long $3$ - (1(S64) * (0(S64) + $cast: long $5$))) >= 1(S64)) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (>= (- $3 (* 1 (+ 0 $5))) 1))
; ($cast: int $10$ == 32(S32)) Assumption: false
(declare-const $10 Int)
(assert (and (< (- 128) $10) (< $10 127)))
(assert (not (= $10 32)))
; (($cast: long $3$ - (1(S64) * (0(S64) + $cast: long (($2 + 1(S32)) + 1(S32))$))) >= 1(S64)) Assumption: true
(assert (>= (- $3 (* 1 (+ 0 (+ (+ $2 1) 1)))) 1))
; ($cast: int $9$ == 32(S32)) Assumption: true
(declare-const $9 Int)
(assert (and (< (- 128) $9) (< $9 127)))
(assert (= $9 32))
; (($cast: long $3$ - (1(S64) * (0(S64) + $cast: long ($2 + 1(S32))$))) >= 1(S64)) Assumption: true
(assert (>= (- $3 (* 1 (+ 0 (+ $2 1)))) 1))
; ($cast: int $4$ == 32(S32)) Assumption: true
(declare-const $4 Int)
(assert (and (< (- 128) $4) (< $4 127)))
(assert (= $4 32))
; (($cast: long $3$ - (1(S64) * (0(S64) + $cast: long $2$))) >= 1(S64)) Assumption: true
(assert (>= (- $3 (* 1 (+ 0 $2))) 1))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
