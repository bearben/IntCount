; output/00000289.smt: generated with canalyze.
; ($cast: unsigned int $cast: enum http_errno $5$$ != 0(U32)) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 4294967295)))
(assert (not (= $5 0)))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
(check-sat)
