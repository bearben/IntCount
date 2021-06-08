; output/00002890.smt: generated with canalyze.
; ($8 == 0(S32)) Assumption: true
(declare-const $8 Int)
(assert (and (< (- 2147483648) $8) (< $8 2147483647)))
(assert (= $8 0))
; ($cast: int $32$ == 13(S32)) Assumption: true
(declare-const $32 Int)
(assert (and (< (- 128) $32) (< $32 127)))
(assert (= $32 13))
; ($cast: int $32$ == 32(S32)) Assumption: false
(assert (not (= $32 32)))
; (($cast: long $30$ - 1(S64)) >= 1(S64)) Assumption: true
(declare-const $30 Int)
(assert (and (< 0 $30) (< $30 18446744073709551615)))
(assert (>= (- $30 1) 1))
; (1(S64) < (0(S64) + $cast: long $cast: size_t $11$$)) Assumption: true
(declare-const $11 Int)
(assert (and (< 0 $11) (< $11 18446744073709551615)))
(assert (< 1 (+ 0 $11)))
; ($cast: int $cast: const char $31$$ == 42(S32)) Assumption: true
(declare-const $31 Int)
(assert (and (< (- 128) $31) (< $31 127)))
(assert (= $31 42))
; ($cast: int $cast: const char $31$$ == 47(S32)) Assumption: false
(assert (not (= $31 47)))
; ($cast: int $cast: const char $31$$ == 10(S32)) Assumption: false
(assert (not (= $31 10)))
; ($cast: int $cast: const char $31$$ == 13(S32)) Assumption: false
(assert (not (= $31 13)))
; ($cast: int $cast: const char $31$$ == 32(S32)) Assumption: false
(assert (not (= $31 32)))
; (($cast: long $30$ - 0(S64)) >= 1(S64)) Assumption: true
(assert (>= (- $30 0) 1))
; (0(S64) < (0(S64) + $cast: long $cast: size_t $11$$)) Assumption: true
(assert (< 0 (+ 0 $11)))
; $cast: int $7$ Assumption: false
(declare-const $7 Int)
(assert (and (< (- 2147483648) $7) (< $7 2147483647)))
(assert (= $7 0))
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
