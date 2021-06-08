; output/00002443.smt: generated with canalyze.
; ($cast: unsigned int $cast: enum http_parser_type $0$$ == 1(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 1))
; ($cast: unsigned int $cast: enum http_parser_type $0$$ == 0(U32)) Assumption: false
(assert (not (= $0 0)))
(check-sat)
