; output/00002811.smt: generated with canalyze.
; ((328600(S64) - (65720(S64) * (0(S64) + $cast: long ($22 - 1(S32))$))) >= 65720(S64)) Assumption: true
(declare-const $22 Int)
(assert (and (< (- 2147483648) $22) (< $22 2147483647)))
(assert (>= (- 328600 (* 65720 (+ 0 (- $22 1)))) 65720))
; (($cast: long $21$ - (1(S64) * ((0(S64) + $cast: long $16$) + $cast: long $25$))) >= 1(S64)) Assumption: true
(declare-const $21 Int)
(assert (and (< 0 $21) (< $21 18446744073709551615)))
(declare-const $16 Int)
(assert (and (< 0 $16) (< $16 18446744073709551615)))
(declare-const $25 Int)
(assert (and (< 0 $25) (< $25 18446744073709551615)))
(assert (>= (- $21 (* 1 (+ (+ 0 $16) $25))) 1))
; (($cast: long $21$ - (1(S64) * (((0(S64) + $cast: long $16$) + $cast: long $25$) + 0(S64)))) >= 1(S64)) Assumption: true
(assert (>= (- $21 (* 1 (+ (+ (+ 0 $16) $25) 0))) 1))
; ($25 > 0(U64)) Assumption: true
(assert (> $25 0))
; $5 Assumption: true
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (not (= $5 0)))
; ($4 > 0(U64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (> $4 0))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; (0(U64) < $0) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 18446744073709551615)))
(assert (< 0 $0))
(check-sat)
