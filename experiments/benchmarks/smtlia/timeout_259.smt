; output/00000359.smt: generated with canalyze.
; ($27 & 1(S32)) Assumption: false
; $25 Assumption: true
(declare-const $25 Int)
(assert (and (< (- 9223372036854775808) $25) (< $25 9223372036854775807)))
(assert (not (= $25 0)))
; (($cast: long $26$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $26 Int)
(assert (and (< 0 $26) (< $26 18446744073709551615)))
(assert (>= (- $26 0) 8))
; $24 Assumption: true
(declare-const $24 Int)
(assert (and (< (- 9223372036854775808) $24) (< $24 9223372036854775807)))
(assert (not (= $24 0)))
; [sym$regval:24 [field: [field: [sym$regval:23 [field: [field: [sym$regval:5 [var: T]$]->expired]->tqh_first]$]->tqe]->tqe_next]$] != NULL Assumption: true
(assert (not (= $24 0)))
; $23 Assumption: true
(declare-const $23 Int)
(assert (and (< (- 9223372036854775808) $23) (< $23 9223372036854775807)))
(assert (not (= $23 0)))
; [sym$regval:23 [field: [field: [sym$regval:5 [var: T]$]->expired]->tqh_first]$] == NULL Assumption: false
(assert (not (= $23 0)))
; $5 Assumption: true
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (not (= $5 0)))
; ((650(U32) + $1) == 655(U32)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (= (+ 650 $1) 655))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)