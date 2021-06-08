; output/00000445.smt: generated with canalyze.
; (1(U32) < $11) Assumption: false
(declare-const $11 Int)
(assert (and (< 0 $11) (< $11 4294967295)))
(assert (not (< 1 $11)))
; (($cast: long $26$ - 0(S64)) >= 24(S64)) Assumption: true
(declare-const $26 Int)
(assert (and (< 0 $26) (< $26 18446744073709551615)))
(assert (>= (- $26 0) 24))
; $25 Assumption: true
(declare-const $25 Int)
(assert (and (< (- 9223372036854775808) $25) (< $25 9223372036854775807)))
(assert (not (= $25 0)))
; (1(U32) < $5) Assumption: false
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 4294967295)))
(assert (not (< 1 $5)))
; (0(U32) < $5) Assumption: true
(assert (< 0 $5))
; (1(U32) < $10) Assumption: false
(declare-const $10 Int)
(assert (and (< 0 $10) (< $10 4294967295)))
(assert (not (< 1 $10)))
; (($cast: long $14$ - 0(S64)) >= 24(S64)) Assumption: true
(declare-const $14 Int)
(assert (and (< 0 $14) (< $14 18446744073709551615)))
(assert (>= (- $14 0) 24))
; $13 Assumption: true
(declare-const $13 Int)
(assert (and (< (- 9223372036854775808) $13) (< $13 9223372036854775807)))
(assert (not (= $13 0)))
; (($10 & 1(U32)) == 0(U32)) Assumption: false
; (($11 & 1(U32)) == 1(U32)) Assumption: true
; [sym$regval:6 [field: [sym$regval:0 [var: plan]$]->c2r_resolve]$] != NULL Assumption: true
(declare-const $6 Int)
(assert (and (< (- 9223372036854775808) $6) (< $6 9223372036854775807)))
(assert (not (= $6 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
