; output/00000016.smt: generated with canalyze.
; (($cast: long $6$ - (8(S64) * (0(S64) + $cast: long $1$))) >= 8(S64)) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 18446744073709551615)))
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (>= (- $6 (* 8 (+ 0 $1))) 8))
; ((($2 + 1(S32)) - 1(S32)) > $1) Assumption: false
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (not (> (- (+ $2 1) 1) $1)))
; (($cast: long $6$ - (8(S64) * (0(S64) + $cast: long ($2 + 1(S32))$))) >= 8(S64)) Assumption: true
(assert (>= (- $6 (* 8 (+ 0 (+ $2 1)))) 8))
; (($cast: long $6$ - (8(S64) * (0(S64) + $cast: long (($2 + 1(S32)) - 1(S32))$))) >= 8(S64)) Assumption: true
(assert (>= (- $6 (* 8 (+ 0 (- (+ $2 1) 1)))) 8))
; $4 Assumption: true
(declare-const $4 Int)
(assert (and (< (- 9223372036854775808) $4) (< $4 9223372036854775807)))
(assert (not (= $4 0)))
; (($2 + 1(S32)) > $1) Assumption: true
(assert (> (+ $2 1) $1))
; ($2 == $3) Assumption: false
(declare-const $3 Int)
(assert (and (< (- 2147483648) $3) (< $3 2147483647)))
(assert (not (= $2 $3)))
; ($1 <= $2) Assumption: true
(assert (<= $1 $2))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
; ($1 >= 0(S32)) Assumption: true
(assert (>= $1 0))
; [sym$regval:0 [var: v]$] != NULL Assumption: true
(assert (not (= $0 0)))
(check-sat)
