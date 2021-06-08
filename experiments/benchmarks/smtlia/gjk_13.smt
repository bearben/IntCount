; output/00000013.smt: generated with canalyze.
; (3(U64) < $2) Assumption: false
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
(assert (not (< 3 $2)))
; $4 Assumption: true
(declare-const $4 Int)
(assert (and (< (- 2147483648) $4) (< $4 2147483647)))
(assert (not (= $4 0)))
; (($cast: long $1$ - 16(S64)) >= 8(S64)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 18446744073709551615)))
(assert (>= (- $1 16) 8))
; (2(U64) < $2) Assumption: true
(assert (< 2 $2))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 2147483648) $3) (< $3 2147483647)))
(assert (not (= $3 0)))
; (($cast: long $1$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $1 8) 8))
; (1(U64) < $2) Assumption: true
(assert (< 1 $2))
; (($cast: long $1$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $1 0) 8))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
