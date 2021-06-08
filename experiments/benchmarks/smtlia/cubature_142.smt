; output/00000413.smt: generated with canalyze.
; (1(U32) < $14) Assumption: false
(declare-const $14 Int)
(assert (and (< 0 $14) (< $14 4294967295)))
(assert (not (< 1 $14)))
; (($cast: long $18$ - 0(S64)) >= 16(S64)) Assumption: true
(declare-const $18 Int)
(assert (and (< 0 $18) (< $18 18446744073709551615)))
(assert (>= (- $18 0) 16))
; $8 Assumption: true
(declare-const $8 Int)
(assert (and (< (- 9223372036854775808) $8) (< $8 9223372036854775807)))
(assert (not (= $8 0)))
; (($cast: long $17$ - 0(S64)) >= 16(S64)) Assumption: true
(declare-const $17 Int)
(assert (and (< 0 $17) (< $17 18446744073709551615)))
(assert (>= (- $17 0) 16))
; $16 Assumption: true
(declare-const $16 Int)
(assert (and (< (- 9223372036854775808) $16) (< $16 9223372036854775807)))
(assert (not (= $16 0)))
; (0(U32) < $14) Assumption: true
(assert (< 0 $14))
; (11(S32) < $cast: int ($1 - 1(U64))$) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 18446744073709551615)))
(assert (not (< 11 (- $1 1))))
; (6(S32) < $cast: int ($1 - 1(U64))$) Assumption: false
(assert (not (< 6 (- $1 1))))
; $25 Assumption: false
(declare-const $25 Int)
(assert (and (< (- 2147483648) $25) (< $25 2147483647)))
(assert (= $25 0))
; (($cast: long $3$ - 240(S64)) >= 48(S64)) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (>= (- $3 240) 48))
; (5(S32) < $cast: int ($1 - 1(U64))$) Assumption: true
(assert (< 5 (- $1 1)))
; $37 Assumption: true
(declare-const $37 Int)
(assert (and (< (- 2147483648) $37) (< $37 2147483647)))
(assert (not (= $37 0)))
; (($cast: long $3$ - 96(S64)) >= 48(S64)) Assumption: true
(assert (>= (- $3 96) 48))
; (2(S32) < $cast: int ($1 - 1(U64))$) Assumption: true
(assert (< 2 (- $1 1)))
; $19 Assumption: false
(declare-const $19 Int)
(assert (and (< (- 2147483648) $19) (< $19 2147483647)))
(assert (= $19 0))
; (($cast: long $3$ - 48(S64)) >= 48(S64)) Assumption: true
(assert (>= (- $3 48) 48))
; (1(S32) < $cast: int ($1 - 1(U64))$) Assumption: true
(assert (< 1 (- $1 1)))
; (($cast: long $3$ - (48(S64) * (0(S64) + $cast: long $cast: int ($1 - 1(U64))$$))) >= 48(S64)) Assumption: true
(assert (>= (- $3 (* 48 (+ 0 (- $1 1)))) 48))
; (($cast: long $3$ - 0(S64)) >= 48(S64)) Assumption: true
(assert (>= (- $3 0) 48))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; ($1 == 0(U64)) Assumption: false
(assert (not (= $1 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
