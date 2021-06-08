; output/00000008.smt: generated with canalyze.
; (2(U64) < $2) Assumption: false
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
(assert (not (< 2 $2)))
; $3 Assumption: false
(declare-const $3 Int)
(assert (and (< (- 2147483648) $3) (< $3 2147483647)))
(assert(= $3 0))
; (($cast: long $1$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 18446744073709551615)))
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
