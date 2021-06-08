; output/00000828.smt: generated with canalyze.
; $23 Assumption: true
(declare-const $23 Int)
(assert (and (< (- 2147483648) $23) (< $23 2147483647)))
(assert (not (= $23 0)))
; $22 Assumption: false
(declare-const $22 Int)
(assert (and (< (- 2147483648) $22) (< $22 2147483647)))
(assert (= $22 0))
; (2(U32) < $1) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (not (< 2 $1)))
; (($cast: long $7$ - 16(S64)) >= 16(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
(assert (>= (- $7 16) 16))
; (1(U32) < $1) Assumption: true
(assert (< 1 $1))
; (($cast: long $7$ - 0(S64)) >= 16(S64)) Assumption: true
(assert (>= (- $7 0) 16))
; $6 Assumption: true
(declare-const $6 Int)
(assert (and (< (- 9223372036854775808) $6) (< $6 9223372036854775807)))
(assert (not (= $6 0)))
; (0(U32) < $1) Assumption: true
(assert (< 0 $1))
; ($cast: unsigned int $0$ == 3(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 3))
(check-sat)
