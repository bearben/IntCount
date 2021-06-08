; output/00000060.smt: generated with canalyze.
; ($cast: int $0$ == 39(S32)) Assumption: true
(declare-const $0 Int)
(assert (and (< (- 128) $0) (< $0 127)))
(assert (= $0 39))
; ($cast: int $0$ == 42(S32)) Assumption: false
(assert (not (= $0 42)))
; ($cast: int $0$ == 126(S32)) Assumption: false
(assert (not (= $0 126)))
; ($cast: int $0$ == 33(S32)) Assumption: false
(assert (not (= $0 33)))
; ($cast: int $0$ == 46(S32)) Assumption: false
(assert (not (= $0 46)))
; ($cast: int $0$ == 95(S32)) Assumption: false
(assert (not (= $0 95)))
; ($cast: int $0$ == 45(S32)) Assumption: false
(assert (not (= $0 45)))
; ($cast: int $0$ >= 48(S32)) Assumption: false
(assert (not (>= $0 48)))
; ($cast: int $cast: unsigned char ($cast: int $0$ | 32(S32))$$ <= 122(S32)) Assumption: false
; ($cast: int $cast: unsigned char ($cast: int $0$ | 32(S32))$$ >= 97(S32)) Assumption: true
; ($cast: int $0$ == 64(S32)) Assumption: false
(assert (not (= $0 64)))
; ($cast: int $0$ == 63(S32)) Assumption: false
(assert (not (= $0 63)))
; ($cast: int $0$ == 47(S32)) Assumption: false
(assert (not (= $0 47)))
; ($cast: unsigned int $1$ == 25(U32)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (= $1 25))
; ($cast: int $0$ == 10(S32)) Assumption: false
(assert (not (= $0 10)))
; ($cast: int $0$ == 13(S32)) Assumption: false
(assert (not (= $0 13)))
; ($cast: int $0$ == 32(S32)) Assumption: false
(assert (not (= $0 32)))
(check-sat)
