; output/00000321.smt: generated with canalyze.
; ((32(S64) - (8(S64) * (0(S64) + $cast: long (((64(S32) - $1) - 1(S32)) / 6(S32))$))) >= 8(S64)) Assumption: true
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (>= (- 32 (* 8 (+ 0 (/ (- (- 64 $1) 1) 6)))) 8))
; $9 Assumption: true
(declare-const $9 Int)
(assert (and (< (- 9223372036854775808) $9) (< $9 9223372036854775807)))
(assert (not (= $9 0)))
; (($cast: long $10$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $10 Int)
(assert (and (< 0 $10) (< $10 18446744073709551615)))
(assert (>= (- $10 0) 8))
; (((4096(S64) - (1024(S64) * (0(S64) + $cast: long (((64(S32) - $1) - 1(S32)) / 6(S32))$))) - (16(S64) * (0(S64) + $cast: long $cast: int (63(U64) & ((($7 + $6) >> ((((64(S32) - $1) - 1(S32)) / 6(S32)) * 6(S32))) - 1(U64)))$$))) >= 16(S64)) Assumption: true
; (((4096(S64) - (1024(S64) * (0(S64) + $cast: long (((64(S32) - $1) - 1(S32)) / 6(S32))$))) - 0(S64)) >= 16(S64)) Assumption: true
(assert (>= (- (- 4096 (* 1024 (+ 0 (/ (- (- 64 $1) 1) 6)))) 0) 16))
; ((((64(S32) - $1) - 1(S32)) / 6(S32)) == 0(S32)) Assumption: false
(assert (not (= (/ (- (- 64 $1) 1) 6) 0)))
; ((($7 + $6) - $8) < 16777215(U64)) Assumption: false
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 18446744073709551615)))
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 18446744073709551615)))
(assert (not (< (- (+ $7 $6) $8) 16777215)))
; (($7 + $6) > $8) Assumption: true
(assert (> (+ $7 $6) $8))
; (($7 + $6) <= $8) Assumption: false
(assert (not (<= (+ $7 $6) $8)))
; ($6 > 0(U64)) Assumption: true
(assert (> $6 0))
; ($5 & 1(S32)) Assumption: true
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; (($cast: long $4$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 0) 8))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; [sym$regval:2 [field: [field: [sym$regval:1 [field: [field: [sym$regval:0 [var: T]$]->expired]->tqh_first]$]->tqe]->tqe_next]$] != NULL Assumption: true
(assert (not (= $2 0)))
; $1 Assumption: true
(assert (not (= $1 0)))
; [sym$regval:1 [field: [field: [sym$regval:0 [var: T]$]->expired]->tqh_first]$] == NULL Assumption: false
(assert (not (= $1 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
