; output/00000867.smt: generated with canalyze.
; ($cast: int $5$ == 93(S32)) Assumption: false
(declare-const $5 Int)
(assert (and (< (- 128) $5) (< $5 127)))
(assert (not (= $5 93)))
; ($cast: int $5$ == 91(S32)) Assumption: false
(assert (not (= $5 91)))
; ($cast: int $5$ == 44(S32)) Assumption: false
(assert (not (= $5 44)))
; ($cast: int $5$ == 36(S32)) Assumption: false
(assert (not (= $5 36)))
; ($cast: int $5$ == 43(S32)) Assumption: false
(assert (not (= $5 43)))
; ($cast: int $5$ == 61(S32)) Assumption: false
(assert (not (= $5 61)))
; ($cast: int $5$ == 38(S32)) Assumption: false
(assert (not (= $5 38)))
; ($cast: int $5$ == 58(S32)) Assumption: false
(assert (not (= $5 58)))
; ($cast: int $5$ == 59(S32)) Assumption: false
(assert (not (= $5 59)))
; ($cast: int $5$ == 37(S32)) Assumption: false
(assert (not (= $5 37)))
; ($cast: int $5$ == 41(S32)) Assumption: false
(assert (not (= $5 41)))
; ($cast: int $5$ == 40(S32)) Assumption: false
(assert (not (= $5 40)))
; ($cast: int $5$ == 39(S32)) Assumption: false
(assert (not (= $5 39)))
; ($cast: int $5$ == 42(S32)) Assumption: false
(assert (not (= $5 42)))
; ($cast: int $5$ == 126(S32)) Assumption: false
(assert (not (= $5 126)))
; ($cast: int $5$ == 33(S32)) Assumption: false
(assert (not (= $5 33)))
; ($cast: int $5$ == 46(S32)) Assumption: false
(assert (not (= $5 46)))
; ($cast: int $5$ == 95(S32)) Assumption: false
(assert (not (= $5 95)))
; ($cast: int $5$ == 45(S32)) Assumption: false
(assert (not (= $5 45)))
; ($cast: int $5$ >= 48(S32)) Assumption: false
(assert (not (>= $5 48)))
; ($cast: int $cast: unsigned char ($cast: int $5$ | 32(S32))$$ >= 97(S32)) Assumption: false
; ($cast: int $5$ == 64(S32)) Assumption: false
(assert (not (= $5 64)))
; ($cast: int $5$ == 63(S32)) Assumption: false
(assert (not (= $5 63)))
; ($cast: int $5$ == 47(S32)) Assumption: false
(assert (not (= $5 47)))
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
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 0) 1))
; (0(S64) < (0(S64) + $cast: long $0$)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 18446744073709551615)))
(assert (< 0 (+ 0 $0)))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (not (= $2 0)))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; ($0 == 0(U64)) Assumption: false
(assert (not (= $0 0)))
(check-sat)
