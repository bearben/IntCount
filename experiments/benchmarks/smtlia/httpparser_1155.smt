; output/00002277.smt: generated with canalyze.
; ($17 == ($18 + 1(S32))) Assumption: false
(declare-const $17 Int)
(assert (and (< (- 2147483648) $17) (< $17 2147483647)))
(declare-const $18 Int)
(assert (and (< (- 2147483648) $18) (< $18 2147483647)))
(assert (not (= $17 (+ $18 1))))
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
