; output/00000559.smt: generated with canalyze.
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
; (2(U32) < $1) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (not (< 2 $1)))
; $11 Assumption: false
(declare-const $11 Int)
(assert (and (< (- 2147483648) $11) (< $11 2147483647)))
(assert (= $11 0))
; $10 Assumption: true
(declare-const $10 Int)
(assert (and (< (- 2147483648) $10) (< $10 2147483647)))
(assert (not (= $10 0)))
; (($cast: long $7$ - 16(S64)) >= 16(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
(assert (>= (- $7 16) 16))
; (1(U32) < $1) Assumption: true
(assert (< 1 $1))
; $9 Assumption: false
(declare-const $9 Int)
(assert (and (< (- 2147483648) $9) (< $9 2147483647)))
(assert (= $9 0))
; $8 Assumption: false
(declare-const $8 Int)
(assert (and (< (- 2147483648) $8) (< $8 2147483647)))
(assert (= $8 0))
; (($cast: long $7$ - 0(S64)) >= 16(S64)) Assumption: true
(assert (>= (- $7 0) 16))
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
