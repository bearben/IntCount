; output/00000098.smt: generated with canalyze.
; (($cast: long (1(U64) * $cast: unsigned long (((($5 - 1(S32)) - $2) + 1(S32)) + 1(S32))$)$ - (1(S64) * (0(S64) + $cast: long ((($5 - 1(S32)) - $2) + 1(S32))$))) >= 1(S64)) Assumption: true
(declare-const $5 Int)
(assert (and (< (- 2147483648) $5) (< $5 2147483647)))
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (>= (- (* 1 (+ (+ (- (- $5 1) $2) 1) 1)) (* 1 (+ 0 (+ (- (- $5 1) $2) 1)))) 1))
; ((1(U64) * $cast: unsigned long (((($5 - 1(S32)) - $2) + 1(S32)) + 1(S32))$) > 0(U64)) Assumption: true
(assert (> (* 1 (+ (+ (- (- $5 1) $2) 1) 1)) 0))
; (($5 - 1(S32)) >= $2) Assumption: true
(assert (>= (- $5 1) $2))
; ($cast: int $7$ == 32(S32)) Assumption: false
(declare-const $7 Int)
(assert (and (< (- 128) $7) (< $7 127)))
(assert (not (= $7 32)))
; (($cast: long $3$ - (1(S64) * (0(S64) + $cast: long ($5 - 1(S32))$))) >= 1(S64)) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (>= (- $3 (* 1 (+ 0 (- $5 1)))) 1))
; ($cast: int $6$ == 32(S32)) Assumption: true
(declare-const $6 Int)
(assert (and (< (- 128) $6) (< $6 127)))
(assert (= $6 32))
; (($cast: long $3$ - (1(S64) * (0(S64) + $cast: long $5$))) >= 1(S64)) Assumption: true
(assert (>= (- $3 (* 1 (+ 0 $5))) 1))
; ($cast: int $4$ == 32(S32)) Assumption: false
(declare-const $4 Int)
(assert (and (< (- 128) $4) (< $4 127)))
(assert (not (= $4 32)))
; (($cast: long $3$ - (1(S64) * (0(S64) + $cast: long $2$))) >= 1(S64)) Assumption: true
(assert (>= (- $3 (* 1 (+ 0 $2))) 1))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
