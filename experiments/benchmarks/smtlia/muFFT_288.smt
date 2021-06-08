; output/00000308.smt: generated with canalyze.
; (3(U32) < $5) Assumption: false
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 4294967295)))
(assert (not (< 3 $5)))
; (($cast: long $9$ - 48(S64)) >= 24(S64)) Assumption: true
(declare-const $9 Int)
(assert (and (< 0 $9) (< $9 18446744073709551615)))
(assert (>= (- $9 48) 24))
; (2(U32) < $5) Assumption: true
(assert (< 2 $5))
; (($cast: long $9$ - 24(S64)) >= 24(S64)) Assumption: true
(assert (>= (- $9 24) 24))
; (1(U32) < $5) Assumption: true
(assert (< 1 $5))
; (($cast: long $9$ - 0(S64)) >= 24(S64)) Assumption: true
(assert (>= (- $9 0) 24))
; [sym$regval:8 [field: [sym$regval:0 [var: plan]$]->c2r_resolve]$] != NULL Assumption: true
(declare-const $8 Int)
(assert (and (< (- 9223372036854775808) $8) (< $8 9223372036854775807)))
(assert (not (= $8 0)))
; $7 Assumption: true
(declare-const $7 Int)
(assert (and (< (- 9223372036854775808) $7) (< $7 9223372036854775807)))
(assert (not (= $7 0)))
; ((($5 + 0(U32)) & 1(U32)) == 1(U32)) Assumption: true
; [sym$regval:6 [field: [sym$regval:0 [var: plan]$]->r2c_resolve]$] != NULL Assumption: false
(declare-const $6 Int)
(assert (and (< (- 9223372036854775808) $6) (< $6 9223372036854775807)))
(assert (not (not (= $6 0))))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
