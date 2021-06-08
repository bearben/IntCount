; output/00001954.smt: generated with canalyze.
; ($3 != 1(S32)) Assumption: true
(declare-const $3 Int)
(assert (and (< (- 2147483648) $3) (< $3 2147483647)))
(assert (not (= $3 1)))
; ($cast: unsigned long long $8$ != 18446744073709551615(U64)) Assumption: true
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 18446744073709551615)))
(assert (not (= $8 18446744073709551615)))
; ($cast: int $5$ & 1(S32)) Assumption: false
; ($cast: int $5$ & 64(S32)) Assumption: false
; ($cast: int $7$ == 304(S32)) Assumption: false
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 4294967295)))
(assert (not (= $7 304)))
; ($cast: int $7$ == 204(S32)) Assumption: false
(assert (not (= $7 204)))
; (($cast: int $7$ / 100(S32)) == 1(S32)) Assumption: false
(assert (not (= (/ $7 100) 1)))
; ($cast: int $6$ == 0(S32)) Assumption: false
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 4294967295)))
(assert (not (= $6 0)))
; ($cast: int $5$ & 4(S32)) Assumption: false
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
