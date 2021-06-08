; output/00001121.smt: generated with canalyze.
; (2(U32) < $cast: unsigned int (1(S32) << $16)$) Assumption: false
; $38 Assumption: false
(declare-const $38 Int)
(assert (and (< (- 2147483648) $38) (< $38 2147483647)))
(assert (= $38 0))
; (10(U64) == $12) Assumption: true
(declare-const $12 Int)
(assert (and (< 0 $12) (< $12 18446744073709551615)))
(assert (= 10 $12))
; (1(U32) < $cast: unsigned int (1(S32) << $16)$) Assumption: true
; (9(U64) == $12) Assumption: false
(assert (not (= 9 $12)))
; (8(U64) == $12) Assumption: false
(assert (not (= 8 $12)))
; (7(U64) == $12) Assumption: false
(assert (not (= 7 $12)))
; (6(U64) == $12) Assumption: false
(assert (not (= 6 $12)))
; (5(U64) == $12) Assumption: false
(assert (not (= 5 $12)))
; (4(U64) == $12) Assumption: false
(assert (not (= 4 $12)))
; (0(U32) < $cast: unsigned int (1(S32) << $16)$) Assumption: true
; (1(U32) < $cast: unsigned int (1(S32) << $26)$) Assumption: false
; (3(U64) == $12) Assumption: false
(assert (not (= 3 $12)))
; (2(U64) == $12) Assumption: false
(assert (not (= 2 $12)))
; (0(U32) < $cast: unsigned int (1(S32) << $26)$) Assumption: true
; (1(U64) == $12) Assumption: false
(assert (not (= 1 $12)))
; (2(U32) == $5) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 4294967295)))
(assert (= 2 $5))
; (1(U32) != $3) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (not (= 1 $3)))
; (($cast: long $18$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $18 Int)
(assert (and (< 0 $18) (< $18 18446744073709551615)))
(assert (>= (- $18 8) 8))
; (($cast: long $17$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $17 Int)
(assert (and (< 0 $17) (< $17 18446744073709551615)))
(assert (>= (- $17 8) 8))
; (1(U32) == $5) Assumption: false
(assert (not (= 1 $5)))
; (0(U32) != $3) Assumption: true
(assert (not (= 0 $3)))
; (($cast: long $18$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $18 0) 8))
; $10 Assumption: true
(declare-const $10 Int)
(assert (and (< (- 9223372036854775808) $10) (< $10 9223372036854775807)))
(assert (not (= $10 0)))
; (($cast: long $17$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $17 0) 8))
; $9 Assumption: true
(declare-const $9 Int)
(assert (and (< (- 9223372036854775808) $9) (< $9 9223372036854775807)))
(assert (not (= $9 0)))
; (0(U32) == $5) Assumption: false
(assert (not (= 0 $5)))
; ((8(U64) * ($cast: unsigned long $6$ * ((1(U64) * $cast: unsigned long ((1(S32) << ($16 + 1(U32))) + 1(S32))$) * $cast: unsigned long ((1(S32) << ($26 + 1(U32))) + 1(S32))$))) > 0(U64)) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 4294967295)))
; (2(U32) < $5) Assumption: false
(assert (not (< 2 $5)))
; (($cast: long $15$ - 4(S64)) >= 4(S64)) Assumption: true
(declare-const $15 Int)
(assert (and (< 0 $15) (< $15 18446744073709551615)))
(assert (>= (- $15 4) 4))
; (1(U32) == $3) Assumption: false
(assert (not (= 1 $3)))
; (1(U32) < $5) Assumption: true
(assert (< 1 $5))
; (($cast: long $15$ - 0(S64)) >= 4(S64)) Assumption: true
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
