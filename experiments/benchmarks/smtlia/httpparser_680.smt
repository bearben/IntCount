; output/00001276.smt: generated with canalyze.
; ($cast: int $1$ <= 57(S32)) Assumption: false
(declare-const $1 Int)
(assert (and (< (- 128) $1) (< $1 127)))
(assert (not (<= $1 57)))
; ($cast: int $1$ >= 48(S32)) Assumption: true
(assert (>= $1 48))
; ($cast: unsigned int $0$ == 12(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 12))
(check-sat)
