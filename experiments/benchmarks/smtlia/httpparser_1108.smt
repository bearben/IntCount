; output/00002118.smt: generated with canalyze.
; ($cast: int $21$ & 64(S32)) Assumption: true
; ($cast: int $18$ == 304(S32)) Assumption: false
(declare-const $18 Int)
(assert (and (< 0 $18) (< $18 4294967295)))
(assert (not (= $18 304)))
; ($cast: int $18$ == 204(S32)) Assumption: false
(assert (not (= $18 204)))
; (($cast: int $18$ / 100(S32)) == 1(S32)) Assumption: false
(assert (not (= (/ $18 100) 1)))
; ($cast: int $22$ == 0(S32)) Assumption: false
(declare-const $22 Int)
(assert (and (< 0 $22) (< $22 4294967295)))
(assert (not (= $22 0)))
; ($cast: int $21$ & 4(S32)) Assumption: false
; ($cast: int $20$ > 0(S32)) Assumption: true
(declare-const $20 Int)
(assert (and (< 0 $20) (< $20 65535)))
(assert (> $20 0))
; ($cast: int $19$ > 0(S32)) Assumption: true
(declare-const $19 Int)
(assert (and (< 0 $19) (< $19 65535)))
(assert (> $19 0))
; ((328600(S64) - (65720(S64) * (0(S64) + $cast: long $16$))) >= 65720(S64)) Assumption: true
(declare-const $16 Int)
(assert (and (< (- 2147483648) $16) (< $16 2147483647)))
(assert (>= (- 328600 (* 65720 (+ 0 $16))) 65720))
; $15 Assumption: true
(declare-const $15 Int)
(assert (and (< (- 2147483648) $15) (< $15 2147483647)))
(assert (not (= $15 0)))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; (($cast: long $4$ - 0(S64)) >= 80(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 0) 80))
; ($cast: unsigned int $cast: enum http_errno $1$$ == 31(U32)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (= $1 31))
; ($cast: unsigned int $cast: enum http_errno $1$$ == 0(U32)) Assumption: false
(assert (not (= $1 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
