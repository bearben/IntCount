; output/00000306.smt: generated with canalyze.
; ($5 & 1(S32)) Assumption: false
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; (($cast: long $4$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 0) 8))
; [sym$regval:2 [field: [field: [sym$regval:1 [field: [field: [sym$regval:0 [var: T]$]->expired]->tqh_first]$]->tqe]->tqe_next]$] != NULL Assumption: false
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (not (= $2 0))))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; [sym$regval:1 [field: [field: [sym$regval:0 [var: T]$]->expired]->tqh_first]$] == NULL Assumption: false
(assert (not (= $1 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
