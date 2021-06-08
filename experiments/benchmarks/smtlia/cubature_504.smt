; output/00000833.smt: generated with canalyze.
; $25 Assumption: true
(declare-const $25 Int)
(assert (and (< (- 2147483648) $25) (< $25 2147483647)))
(assert (not (= $25 0)))
; $24 Assumption: true
(declare-const $24 Int)
(assert (and (< (- 2147483648) $24) (< $24 2147483647)))
(assert (not (= $24 0)))
; (($cast: long $7$ - 0(S64)) >= 16(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
(assert (>= (- $7 0) 16))
; $6 Assumption: true
(declare-const $6 Int)
(assert (and (< (- 9223372036854775808) $6) (< $6 9223372036854775807)))
(assert (not (= $6 0)))
; (0(U32) < $1) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (< 0 $1))
; (1(U32) < $1) Assumption: false
(assert (not (< 1 $1)))
; ($cast: unsigned int $0$ == 1(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 1))
(check-sat)
