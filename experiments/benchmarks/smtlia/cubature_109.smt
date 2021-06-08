; output/00000217.smt: generated with canalyze.
; (($2 + 1(U64)) * 2(U64)) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
(assert (not (= (* (+ $2 1) 2) 0)))
; (($2 + 1(U64)) > $3) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (> (+ $2 1) $3))
; (2(U32) < $1) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (not (< 2 $1)))
; (($cast: long $26$ - 16(S64)) >= 16(S64)) Assumption: true
(declare-const $26 Int)
(assert (and (< 0 $26) (< $26 18446744073709551615)))
(assert (>= (- $26 16) 16))
; (($cast: long $25$ - 16(S64)) >= 16(S64)) Assumption: true
(declare-const $25 Int)
(assert (and (< 0 $25) (< $25 18446744073709551615)))
(assert (>= (- $25 16) 16))
; (1(U32) < $1) Assumption: true
(assert (< 1 $1))
; (($cast: long $26$ - 0(S64)) >= 16(S64)) Assumption: true
(assert (>= (- $26 0) 16))
; $10 Assumption: true
(declare-const $10 Int)
(assert (and (< (- 9223372036854775808) $10) (< $10 9223372036854775807)))
(assert (not (= $10 0)))
; (($cast: long $25$ - 0(S64)) >= 16(S64)) Assumption: true
(assert (>= (- $25 0) 16))
; $24 Assumption: true
(declare-const $24 Int)
(assert (and (< (- 9223372036854775808) $24) (< $24 9223372036854775807)))
(assert (not (= $24 0)))
; (0(U32) < $1) Assumption: true
(assert (< 0 $1))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
