; output/00000185.smt: generated with canalyze.
; ((32(S64) - (8(S64) * (0(S64) + $cast: long (((64(S32) - $1) - 1(S32)) / 6(S32))$))) >= 8(S64)) Assumption: true
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (>= (- 32 (* 8 (+ 0 (/ (- (- 64 $1) 1) 6)))) 8))
; $8 Assumption: true
(declare-const $8 Int)
(assert (and (< (- 9223372036854775808) $8) (< $8 9223372036854775807)))
(assert (not (= $8 0)))
; (($cast: long $9$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $9 Int)
(assert (and (< 0 $9) (< $9 18446744073709551615)))
(assert (>= (- $9 0) 8))
; (((4096(S64) - (1024(S64) * (0(S64) + $cast: long (((64(S32) - $1) - 1(S32)) / 6(S32))$))) - (16(S64) * (0(S64) + $cast: long $cast: int (63(U64) & ((($3 + $4) >> ((((64(S32) - $1) - 1(S32)) / 6(S32)) * 6(S32))) - 1(U64)))$$))) >= 16(S64)) Assumption: true
; (((4096(S64) - (1024(S64) * (0(S64) + $cast: long (((64(S32) - $1) - 1(S32)) / 6(S32))$))) - 0(S64)) >= 16(S64)) Assumption: true
(assert (>= (- (- 4096 (* 1024 (+ 0 (/ (- (- 64 $1) 1) 6)))) 0) 16))
; ((((64(S32) - $1) - 1(S32)) / 6(S32)) == 0(S32)) Assumption: false
(assert (not (= (/ (- (- 64 $1) 1) 6) 0)))
; ((($3 + $4) - $3) < 16777215(U64)) Assumption: false
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (not (< (- (+ $3 $4) $3) 16777215)))
; (($3 + $4) > $3) Assumption: true
(assert (> (+ $3 $4) $3))
; $5 Assumption: false
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (= $5 0))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; ($1 & 2(S32)) Assumption: false
; (1(U64) > $4) Assumption: false
(assert (not (> 1 $4)))
; ($1 & 1(S32)) Assumption: true
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
