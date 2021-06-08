; output/00000019.smt: generated with canalyze.
; (((8(U64) * $cast: unsigned long $1$) * 2(U64)) > 0(U64)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (> (* (* 8 $1) 2) 0))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
