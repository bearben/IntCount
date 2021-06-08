; output/00001268.smt: generated with canalyze.
; ($cast: int $0$ == 10(S32)) Assumption: true
(declare-const $0 Int)
(assert (and (< (- 128) $0) (< $0 127)))
(assert (= $0 10))
; ($cast: int $0$ == 13(S32)) Assumption: false
(assert (not (= $0 13)))
; ($cast: int $0$ == 32(S32)) Assumption: false
(assert (not (= $0 32)))
(check-sat)
