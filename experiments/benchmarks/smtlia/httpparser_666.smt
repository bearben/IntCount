; output/00001262.smt: generated with canalyze.
; ($cast: int $cast: unsigned char ($cast: int $0$ | 32(S32))$$ <= 122(S32)) Assumption: false
; ($cast: int $cast: unsigned char ($cast: int $0$ | 32(S32))$$ >= 97(S32)) Assumption: true
; ($cast: int $0$ == 42(S32)) Assumption: false
(declare-const $0 Int)
(assert (and (< (- 128) $0) (< $0 127)))
(assert (not (= $0 42)))
; ($cast: int $0$ == 47(S32)) Assumption: false
(assert (not (= $0 47)))
; ($cast: unsigned int $1$ == 20(U32)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (= $1 20))
; ($cast: int $0$ == 12(S32)) Assumption: false
(assert (not (= $0 12)))
; ($cast: int $0$ == 9(S32)) Assumption: false
(assert (not (= $0 9)))
; ($cast: int $0$ == 10(S32)) Assumption: false
(assert (not (= $0 10)))
; ($cast: int $0$ == 13(S32)) Assumption: false
(assert (not (= $0 13)))
; ($cast: int $0$ == 32(S32)) Assumption: false
(assert (not (= $0 32)))
(check-sat)
