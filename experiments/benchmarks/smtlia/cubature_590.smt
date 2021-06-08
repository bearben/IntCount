; output/00000942.smt: generated with canalyze.
; (2(U32) < $0) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (< 2 $0)))
; (($cast: long $11$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $11 Int)
(assert (and (< 0 $11) (< $11 18446744073709551615)))
(assert (>= (- $11 8) 8))
; (($cast: long $10$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $10 Int)
(assert (and (< 0 $10) (< $10 18446744073709551615)))
(assert (>= (- $10 8) 8))
; (1(U32) < $0) Assumption: true
(assert (< 1 $0))
; (($cast: long $11$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $11 0) 8))
; $9 Assumption: true
(declare-const $9 Int)
(assert (and (< (- 9223372036854775808) $9) (< $9 9223372036854775807)))
(assert (not (= $9 0)))
; (($cast: long $10$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $10 0) 8))
; $8 Assumption: true
(declare-const $8 Int)
(assert (and (< (- 9223372036854775808) $8) (< $8 9223372036854775807)))
(assert (not (= $8 0)))
; (0(U32) < $0) Assumption: true
(assert (< 0 $0))
; (((8(U64) * $cast: unsigned long $3$) * 3(U64)) > 0(U64)) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (> (* (* 8 $3) 3) 0))
; ($cast: unsigned long $3$ >= 32(U64)) Assumption: false
(assert (not (>= $3 32)))
; ($3 < 2(U32)) Assumption: false
(assert (not (< $3 2)))
; ($3 == 1(U32)) Assumption: false
(assert (not (= $3 1)))
; ($3 == 0(U32)) Assumption: false
(assert (not (= $3 0)))
; ($0 == 0(U32)) Assumption: false
(assert (not (= $0 0)))
(check-sat)
