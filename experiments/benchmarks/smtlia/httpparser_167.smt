; output/00000280.smt: generated with canalyze.
; ($cast: int $0$ == 32(S32)) Assumption: true
(declare-const $0 Int)
(assert (and (< (- 128) $0) (< $0 127)))
(assert (= $0 32))
(check-sat)
