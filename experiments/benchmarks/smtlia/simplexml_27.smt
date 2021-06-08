; output/00000045.smt: generated with canalyze.
; ((($1 + 1(S32)) + 1(S32)) < $2) Assumption: false
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (not (< (+ (+ $1 1) 1) $2)))
; (($cast: long $4$ - (8(S64) * (0(S64) + $cast: long (($1 + 1(S32)) + 1(S32))$))) >= 8(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 (* 8 (+ 0 (+ (+ $1 1) 1)))) 8))
; (($1 + 1(S32)) < $2) Assumption: true
(assert (< (+ $1 1) $2))
; (($cast: long $4$ - (8(S64) * (0(S64) + $cast: long ($1 + 1(S32))$))) >= 8(S64)) Assumption: true
(assert (>= (- $4 (* 8 (+ 0 (+ $1 1)))) 8))
; (($cast: long $4$ - (8(S64) * (0(S64) + $cast: long $1$))) >= 8(S64)) Assumption: true
(assert (>= (- $4 (* 8 (+ 0 $1))) 8))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; ($1 < $2) Assumption: true
(assert (< $1 $2))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
; ($1 >= 0(S32)) Assumption: true
(assert (>= $1 0))
; [sym$regval:0 [var: v]$] != NULL Assumption: true
(assert (not (= $0 0)))
(check-sat)
