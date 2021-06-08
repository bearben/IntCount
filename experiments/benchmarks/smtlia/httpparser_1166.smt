; output/00002404.smt: generated with canalyze.
; ($cast: int $10$ == 62(S32)) Assumption: false
(declare-const $10 Int)
(assert (and (< 0 $10) (< $10 4294967295)))
(assert (not (= $10 62)))
; $6 Assumption: true
(declare-const $6 Int)
(assert (and (< (- 9223372036854775808) $6) (< $6 9223372036854775807)))
(assert (not (= $6 0)))
; $8 Assumption: true
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 18446744073709551615)))
(assert (not (= $8 0)))
; $7 Assumption: true
(declare-const $7 Int)
(assert (and (< (- 2147483648) $7) (< $7 2147483647)))
(assert (not (= $7 0)))
; ($cast: unsigned long long $5$ != 18446744073709551615(U64)) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 18446744073709551615)))
(assert (not (= $5 18446744073709551615)))
; ($cast: int $2$ & 1(S32)) Assumption: false
; ($cast: int $2$ & 64(S32)) Assumption: false
; ($cast: int $4$ == 304(S32)) Assumption: false
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 4294967295)))
(assert (not (= $4 304)))
; ($cast: int $4$ == 204(S32)) Assumption: false
(assert (not (= $4 204)))
; (($cast: int $4$ / 100(S32)) == 1(S32)) Assumption: false
(assert (not (= (/ $4 100) 1)))
; ($cast: int $3$ == 0(S32)) Assumption: false
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (not (= $3 0)))
; ($cast: int $2$ & 4(S32)) Assumption: false
; ($cast: int $14$ > 0(S32)) Assumption: true
(declare-const $14 Int)
(assert (and (< 0 $14) (< $14 65535)))
(assert (> $14 0))
; ($cast: int $1$ > 0(S32)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 65535)))
(assert (> $1 0))
; ((328600(S64) - (65720(S64) * (0(S64) + $cast: long $0$))) >= 65720(S64)) Assumption: true
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (>= (- 328600 (* 65720 (+ 0 $0))) 65720))
(check-sat)
