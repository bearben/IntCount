; output/00000180.smt: generated with canalyze.
; ((32(S64) - (8(S64) * (0(S64) + $cast: long (((64(S32) - $1) - 1(S32)) / 6(S32))$))) >= 8(S64)) Assumption: true
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (>= (- 32 (* 8 (+ 0 (/ (- (- 64 $1) 1) 6)))) 8))
; $20 Assumption: true
(declare-const $20 Int)
(assert (and (< (- 9223372036854775808) $20) (< $20 9223372036854775807)))
(assert (not (= $20 0)))
; (($cast: long $21$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $21 Int)
(assert (and (< 0 $21) (< $21 18446744073709551615)))
(assert (>= (- $21 0) 8))
; (((4096(S64) - (1024(S64) * (0(S64) + $cast: long (((64(S32) - $1) - 1(S32)) / 6(S32))$))) - (16(S64) * (0(S64) + $cast: long $cast: int (63(U64) & (($4 >> ((((64(S32) - $1) - 1(S32)) / 6(S32)) * 6(S32))) - 1(U64)))$$))) >= 16(S64)) Assumption: true
; (((4096(S64) - (1024(S64) * (0(S64) + $cast: long (((64(S32) - $1) - 1(S32)) / 6(S32))$))) - 0(S64)) >= 16(S64)) Assumption: true
(assert (>= (- (- 4096 (* 1024 (+ 0 (/ (- (- 64 $1) 1) 6)))) 0) 16))
; ((((64(S32) - $1) - 1(S32)) / 6(S32)) == 0(S32)) Assumption: false
(assert (not (= (/ (- (- 64 $1) 1) 6) 0)))
; (($4 - $3) < 16777215(U64)) Assumption: false
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (not (< (- $4 $3) 16777215)))
; ($4 > $3) Assumption: true
(assert (> $4 $3))
; ((32(S64) - (8(S64) * (0(S64) + $cast: long $cast: int ($25 / 64(S64))$$))) >= 8(S64)) Assumption: true
(declare-const $25 Int)
(assert (and (< (- 9223372036854775808) $25) (< $25 9223372036854775807)))
(assert (>= (- 32 (* 8 (+ 0 (/ $25 64)))) 8))
; [sym$regval:17 [field: [sym$regval:5 [field: [sym$regval:0 [var: to]$]->pending]$]->tqh_first]$] == NULL Assumption: true
(declare-const $17 Int)
(assert (and (< (- 9223372036854775808) $17) (< $17 9223372036854775807)))
(assert (= $17 0))
; $24 Assumption: true
(declare-const $24 Int)
(assert (and (< (- 2147483648) $24) (< $24 2147483647)))
(assert (not (= $24 0)))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; $14 Assumption: true
(declare-const $14 Int)
(assert (and (< (- 9223372036854775808) $14) (< $14 9223372036854775807)))
(assert (not (= $14 0)))
; (($cast: long $15$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $15 Int)
(assert (and (< 0 $15) (< $15 18446744073709551615)))
(assert (>= (- $15 0) 8))
; $13 Assumption: true
(declare-const $13 Int)
(assert (and (< (- 9223372036854775808) $13) (< $13 9223372036854775807)))
(assert (not (= $13 0)))
; [sym$regval:13 [field: [field: [sym$regval:0 [var: to]$]->tqe]->tqe_next]$] != NULL Assumption: true
(assert (not (= $13 0)))
; $5 Assumption: true
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (not (= $5 0)))
; ($1 & 2(S32)) Assumption: true
; ($1 & 1(S32)) Assumption: false
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
