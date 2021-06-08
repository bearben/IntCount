; output/00000346.smt: generated with canalyze.
; (2(U32) < $11) Assumption: false
(declare-const $11 Int)
(assert (and (< 0 $11) (< $11 4294967295)))
(assert (not (< 2 $11)))
; (($cast: long $15$ - 24(S64)) >= 24(S64)) Assumption: true
(declare-const $15 Int)
(assert (and (< 0 $15) (< $15 18446744073709551615)))
(assert (>= (- $15 24) 24))
; (1(U32) < $11) Assumption: true
(assert (< 1 $11))
; (($cast: long $15$ - 0(S64)) >= 24(S64)) Assumption: true
(assert (>= (- $15 0) 24))
; [sym$regval:14 [field: [sym$regval:6 [field: [sym$regval:0 [var: plan]$]->output_plan]$]->c2r_resolve]$] != NULL Assumption: false
(declare-const $14 Int)
(assert (and (< (- 9223372036854775808) $14) (< $14 9223372036854775807)))
(assert (not (not (= $14 0))))
; $13 Assumption: true
(declare-const $13 Int)
(assert (and (< (- 9223372036854775808) $13) (< $13 9223372036854775807)))
(assert (not (= $13 0)))
; ((($11 + 0(U32)) & 1(U32)) == 1(U32)) Assumption: false
; [sym$regval:12 [field: [sym$regval:6 [field: [sym$regval:0 [var: plan]$]->output_plan]$]->r2c_resolve]$] != NULL Assumption: false
(declare-const $12 Int)
(assert (and (< (- 9223372036854775808) $12) (< $12 9223372036854775807)))
(assert (not (not (= $12 0))))
; $6 Assumption: true
(declare-const $6 Int)
(assert (and (< (- 9223372036854775808) $6) (< $6 9223372036854775807)))
(assert (not (= $6 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
