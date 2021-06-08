; output/00000374.smt: generated with canalyze.
; $17 Assumption: true
(declare-const $17 Int)
(assert (and (< (- 9223372036854775808) $17) (< $17 9223372036854775807)))
(assert (not (= $17 0)))
; ($16 & 16(S32)) Assumption: true
; [sym$regval:23 [field: [field: [sym$regval:5 [var: T]$]->expired]->tqh_first]$] == NULL Assumption: true
(declare-const $23 Int)
(assert (and (< (- 9223372036854775808) $23) (< $23 9223372036854775807)))
(assert (= $23 0))
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
