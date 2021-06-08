; output/00000835.smt: generated with canalyze.
; $24 Assumption: false
(declare-const $24 Int)
(assert (and (< (- 2147483648) $24) (< $24 2147483647)))
(assert (= $24 0))
; (($cast: long $7$ - 32(S64)) >= 16(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
(assert (>= (- $7 32) 16))
; (2(U32) < $1) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (< 2 $1))
; (3(U32) < $1) Assumption: false
(assert (not (< 3 $1)))
; $30 Assumption: false
(declare-const $30 Int)
(assert (and (< (- 2147483648) $30) (< $30 2147483647)))
(assert (= $30 0))
; $29 Assumption: false
(declare-const $29 Int)
(assert (and (< (- 2147483648) $29) (< $29 2147483647)))
(assert (= $29 0))
; $28 Assumption: false
(declare-const $28 Int)
(assert (and (< (- 2147483648) $28) (< $28 2147483647)))
(assert (= $28 0))
; $27 Assumption: false
(declare-const $27 Int)
(assert (and (< (- 2147483648) $27) (< $27 2147483647)))
(assert (= $27 0))
; $26 Assumption: false
(declare-const $26 Int)
(assert (and (< (- 2147483648) $26) (< $26 2147483647)))
(assert (= $26 0))
; (($cast: long $7$ - 16(S64)) >= 16(S64)) Assumption: true
(assert (>= (- $7 16) 16))
; (($cast: long $7$ - 0(S64)) >= 16(S64)) Assumption: true
(assert (>= (- $7 0) 16))
; $6 Assumption: true
(declare-const $6 Int)
(assert (and (< (- 9223372036854775808) $6) (< $6 9223372036854775807)))
(assert (not (= $6 0)))
; (1(U32) < $1) Assumption: true
(assert (< 1 $1))
; ($cast: unsigned int $0$ == 1(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 1))
(check-sat)
