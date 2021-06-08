; output/00000290.smt: generated with canalyze.
; (($4 & ($4 - 1(U32))) != 0(U32)) Assumption: true
; ($cast: unsigned int $0$ < 1(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (< $0 1))
(check-sat)
