; output/00002813.smt: generated with canalyze.
; ($cast: size_t $cast: enum http_errno $cast: enum http_errno $1$$$ < 33(U64)) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (not (< $1 33)))
(check-sat)
