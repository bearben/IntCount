; output/00001395.smt: generated with canalyze.
; $4 Assumption: true
(declare-const $4 Int)
(assert (and (< (- 2147483648) $4) (< $4 2147483647)))
(assert (not (= $4 0)))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 2147483648) $3) (< $3 2147483647)))
(assert (not (= $3 0)))
; $2 Assumption: false
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (= $2 0))
; (1(U32) < $1) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (not (< 1 $1)))
; $11 Assumption: true
(declare-const $11 Int)
(assert (and (< (- 2147483648) $11) (< $11 2147483647)))
(assert (not (= $11 0)))
; $10 Assumption: true
(declare-const $10 Int)
(assert (and (< (- 2147483648) $10) (< $10 2147483647)))
(assert (not (= $10 0)))
; (($cast: long $9$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $9 Int)
(assert (and (< 0 $9) (< $9 18446744073709551615)))
(assert (>= (- $9 0) 8))
; $8 Assumption: true
(declare-const $8 Int)
(assert (and (< (- 9223372036854775808) $8) (< $8 9223372036854775807)))
(assert (not (= $8 0)))
; (($cast: long $7$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
(assert (>= (- $7 0) 8))
; $6 Assumption: true
(declare-const $6 Int)
(assert (and (< (- 9223372036854775808) $6) (< $6 9223372036854775807)))
(assert (not (= $6 0)))
; (0(U32) < $1) Assumption: true
(assert (< 0 $1))
; ($cast: unsigned int $0$ == 2(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 2))
(check-sat)
