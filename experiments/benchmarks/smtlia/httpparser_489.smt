; output/00000856.smt: generated with canalyze.
; (2(S64) < (0(S64) + $cast: long $0$)) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 18446744073709551615)))
(assert (not (< 2 (+ 0 $0))))
; (($cast: unsigned int $8$ & $cast: unsigned int (1(S32) << ($cast: unsigned int $cast: unsigned char $6$$ & 7(U32)))$) == 0(U32)) Assumption: false
; ((32(S64) - (1(S64) * (0(S64) + $cast: long ($cast: unsigned int $cast: unsigned char $6$$ >> 3(S32))$))) >= 1(S64)) Assumption: true
; ($cast: int $6$ == 10(S32)) Assumption: false
(declare-const $6 Int)
(assert (and (< (- 128) $6) (< $6 127)))
(assert (not (= $6 10)))
; ($cast: int $6$ == 13(S32)) Assumption: false
(assert (not (= $6 13)))
; ($cast: int $6$ == 32(S32)) Assumption: false
(assert (not (= $6 32)))
; (($cast: long $4$ - 1(S64)) >= 1(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 1) 1))
; (1(S64) < (0(S64) + $cast: long $0$)) Assumption: true
(assert (< 1 (+ 0 $0)))
; ($cast: int $5$ == 47(S32)) Assumption: true
(declare-const $5 Int)
(assert (and (< (- 128) $5) (< $5 127)))
(assert (= $5 47))
; ($cast: int $5$ == 10(S32)) Assumption: false
(assert (not (= $5 10)))
; ($cast: int $5$ == 13(S32)) Assumption: false
(assert (not (= $5 13)))
; ($cast: int $5$ == 32(S32)) Assumption: false
(assert (not (= $5 32)))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; (($cast: long $4$ - 0(S64)) >= 1(S64)) Assumption: true
(assert (>= (- $4 0) 1))
; (0(S64) < (0(S64) + $cast: long $0$)) Assumption: true
(assert (< 0 (+ 0 $0)))
; $2 Assumption: false
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (= $2 0))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; ($0 == 0(U64)) Assumption: false
(assert (not (= $0 0)))
(check-sat)
