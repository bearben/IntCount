; output/00000067.smt: generated with canalyze.
; (2(U32) < $0) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (< 2 $0)))
; $20 Assumption: false
(declare-const $20 Int)
(assert (and (< (- 2147483648) $20) (< $20 2147483647)))
(assert (= $20 0))
; (($cast: long $15$ - 16(S64)) >= 16(S64)) Assumption: true
(declare-const $15 Int)
(assert (and (< 0 $15) (< $15 18446744073709551615)))
(assert (>= (- $15 16) 16))
; $16 Assumption: true
(declare-const $16 Int)
(assert (and (< (- 2147483648) $16) (< $16 2147483647)))
(assert (not (= $16 0)))
; (($cast: long $15$ - 0(S64)) >= 16(S64)) Assumption: true
(assert (>= (- $15 0) 16))
; $11 Assumption: true
(declare-const $11 Int)
(assert (and (< (- 9223372036854775808) $11) (< $11 9223372036854775807)))
(assert (not (= $11 0)))
; (($cast: long $8$ - 48(S64)) >= 48(S64)) Assumption: true
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 18446744073709551615)))
(assert (>= (- $8 48) 48))
; (1(U32) < $0) Assumption: true
(assert (< 1 $0))
; (2(U32) < $9) Assumption: false
(declare-const $9 Int)
(assert (and (< 0 $9) (< $9 4294967295)))
(assert (not (< 2 $9)))
; $19 Assumption: true
(declare-const $19 Int)
(assert (and (< (- 2147483648) $19) (< $19 2147483647)))
(assert (not (= $19 0)))
; (($cast: long $13$ - 16(S64)) >= 16(S64)) Assumption: true
(declare-const $13 Int)
(assert (and (< 0 $13) (< $13 18446744073709551615)))
(assert (>= (- $13 16) 16))
; (1(U32) < $9) Assumption: true
(assert (< 1 $9))
; $14 Assumption: true
(declare-const $14 Int)
(assert (and (< (- 2147483648) $14) (< $14 2147483647)))
(assert (not (= $14 0)))
; (($cast: long $13$ - 0(S64)) >= 16(S64)) Assumption: true
(assert (>= (- $13 0) 16))
; $10 Assumption: true
(declare-const $10 Int)
(assert (and (< (- 9223372036854775808) $10) (< $10 9223372036854775807)))
(assert (not (= $10 0)))
; (0(U32) < $9) Assumption: true
(assert (< 0 $9))
; (($cast: long $8$ - 0(S64)) >= 48(S64)) Assumption: true
(assert (>= (- $8 0) 48))
; (0(U32) < $0) Assumption: true
(assert (< 0 $0))
; $7 Assumption: false
(declare-const $7 Int)
(assert (and (< (- 2147483648) $7) (< $7 2147483647)))
(assert (= $7 0))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; ($0 == 0(U32)) Assumption: false
(assert (not (= $0 0)))
(check-sat)
