; output/00001523.smt: generated with canalyze.
; $26 Assumption: false
(declare-const $26 Int)
(assert (and (< (- 2147483648) $26) (< $26 2147483647)))
(assert (= $26 0))
; (($cast: long $9$ - 0(S64)) >= 8(S64)) Assumption: true
(declare-const $9 Int)
(assert (and (< 0 $9) (< $9 18446744073709551615)))
(assert (>= (- $9 0) 8))
; $8 Assumption: true
(declare-const $8 Int)
(assert (and (< (- 9223372036854775808) $8) (< $8 9223372036854775807)))
(assert (not (= $8 0)))
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
