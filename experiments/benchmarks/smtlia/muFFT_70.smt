; output/00000089.smt: generated with canalyze.
; ($cast: unsigned int $0$ < 1(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (< $0 1))
(check-sat)
