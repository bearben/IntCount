; output/00000424.smt: generated with canalyze.
; ($cast: int $1$ == 37(S32)) Assumption: true
(declare-const $1 Int)
(assert (and (< (- 128) $1) (< $1 127)))
(assert (= $1 37))
; ($cast: int $1$ >= 48(S32)) Assumption: false
(assert (not (>= $1 48)))
; ($cast: int $cast: unsigned char ($cast: int $1$ | 32(S32))$$ >= 97(S32)) Assumption: false
; ($cast: int $1$ == 93(S32)) Assumption: false
(assert (not (= $1 93)))
; ($cast: unsigned int $0$ == 10(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 10))
(check-sat)
