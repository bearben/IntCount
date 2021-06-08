; output/00000077.smt: generated with canalyze.
; (($2 & 402653184(S32)) == 402653184(S32)) Assumption: false
; ($2 & 1(S32)) Assumption: false
; ($1 & 33554432(S32)) Assumption: false
; ($cast: unsigned int $0$ < 1(U32)) Assumption: false
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (not (< $0 1)))
(check-sat)
