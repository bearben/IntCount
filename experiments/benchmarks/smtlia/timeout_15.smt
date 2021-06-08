; output/00000014.smt: generated with canalyze.
; $5 Assumption: true
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (not (= $5 0)))
; (($cast: long $6$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 18446744073709551615)))
(assert (>= (- $6 0) 8))
; ($3 > $4) Assumption: false
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (not (> $3 $4)))
; $15 Assumption: false
(declare-const $15 Int)
(assert (and (< (- 2147483648) $15) (< $15 2147483647)))
(assert (= $15 0))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
; $13 Assumption: true
(declare-const $13 Int)
(assert (and (< (- 9223372036854775808) $13) (< $13 9223372036854775807)))
(assert (not (= $13 0)))
; (($cast: long $14$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $14 Int)
(assert (and (< 0 $14) (< $14 18446744073709551615)))
(assert (>= (- $14 0) 8))
; [sym$regval:12 [field: [field: [sym$regval:1 [var: to]$]->tqe]->tqe_next]$] != NULL Assumption: false
(declare-const $12 Int)
(assert (and (< (- 9223372036854775808) $12) (< $12 9223372036854775807)))
(assert (not (not (= $12 0))))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
(check-sat)
