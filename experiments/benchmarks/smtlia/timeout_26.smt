; output/00000025.smt: generated with canalyze.
; ((32(S64) - (8(S64) * (0(S64) + $cast: long (((64(S32) - $1) - 1(S32)) / 6(S32))$))) >= 8(S64)) Assumption: true
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (>= (- 32 (* 8 (+ 0 (/ (- (- 64 $1) 1) 6)))) 8))
; $7 Assumption: true
(declare-const $7 Int)
(assert (and (< (- 9223372036854775808) $7) (< $7 9223372036854775807)))
(assert (not (= $7 0)))
; (($cast: long $8$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 18446744073709551615)))
(assert (>= (- $8 0) 8))
; (((4096(S64) - (1024(S64) * (0(S64) + $cast: long (((64(S32) - $1) - 1(S32)) / 6(S32))$))) - (16(S64) * (0(S64) + $cast: long $cast: int (63(U64) & (($3 >> ((((64(S32) - $1) - 1(S32)) / 6(S32)) * 6(S32))) - 1(U64)))$$))) >= 16(S64)) Assumption: true
; (((4096(S64) - (1024(S64) * (0(S64) + $cast: long (((64(S32) - $1) - 1(S32)) / 6(S32))$))) - 0(S64)) >= 16(S64)) Assumption: true
(assert (>= (- (- 4096 (* 1024 (+ 0 (/ (- (- 64 $1) 1) 6)))) 0) 16))
; ((((64(S32) - $1) - 1(S32)) / 6(S32)) == 0(S32)) Assumption: false
(assert (not (= (/ (- (- 64 $1) 1) 6) 0)))
; (($3 - $4) < 16777215(U64)) Assumption: false
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (not (< (- $3 $4) 16777215)))
; ($3 > $4) Assumption: true
(assert (> $3 $4))
; ((32(S64) - (8(S64) * (0(S64) + $cast: long $cast: int ($17 / 64(S64))$$))) >= 8(S64)) Assumption: true
(declare-const $17 Int)
(assert (and (< (- 9223372036854775808) $17) (< $17 9223372036854775807)))
(assert (>= (- 32 (* 8 (+ 0 (/ $17 64)))) 8))
; [sym$regval:16 [field: [sym$regval:2 [field: [sym$regval:1 [var: to]$]->pending]$]->tqh_first]$] == NULL Assumption: true
(declare-const $16 Int)
(assert (and (< (- 9223372036854775808) $16) (< $16 9223372036854775807)))
(assert (= $16 0))
; $15 Assumption: true
(declare-const $15 Int)
(assert (and (< (- 2147483648) $15) (< $15 2147483647)))
(assert (not (= $15 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
; $13 Assumption: true
(declare-const $13 Int)
(assert (and (< (- 9223372036854775808) $13) (< $13 9223372036854775807)))
(assert (not (= $13 0)))
; (($cast: long $14$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $14 Int)
(assert (and (< 0 $14) (< $14 18446744073709551615)))
(assert (>= (- $14 0) 8))
; [sym$regval:12 [field: [field: [sym$regval:1 [var: to]$]->tqe]->tqe_next]$] != NULL Assumption: false
(declare-const $12 Int)
(assert (and (< (- 9223372036854775808) $12) (< $12 9223372036854775807)))
(assert (not (not (= $12 0))))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; $1 Assumption: true
(assert (not (= $1 0)))
(check-sat)
