; output/00002446.smt: generated with canalyze.
; ($cast: unsigned int $cast: enum http_errno $5$$ != 0(U32)) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 4294967295)))
(assert (not (= $5 0)))
; ($0 == 0(U64)) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 18446744073709551615)))
(assert (not (= $0 0)))
(check-sat)
