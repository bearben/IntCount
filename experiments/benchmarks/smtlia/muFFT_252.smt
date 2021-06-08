; output/00000272.smt: generated with canalyze.
; [sym$regval:11 [field: [sym$regval:0 [var: plan]$]->output_plan]$] == NULL Assumption: true
(declare-const $11 Int)
(assert (and (< (- 9223372036854775808) $11) (< $11 9223372036854775807)))
(assert (= $11 0))
; [sym$regval:6 [ele: index:1(S64), type:mufft_plan_1d *, [field: [sym$regval:0 [var: plan]$]->plans]]$] == NULL Assumption: true
(declare-const $6 Int)
(assert (and (< (- 9223372036854775808) $6) (< $6 9223372036854775807)))
(assert (= $6 0))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; [sym$regval:1 [ele: index:0(S64), type:mufft_plan_1d *, [field: [sym$regval:0 [var: plan]$]->plans]]$] == NULL Assumption: false
(assert (not (= $1 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
; [sym$regval:0 [var: plan]$] == NULL Assumption: false
(assert (not (= $0 0)))
(check-sat)
