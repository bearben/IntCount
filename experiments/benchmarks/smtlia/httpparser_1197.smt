; output/00002448.smt: generated with canalyze.
; ($cast: unsigned int $cast: enum http_errno $15$$ != 0(U32)) Assumption: true
(declare-const $15 Int)
(assert (and (< 0 $15) (< $15 4294967295)))
(assert (not (= $15 0)))
; ($10 == 0(U64)) Assumption: false
(declare-const $10 Int)
(assert (and (< 0 $10) (< $10 18446744073709551615)))
(assert (not (= $10 0)))
(check-sat)
