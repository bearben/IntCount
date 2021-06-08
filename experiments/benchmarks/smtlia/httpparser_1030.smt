; output/00001988.smt: generated with canalyze.
; ($12 == 0(S32)) Assumption: true
(declare-const $12 Int)
(assert (and (< (- 2147483648) $12) (< $12 2147483647)))
(assert (= $12 0))
; ($cast: int $11$ == 62(S32)) Assumption: true
(declare-const $11 Int)
(assert (and (< 0 $11) (< $11 4294967295)))
(assert (= $11 62))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
; $9 Assumption: true
(declare-const $9 Int)
(assert (and (< 0 $9) (< $9 18446744073709551615)))
(assert (not (= $9 0)))
; ($3 != 0(S32)) Assumption: false
(declare-const $3 Int)
(assert (and (< (- 2147483648) $3) (< $3 2147483647)))
(assert (not (not (= $3 0))))
; ($cast: int $5$ & 4(S32)) Assumption: true
; ($cast: int $16$ > 0(S32)) Assumption: true
(declare-const $16 Int)
(assert (and (< 0 $16) (< $16 65535)))
(assert (> $16 0))
; ($cast: int $4$ > 0(S32)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 65535)))
(assert (> $4 0))
; ((328600(S64) - (65720(S64) * (0(S64) + $cast: long $2$))) >= 65720(S64)) Assumption: true
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (>= (- 328600 (* 65720 (+ 0 $2))) 65720))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (not (= $1 0)))
(check-sat)
