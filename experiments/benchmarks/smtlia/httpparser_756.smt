; output/00001396.smt: generated with canalyze.
; ($cast: int $cast: unsigned char ($cast: int $1$ | 32(S32))$$ <= 122(S32)) Assumption: true
; ($cast: int $cast: unsigned char ($cast: int $1$ | 32(S32))$$ >= 97(S32)) Assumption: true
; ($cast: unsigned int $0$ == 6(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 6))
(check-sat)
