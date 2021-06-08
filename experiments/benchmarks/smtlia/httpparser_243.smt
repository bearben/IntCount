; output/00000378.smt: generated with canalyze.
; ($cast: unsigned int $2$ == 1(U32)) Assumption: false
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 4294967295)))
(assert (not (= $2 1)))
; ($cast: unsigned int $2$ == 0(U32)) Assumption: false
(assert (not (= $2 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
