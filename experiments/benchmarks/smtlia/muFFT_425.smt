; output/00000465.smt: generated with canalyze.
; ($13 == 1(U32)) Assumption: false
(declare-const $13 Int)
(assert (and (< 0 $13) (< $13 4294967295)))
(assert (not (= $13 1)))
; ($9 >= 4(U32)) Assumption: true
(declare-const $9 Int)
(assert (and (< 0 $9) (< $9 4294967295)))
(assert (>= $9 4))
; ($13 == 2(U32)) Assumption: false
(assert (not (= $13 2)))
; (($cast: long $10$ - (24(S64) * (0(S64) + $cast: long ($2 - 1(U32))$))) >= 24(S64)) Assumption: true
(declare-const $10 Int)
(assert (and (< 0 $10) (< $10 18446744073709551615)))
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 4294967295)))
(assert (>= (- $10 (* 24 (+ 0 (- $2 1)))) 24))
; $5 Assumption: true
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (not (= $5 0)))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; (($cast: long $4$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 0) 8))
; ($2 != 0(U32)) Assumption: true
(assert (not (= $2 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
; (($cast: long $1$ - 0(S64)) >= 4(S64)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 18446744073709551615)))
(assert (>= (- $1 0) 4))
(check-sat)
