; output/00000470.smt: generated with canalyze.
; ($cast: int $1$ == 37(S32)) Assumption: false
(declare-const $1 Int)
(assert (and (< (- 128) $1) (< $1 127)))
(assert (not (= $1 37)))
; ($cast: int $1$ == 46(S32)) Assumption: false
(assert (not (= $1 46)))
; ($cast: int $1$ == 58(S32)) Assumption: false
(assert (not (= $1 58)))
; ($cast: int $cast: unsigned char ($cast: int $1$ | 32(S32))$$ >= 97(S32)) Assumption: false
; ($cast: int $1$ >= 48(S32)) Assumption: false
(assert (not (>= $1 48)))
; ($cast: int $1$ == 93(S32)) Assumption: false
(assert (not (= $1 93)))
; ($cast: unsigned int $0$ == 7(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 7))
(check-sat)
