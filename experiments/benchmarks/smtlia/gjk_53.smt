; output/00000053.smt: generated with canalyze.
; (2(U64) < $4) Assumption: false
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (not (< 2 $4)))
; $7 Assumption: true
(declare-const $7 Int)
(assert (and (< (- 2147483648) $7) (< $7 2147483647)))
(assert (not (= $7 0)))
; (($cast: long $5$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 18446744073709551615)))
(assert (>= (- $5 8) 8))
; (1(U64) < $4) Assumption: true
(assert (< 1 $4))
; (($cast: long $5$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $5 0) 8))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; (3(U64) < $1) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 18446744073709551615)))
(assert (not (< 3 $1)))
; $11 Assumption: false
(declare-const $11 Int)
(assert (and (< (- 2147483648) $11) (< $11 2147483647)))
(assert(= $11 0))
; (($cast: long $2$ - 16(S64)) >= 8(S64)) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
(assert (>= (- $2 16) 8))
; (2(U64) < $1) Assumption: true
(assert (< 2 $1))
; $10 Assumption: true
(declare-const $10 Int)
(assert (and (< (- 2147483648) $10) (< $10 2147483647)))
(assert (not (= $10 0)))
; (($cast: long $2$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $2 8) 8))
; (1(U64) < $1) Assumption: true
(assert (< 1 $1))
; (($cast: long $2$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $2 0) 8))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
