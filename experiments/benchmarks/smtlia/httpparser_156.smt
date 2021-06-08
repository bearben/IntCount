; output/00000269.smt: generated with canalyze.
; ($cast: int $0$ == 58(S32)) Assumption: true
(declare-const $0 Int)
(assert (and (< (- 128) $0) (< $0 127)))
(assert (= $0 58))
; ($cast: int $cast: unsigned char ($cast: int $0$ | 32(S32))$$ >= 97(S32)) Assumption: false
; ($cast: unsigned int $1$ == 21(U32)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (= $1 21))
; ($cast: int $0$ == 10(S32)) Assumption: false
(assert (not (= $0 10)))
; ($cast: int $0$ == 13(S32)) Assumption: false
(assert (not (= $0 13)))
; ($cast: int $0$ == 32(S32)) Assumption: false
(assert (not (= $0 32)))
(check-sat)
