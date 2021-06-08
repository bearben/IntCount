; output/00000062.smt: generated with canalyze.
; (1(U32) < $0) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (< 1 $0)))
; [sym$derived:1 $generic: &ptr 1$, [var: ptr]$] == NULL Assumption: false
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; ($1 < 0(S32)) Assumption: false
(assert (not (< $1 0)))
(check-sat)
