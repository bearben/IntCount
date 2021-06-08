; output/00000534.smt: generated with canalyze.
; ($cast: int $1$ == 91(S32)) Assumption: true
(declare-const $1 Int)
(assert (and (< (- 128) $1) (< $1 127)))
(assert (= $1 91))
; ($cast: unsigned int $0$ == 4(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 4))
(check-sat)
