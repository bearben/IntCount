; output/00000154.smt: generated with canalyze.
; $6 Assumption: true
(declare-const $6 Int)
(assert (and (< (- 9223372036854775808) $6) (< $6 9223372036854775807)))
(assert (not (= $6 0)))
; (($cast: long $7$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
(assert (>= (- $7 0) 8))
; ($4 > $3) Assumption: false
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (not (> $4 $3)))
; $24 Assumption: false
(declare-const $24 Int)
(assert (and (< (- 2147483648) $24) (< $24 2147483647)))
(assert (= $24 0))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; $14 Assumption: true
(declare-const $14 Int)
(assert (and (< (- 9223372036854775808) $14) (< $14 9223372036854775807)))
(assert (not (= $14 0)))
; (($cast: long $15$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $15 Int)
(assert (and (< 0 $15) (< $15 18446744073709551615)))
(assert (>= (- $15 0) 8))
; [sym$regval:13 [field: [field: [sym$regval:0 [var: to]$]->tqe]->tqe_next]$] != NULL Assumption: false
(declare-const $13 Int)
(assert (and (< (- 9223372036854775808) $13) (< $13 9223372036854775807)))
(assert (not (not (= $13 0))))
; $5 Assumption: true
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (not (= $5 0)))
; ($1 & 2(S32)) Assumption: true
; ($1 & 1(S32)) Assumption: false
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
