; output/00000597.smt: generated with canalyze.
; ($cast: int $1$ == 59(S32)) Assumption: true
(declare-const $1 Int)
(assert (and (< (- 128) $1) (< $1 127)))
(assert (= $1 59))
; ($cast: int $1$ == 37(S32)) Assumption: false
(assert (not (= $1 37)))
; ($cast: int $1$ == 41(S32)) Assumption: false
(assert (not (= $1 41)))
; ($cast: int $1$ == 40(S32)) Assumption: false
(assert (not (= $1 40)))
; ($cast: int $1$ == 39(S32)) Assumption: false
(assert (not (= $1 39)))
; ($cast: int $1$ == 42(S32)) Assumption: false
(assert (not (= $1 42)))
; ($cast: int $1$ == 126(S32)) Assumption: false
(assert (not (= $1 126)))
; ($cast: int $1$ == 33(S32)) Assumption: false
(assert (not (= $1 33)))
; ($cast: int $1$ == 46(S32)) Assumption: false
(assert (not (= $1 46)))
; ($cast: int $1$ == 95(S32)) Assumption: false
(assert (not (= $1 95)))
; ($cast: int $1$ == 45(S32)) Assumption: false
(assert (not (= $1 45)))
; ($cast: int $1$ <= 57(S32)) Assumption: false
(assert (not (<= $1 57)))
; ($cast: int $1$ >= 48(S32)) Assumption: true
(assert (>= $1 48))
; ($cast: int $cast: unsigned char ($cast: int $1$ | 32(S32))$$ <= 122(S32)) Assumption: false
; ($cast: int $cast: unsigned char ($cast: int $1$ | 32(S32))$$ >= 97(S32)) Assumption: true
; ($cast: int $1$ == 64(S32)) Assumption: false
(assert (not (= $1 64)))
; ($cast: unsigned int $0$ == 2(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 2))
(check-sat)
