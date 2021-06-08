; output/00000807.smt: generated with canalyze.
; $15 Assumption: true
(declare-const $15 Int)
(assert (and (< (- 2147483648) $15) (< $15 2147483647)))
(assert (not (= $15 0)))
; $14 Assumption: false
(declare-const $14 Int)
(assert (and (< (- 2147483648) $14) (< $14 2147483647)))
(assert (= $14 0))
; (1(U32) < $1) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (not (< 1 $1)))
; $17 Assumption: true
(declare-const $17 Int)
(assert (and (< (- 2147483648) $17) (< $17 2147483647)))
(assert (not (= $17 0)))
; $16 Assumption: true
(declare-const $16 Int)
(assert (and (< (- 2147483648) $16) (< $16 2147483647)))
(assert (not (= $16 0)))
; (($cast: long $7$ - 0(S64)) >= 16(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
(assert (>= (- $7 0) 16))
; $6 Assumption: true
(declare-const $6 Int)
(assert (and (< (- 9223372036854775808) $6) (< $6 9223372036854775807)))
(assert (not (= $6 0)))
; (0(U32) < $1) Assumption: true
(assert (< 0 $1))
; ($cast: unsigned int $0$ == 4(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 4))
(check-sat)
