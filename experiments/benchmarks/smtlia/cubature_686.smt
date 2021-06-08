; output/00001082.smt: generated with canalyze.
; (2(U32) < $cast: unsigned int (1(S32) << $16)$) Assumption: false
; $22 Assumption: false
(declare-const $22 Int)
(assert (and (< (- 2147483648) $22) (< $22 2147483647)))
(assert (= $22 0))
; (4(U64) == $12) Assumption: true
(declare-const $12 Int)
(assert (and (< 0 $12) (< $12 18446744073709551615)))
(assert (= 4 $12))
; (1(U32) < $cast: unsigned int (1(S32) << $16)$) Assumption: true
; (3(U64) == $12) Assumption: false
(assert (not (= 3 $12)))
; (2(U64) == $12) Assumption: false
(assert (not (= 2 $12)))
; (0(U32) < $cast: unsigned int (1(S32) << $16)$) Assumption: true
; (1(U64) == $12) Assumption: false
(assert (not (= 1 $12)))
; (1(U32) == $5) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 4294967295)))
(assert (= 1 $5))
; (0(U32) != $3) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (not (= 0 $3)))
; (($cast: long $18$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $18 Int)
(assert (and (< 0 $18) (< $18 18446744073709551615)))
(assert (>= (- $18 0) 8))
; $10 Assumption: true
(declare-const $10 Int)
(assert (and (< (- 9223372036854775808) $10) (< $10 9223372036854775807)))
(assert (not (= $10 0)))
; (($cast: long $17$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $17 Int)
(assert (and (< 0 $17) (< $17 18446744073709551615)))
(assert (>= (- $17 0) 8))
; $9 Assumption: true
(declare-const $9 Int)
(assert (and (< (- 9223372036854775808) $9) (< $9 9223372036854775807)))
(assert (not (= $9 0)))
; (0(U32) == $5) Assumption: false
(assert (not (= 0 $5)))
; ((8(U64) * ($cast: unsigned long $6$ * (1(U64) * $cast: unsigned long ((1(S32) << ($16 + 1(U32))) + 1(S32))$))) > 0(U64)) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 4294967295)))
; (1(U32) < $5) Assumption: false
(assert (not (< 1 $5)))
; (($cast: long $15$ - 0(S64)) >= 4(S64)) Assumption: true
(declare-const $15 Int)
(assert (and (< 0 $15) (< $15 18446744073709551615)))
(assert (>= (- $15 0) 4))
; $4 Assumption: true
(declare-const $4 Int)
(assert (and (< (- 9223372036854775808) $4) (< $4 9223372036854775807)))
(assert (not (= $4 0)))
; (0(U32) == $3) Assumption: false
(assert (not (= 0 $3)))
; (0(U32) < $5) Assumption: true
(assert (< 0 $5))
; (($cast: long (96(U64) * ($1 + 1(U64)))$ - (96(S64) * (0(S64) + $cast: long $1$))) >= 96(S64)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 18446744073709551615)))
(assert (>= (- (* 96 (+ $1 1)) (* 96 (+ 0 $1))) 96))
; ((96(U64) * ($1 + 1(U64))) > 0(U64)) Assumption: true
(assert (> (* 96 (+ $1 1)) 0))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
