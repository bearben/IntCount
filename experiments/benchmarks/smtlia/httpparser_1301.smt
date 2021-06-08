; output/00002829.smt: generated with canalyze.
; (2(U64) < $5) Assumption: false
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 18446744073709551615)))
(assert (not (< 2 $5)))
; ($cast: int $13$ == 13(S32)) Assumption: true
(declare-const $13 Int)
(assert (and (< (- 128) $13) (< $13 127)))
(assert (= $13 13))
; (($cast: long $7$ - 1(S64)) >= 1(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
(assert (>= (- $7 1) 1))
; (1(U64) == $6) Assumption: false
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 18446744073709551615)))
(assert (not (= 1 $6)))
; (1(U64) < $5) Assumption: true
(assert (< 1 $5))
; ($cast: int $8$ == 10(S32)) Assumption: true
(declare-const $8 Int)
(assert (and (< (- 128) $8) (< $8 127)))
(assert (= $8 10))
; (($cast: long $7$ - 0(S64)) >= 1(S64)) Assumption: true
(assert (>= (- $7 0) 1))
; (0(U64) == $6) Assumption: false
(assert (not (= 0 $6)))
; (0(U64) < $5) Assumption: true
(assert (< 0 $5))
; ($5 > 0(U64)) Assumption: true
(assert (> $5 0))
; $4 Assumption: true
(declare-const $4 Int)
(assert (and (< (- 9223372036854775808) $4) (< $4 9223372036854775807)))
(assert (not (= $4 0)))
; ((528(S64) - (16(S64) * (0(S64) + $cast: long $cast: enum http_errno $cast: enum http_errno $1$$$))) >= 16(S64)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (>= (- 528 (* 16 (+ 0 $1))) 16))
; ($cast: size_t $cast: enum http_errno $cast: enum http_errno $1$$$ < 33(U64)) Assumption: true
(assert (< $1 33))
(check-sat)
