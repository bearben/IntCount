; output/00001097.smt: generated with canalyze.
; ($cast: int $0$ == 46(S32)) Assumption: true
(declare-const $0 Int)
(assert (and (< (- 128) $0) (< $0 127)))
(assert (= $0 46))
; ($cast: int $0$ == 95(S32)) Assumption: false
(assert (not (= $0 95)))
; ($cast: int $0$ == 45(S32)) Assumption: false
(assert (not (= $0 45)))
; ($cast: int $0$ >= 48(S32)) Assumption: false
(assert (not (>= $0 48)))
; ($cast: int $cast: unsigned char ($cast: int $0$ | 32(S32))$$ >= 97(S32)) Assumption: false
; ($cast: int $0$ == 64(S32)) Assumption: false
(assert (not (= $0 64)))
; ($cast: int $0$ == 63(S32)) Assumption: false
(assert (not (= $0 63)))
; ($cast: int $0$ == 47(S32)) Assumption: false
(assert (not (= $0 47)))
; ($cast: unsigned int $1$ == 24(U32)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (= $1 24))
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
