; output/00000005.smt: generated with canalyze.
; (2(U32) < $0) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (< 2 $0)))
; $4 Assumption: false
(declare-const $4 Int)
(assert (and (< (- 2147483648) $4) (< $4 2147483647)))
(assert (= $4 0))
; (($cast: long $2$ - 16(S64)) >= 16(S64)) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
(assert (>= (- $2 16) 16))
; (1(U32) < $0) Assumption: true
(assert (< 1 $0))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 2147483648) $3) (< $3 2147483647)))
(assert (not (= $3 0)))
; (($cast: long $2$ - 0(S64)) >= 16(S64)) Assumption: true
(assert (>= (- $2 0) 16))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; (0(U32) < $0) Assumption: true
(assert (< 0 $0))
(check-sat)
