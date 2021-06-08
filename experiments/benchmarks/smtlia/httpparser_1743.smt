; output/00004034.smt: generated with canalyze.
; ($10 == 0(S32)) Assumption: true
(declare-const $10 Int)
(assert (and (< (- 2147483648) $10) (< $10 2147483647)))
(assert (= $10 0))
; ($cast: int $cast: const char $33$$ == 32(S32)) Assumption: true
(declare-const $33 Int)
(assert (and (< (- 128) $33) (< $33 127)))
(assert (= $33 32))
; (($cast: long $32$ - 0(S64)) >= 1(S64)) Assumption: true
(declare-const $32 Int)
(assert (and (< 0 $32) (< $32 18446744073709551615)))
(assert (>= (- $32 0) 1))
; (0(S64) < (0(S64) + $cast: long $cast: size_t $13$$)) Assumption: true
(declare-const $13 Int)
(assert (and (< 0 $13) (< $13 18446744073709551615)))
(assert (< 0 (+ 0 $13)))
; $cast: int $9$ Assumption: false
(declare-const $9 Int)
(assert (and (< (- 2147483648) $9) (< $9 2147483647)))
(assert (= $9 0))
; ($cast: size_t $13$ == 0(U64)) Assumption: false
(assert (not (= $13 0)))
; ($13 > 0(U64)) Assumption: true
(assert (> $13 0))
; $8 Assumption: true
(declare-const $8 Int)
(assert (and (< (- 9223372036854775808) $8) (< $8 9223372036854775807)))
(assert (not (= $8 0)))
; ($7 == 0(S32)) Assumption: false
(declare-const $7 Int)
(assert (and (< (- 2147483648) $7) (< $7 2147483647)))
(assert (not (= $7 0)))
; $5 Assumption: false
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (= $5 0))
; ($4 == 0(S32)) Assumption: false
(declare-const $4 Int)
(assert (and (< (- 2147483648) $4) (< $4 2147483647)))
(assert (not (= $4 0)))
; $2 Assumption: false
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (= $2 0))
(check-sat)
