; output/00002442.smt: generated with canalyze.
; ($cast: unsigned int $cast: enum http_parser_type $0$$ == 1(U32)) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (= $0 1)))
; ($cast: unsigned int $cast: enum http_parser_type $0$$ == 0(U32)) Assumption: false
(assert (not (= $0 0)))
(check-sat)
