; output/00000070.smt: generated with canalyze.
; (1(S32) < $1) Assumption: false
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (not (< 1 $1)))
; (($cast: long $3$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (>= (- $3 8) 8))
; (($cast: long $3$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $3 0) 8))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; (0(S32) < $1) Assumption: true
(assert (< 0 $1))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
; [sym$regval:0 [var: v]$] != NULL Assumption: true
(assert (not (= $0 0)))
(check-sat)
