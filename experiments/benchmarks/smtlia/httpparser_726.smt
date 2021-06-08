; output/00001354.smt: generated with canalyze.
; ($cast: int $cast: unsigned char ($cast: int $1$ | 32(S32))$$ <= 102(S32)) Assumption: true
; ($cast: int $cast: unsigned char ($cast: int $1$ | 32(S32))$$ >= 97(S32)) Assumption: true
; ($cast: int $1$ <= 57(S32)) Assumption: false
(declare-const $1 Int)
(assert (and (< (- 128) $1) (< $1 127)))
(assert (not (<= $1 57)))
; ($cast: int $1$ >= 48(S32)) Assumption: true
(assert (>= $1 48))
; ($cast: unsigned int $0$ == 5(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 5))
(check-sat)
