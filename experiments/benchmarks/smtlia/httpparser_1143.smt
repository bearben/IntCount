; output/00002261.smt: generated with canalyze.
; ($cast: unsigned int $cast: enum http_errno $1$$ == 31(U32)) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (not (= $1 31)))
; ($cast: unsigned int $cast: enum http_errno $1$$ == 0(U32)) Assumption: false
(assert (not (= $1 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
