; output/00000017.smt: generated with canalyze.
; (3(U64) < $4) Assumption: false
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (not (< 3 $4)))
; $8 Assumption: true
(declare-const $8 Int)
(assert (and (< (- 2147483648) $8) (< $8 2147483647)))
(assert (not (= $8 0)))
; (($cast: long $5$ - 16(S64)) >= 8(S64)) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 18446744073709551615)))
(assert (>= (- $5 16) 8))
; (2(U64) < $4) Assumption: true
(assert (< 2 $4))
; $7 Assumption: false
(declare-const $7 Int)
(assert (and (< (- 2147483648) $7) (< $7 2147483647)))
(assert(= $7 0))
; (($cast: long $5$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $5 8) 8))
; (1(U64) < $4) Assumption: true
(assert (< 1 $4))
; (($cast: long $5$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $5 0) 8))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; (1(U64) < $1) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 18446744073709551615)))
(assert (not (< 1 $1)))
; (($cast: long $2$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
(assert (>= (- $2 0) 8))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
