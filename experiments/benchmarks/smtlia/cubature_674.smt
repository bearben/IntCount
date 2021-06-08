; output/00001058.smt: generated with canalyze.
; (2(U64) < $2) Assumption: false
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
(assert (not (< 2 $2)))
; (($cast: long $3$ - 96(S64)) >= 96(S64)) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (>= (- $3 96) 96))
; (1(U64) < $2) Assumption: true
(assert (< 1 $2))
; (($cast: long $3$ - 0(S64)) >= 96(S64)) Assumption: true
(assert (>= (- $3 0) 96))
; (0(U64) < $2) Assumption: true
(assert (< 0 $2))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
; [sym$regval:0 [var: v]$] == NULL Assumption: false
(assert (not (= $0 0)))
(check-sat)
