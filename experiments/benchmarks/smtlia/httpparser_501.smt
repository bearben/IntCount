; output/00000983.smt: generated with canalyze.
; $3 Assumption: false
(declare-const $3 Int)
(assert (and (< (- 2147483648) $3) (< $3 2147483647)))
(assert (= $3 0))
; ($cast: unsigned int $cast: enum http_errno $1$$ == 31(U32)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (= $1 31))
; ($cast: unsigned int $cast: enum http_errno $1$$ == 0(U32)) Assumption: false
(assert (not (= $1 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
