; output/00002904.smt: generated with canalyze.
; ($8 == 0(S32)) Assumption: true
(declare-const $8 Int)
(assert (and (< (- 2147483648) $8) (< $8 2147483647)))
(assert (= $8 0))
; ($cast: int $cast: const char $31$$ == 93(S32)) Assumption: false
(declare-const $31 Int)
(assert (and (< (- 128) $31) (< $31 127)))
(assert (not (= $31 93)))
; ($cast: int $cast: const char $31$$ == 91(S32)) Assumption: false
(assert (not (= $31 91)))
; ($cast: int $cast: const char $31$$ == 44(S32)) Assumption: false
(assert (not (= $31 44)))
; ($cast: int $cast: const char $31$$ == 36(S32)) Assumption: false
(assert (not (= $31 36)))
; ($cast: int $cast: const char $31$$ == 43(S32)) Assumption: false
(assert (not (= $31 43)))
; ($cast: int $cast: const char $31$$ == 61(S32)) Assumption: false
(assert (not (= $31 61)))
; ($cast: int $cast: const char $31$$ == 38(S32)) Assumption: false
(assert (not (= $31 38)))
; ($cast: int $cast: const char $31$$ == 58(S32)) Assumption: false
(assert (not (= $31 58)))
; ($cast: int $cast: const char $31$$ == 59(S32)) Assumption: false
(assert (not (= $31 59)))
; ($cast: int $cast: const char $31$$ == 37(S32)) Assumption: false
(assert (not (= $31 37)))
; ($cast: int $cast: const char $31$$ == 41(S32)) Assumption: false
(assert (not (= $31 41)))
; ($cast: int $cast: const char $31$$ == 40(S32)) Assumption: false
(assert (not (= $31 40)))
; ($cast: int $cast: const char $31$$ == 39(S32)) Assumption: false
(assert (not (= $31 39)))
; ($cast: int $cast: const char $31$$ == 42(S32)) Assumption: false
(assert (not (= $31 42)))
; ($cast: int $cast: const char $31$$ == 126(S32)) Assumption: false
(assert (not (= $31 126)))
; ($cast: int $cast: const char $31$$ == 33(S32)) Assumption: false
(assert (not (= $31 33)))
; ($cast: int $cast: const char $31$$ == 46(S32)) Assumption: false
(assert (not (= $31 46)))
; ($cast: int $cast: const char $31$$ == 95(S32)) Assumption: false
(assert (not (= $31 95)))
; ($cast: int $cast: const char $31$$ == 45(S32)) Assumption: false
(assert (not (= $31 45)))
; ($cast: int $cast: const char $31$$ >= 48(S32)) Assumption: false
(assert (not (>= $31 48)))
; ($cast: int $cast: unsigned char ($cast: int $cast: const char $31$$ | 32(S32))$$ >= 97(S32)) Assumption: false
; ($cast: int $cast: const char $31$$ == 64(S32)) Assumption: false
(assert (not (= $31 64)))
; ($cast: int $cast: const char $31$$ == 63(S32)) Assumption: false
(assert (not (= $31 63)))
; ($cast: int $cast: const char $31$$ == 47(S32)) Assumption: false
(assert (not (= $31 47)))
; ($cast: int $cast: const char $31$$ == 10(S32)) Assumption: false
(assert (not (= $31 10)))
; ($cast: int $cast: const char $31$$ == 13(S32)) Assumption: false
(assert (not (= $31 13)))
; ($cast: int $cast: const char $31$$ == 32(S32)) Assumption: false
(assert (not (= $31 32)))
; (($cast: long $30$ - 0(S64)) >= 1(S64)) Assumption: true
(declare-const $30 Int)
(assert (and (< 0 $30) (< $30 18446744073709551615)))
(assert (>= (- $30 0) 1))
; (0(S64) < (0(S64) + $cast: long $cast: size_t $11$$)) Assumption: true
(declare-const $11 Int)
(assert (and (< 0 $11) (< $11 18446744073709551615)))
(assert (< 0 (+ 0 $11)))
; $cast: int $7$ Assumption: true
(declare-const $7 Int)
(assert (and (< (- 2147483648) $7) (< $7 2147483647)))
(assert (not (= $7 0)))
; ($cast: size_t $11$ == 0(U64)) Assumption: false
(assert (not (= $11 0)))
; ($11 > 0(U64)) Assumption: true
(assert (> $11 0))
; $6 Assumption: true
(declare-const $6 Int)
(assert (and (< (- 9223372036854775808) $6) (< $6 9223372036854775807)))
(assert (not (= $6 0)))
; ($5 == 0(S32)) Assumption: false
(declare-const $5 Int)
(assert (and (< (- 2147483648) $5) (< $5 2147483647)))
(assert (not (= $5 0)))
; $3 Assumption: false
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (= $3 0))
; ($2 == 0(S32)) Assumption: false
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (not (= $2 0)))
; $0 Assumption: false
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (= $0 0))
(check-sat)
