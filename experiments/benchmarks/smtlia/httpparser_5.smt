; output/00000004.smt: generated with canalyze.
; (($cast: unsigned int $2$ & $cast: unsigned int (1(S32) << ($cast: unsigned int $cast: unsigned char $0$$ & 7(U32)))$) == 0(U32)) Assumption: false
; ((32(S64) - (1(S64) * (0(S64) + $cast: long ($cast: unsigned int $cast: unsigned char $0$$ >> 3(S32))$))) >= 1(S64)) Assumption: true
; ($cast: unsigned int $1$ == 28(U32)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (= $1 28))
; ($cast: int $0$ == 10(S32)) Assumption: false
(declare-const $0 Int)
(assert (and (< (- 128) $0) (< $0 127)))
(assert (not (= $0 10)))
; ($cast: int $0$ == 13(S32)) Assumption: false
(assert (not (= $0 13)))
; ($cast: int $0$ == 32(S32)) Assumption: false
(assert (not (= $0 32)))
(check-sat)
