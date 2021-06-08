; output/00000339.smt: generated with canalyze.
; (1(U32) < $8) Assumption: false
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 4294967295)))
(assert (not (< 1 $8)))
; (($cast: long $12$ - 0(S64)) >= 24(S64)) Assumption: true
(declare-const $12 Int)
(assert (and (< 0 $12) (< $12 18446744073709551615)))
(assert (>= (- $12 0) 24))
; [sym$regval:11 [field: [sym$regval:2 [ele: index:(0(S64) + $cast: long $regval:1 [var: block]$$), type:mufft_plan_1d *, [field: [sym$regval:0 [var: plan]$]->plans]]$]->c2r_resolve]$] != NULL Assumption: false
(declare-const $11 Int)
(assert (and (< (- 9223372036854775808) $11) (< $11 9223372036854775807)))
(assert (not (not (= $11 0))))
; $10 Assumption: true
(declare-const $10 Int)
(assert (and (< (- 9223372036854775808) $10) (< $10 9223372036854775807)))
(assert (not (= $10 0)))
; ((($8 + 1(U32)) & 1(U32)) == 1(U32)) Assumption: true
; [sym$regval:9 [field: [sym$regval:2 [ele: index:(0(S64) + $cast: long $regval:1 [var: block]$$), type:mufft_plan_1d *, [field: [sym$regval:0 [var: plan]$]->plans]]$]->r2c_resolve]$] != NULL Assumption: true
(declare-const $9 Int)
(assert (and (< (- 9223372036854775808) $9) (< $9 9223372036854775807)))
(assert (not (= $9 0)))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; ((16(S64) - (8(S64) * (0(S64) + $cast: long $1$))) >= 8(S64)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (>= (- 16 (* 8 (+ 0 $1))) 8))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
