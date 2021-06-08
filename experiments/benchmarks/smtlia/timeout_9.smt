; output/00000008.smt: generated with canalyze.
; ((32(S64) - (8(S64) * (0(S64) + $cast: long $cast: int ($8 / 64(S64))$$))) >= 8(S64)) Assumption: true
(declare-const $8 Int)
(assert (and (< (- 9223372036854775808) $8) (< $8 9223372036854775807)))
(assert (>= (- 32 (* 8 (+ 0 (/ $8 64)))) 8))
; [sym$regval:7 [field: [sym$regval:1 [field: [sym$regval:0 [var: to]$]->pending]$]->tqh_first]$] == NULL Assumption: true
(declare-const $7 Int)
(assert (and (< (- 9223372036854775808) $7) (< $7 9223372036854775807)))
(assert (= $7 0))
; $6 Assumption: true
(declare-const $6 Int)
(assert (and (< (- 2147483648) $6) (< $6 2147483647)))
(assert (not (= $6 0)))
; $5 Assumption: true
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (not (= $5 0)))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; (($cast: long $4$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 0) 8))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; [sym$regval:2 [field: [field: [sym$regval:0 [var: to]$]->tqe]->tqe_next]$] != NULL Assumption: true
(assert (not (= $2 0)))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
