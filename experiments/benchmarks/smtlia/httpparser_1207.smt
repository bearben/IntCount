; output/00002492.smt: generated with canalyze.
; (0(S32) < $25) Assumption: true
(declare-const $25 Int)
(assert (and (< (- 2147483648) $25) (< $25 2147483647)))
(assert (< 0 $25))
; ($24 != $25) Assumption: false
(declare-const $24 Int)
(assert (and (< (- 2147483648) $24) (< $24 2147483647)))
(assert (not (not (= $24 $25))))
; (0(S32) != $23) Assumption: false
(declare-const $23 Int)
(assert (and (< (- 2147483648) $23) (< $23 2147483647)))
(assert (not (not (= 0 $23))))
; (0(S32) != $cast: int $22$) Assumption: true
(declare-const $22 Int)
(assert (and (< 0 $22) (< $22 18446744073709551615)))
(assert (not (= 0 $22)))
; $14 Assumption: true
(declare-const $14 Int)
(assert (and (< (- 2147483648) $14) (< $14 2147483647)))
(assert (not (= $14 0)))
; $cast: int $21$ Assumption: false
(declare-const $21 Int)
(assert (and (< (- 128) $21) (< $21 127)))
(assert (= $21 0))
; $17 Assumption: true
(declare-const $17 Int)
(assert (and (< (- 2147483648) $17) (< $17 2147483647)))
(assert (not (= $17 0)))
; $16 Assumption: true
(declare-const $16 Int)
(assert (and (< (- 2147483648) $16) (< $16 2147483647)))
(assert (not (= $16 0)))
; $15 Assumption: true
(declare-const $15 Int)
(assert (and (< (- 2147483648) $15) (< $15 2147483647)))
(assert (not (= $15 0)))
; ($14 == 0(S32)) Assumption: false
(assert (not (= $14 0)))
; $13 Assumption: true
(declare-const $13 Int)
(assert (and (< (- 2147483648) $13) (< $13 2147483647)))
(assert (not (= $13 0)))
; ($7 != $8) Assumption: false
(declare-const $7 Int)
(assert (and (< (- 2147483648) $7) (< $7 2147483647)))
(declare-const $8 Int)
(assert (and (< (- 2147483648) $8) (< $8 2147483647)))
(assert (not (not (= $7 $8))))
; ($cast: unsigned int $6$ == 0(U32)) Assumption: false
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 4294967295)))
(assert (not (= $6 0)))
; ($cast: int $4$ != $cast: int $5$) Assumption: false
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 65535)))
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 65535)))
(assert (not (not (= $4 $5))))
; ($cast: int $2$ != $cast: int $3$) Assumption: false
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 65535)))
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 65535)))
(assert (not (not (= $2 $3))))
; ((328600(S64) - (65720(S64) * (0(S64) + $cast: long $0$))) >= 65720(S64)) Assumption: true
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (>= (- 328600 (* 65720 (+ 0 $0))) 65720))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
(check-sat)
