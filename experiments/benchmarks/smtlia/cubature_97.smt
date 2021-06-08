; output/00000202.smt: generated with canalyze.
; (($cast: long (48(U64) * (($2 + 1(U64)) * 2(U64)))$ - (48(S64) * (0(S64) + $cast: long $cast: int $2$$))) >= 48(S64)) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
(assert (>= (- (* 48 (* (+ $2 1) 2)) (* 48 (+ 0 $2))) 48))
; $11 Assumption: true
(declare-const $11 Int)
(assert (and (< (- 2147483648) $11) (< $11 2147483647)))
(assert (not (= $11 0)))
; (($cast: long (48(U64) * (($2 + 1(U64)) * 2(U64)))$ - (48(S64) * (0(S64) + $cast: long (($cast: int $2$ - 1(S32)) / 2(S32))$))) >= 48(S64)) Assumption: true
(assert (>= (- (* 48 (* (+ $2 1) 2)) (* 48 (+ 0 (/ (- $2 1) 2)))) 48))
; $cast: int $2$ Assumption: true
(assert (not (= $2 0)))
; ((48(U64) * (($2 + 1(U64)) * 2(U64))) > 0(U64)) Assumption: true
(assert (> (* 48 (* (+ $2 1) 2)) 0))
; (($2 + 1(U64)) * 2(U64)) Assumption: true
(assert (not (= (* (+ $2 1) 2) 0)))
; (($2 + 1(U64)) > $3) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (> (+ $2 1) $3))
; (1(U32) < $1) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (not (< 1 $1)))
; (($cast: long $26$ - 0(S64)) >= 16(S64)) Assumption: true
(declare-const $26 Int)
(assert (and (< 0 $26) (< $26 18446744073709551615)))
(assert (>= (- $26 0) 16))
; $10 Assumption: true
(declare-const $10 Int)
(assert (and (< (- 9223372036854775808) $10) (< $10 9223372036854775807)))
(assert (not (= $10 0)))
; (($cast: long $25$ - 0(S64)) >= 16(S64)) Assumption: true
(declare-const $25 Int)
(assert (and (< 0 $25) (< $25 18446744073709551615)))
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
