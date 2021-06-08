; output/00000171.smt: generated with canalyze.
; (($cast: long (1(U64) * $cast: unsigned long ((((((((($1 + 1(S32)) + 1(S32)) + 1(S32)) - 1(S32)) - 1(S32)) - 1(S32)) - $1) + 1(S32)) + 1(S32))$)$ - (1(S64) * (0(S64) + $cast: long (((((((($1 + 1(S32)) + 1(S32)) + 1(S32)) - 1(S32)) - 1(S32)) - 1(S32)) - $1) + 1(S32))$))) >= 1(S64)) Assumption: true
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (>= (- (* 1 (+ (+ (- (- (- (- (+ (+ (+ $1 1) 1) 1) 1) 1) 1) $1) 1) 1)) (* 1 (+ 0 (+ (- (- (- (- (+ (+ (+ $1 1) 1) 1) 1) 1) 1) $1) 1)))) 1))
; ((1(U64) * $cast: unsigned long ((((((((($1 + 1(S32)) + 1(S32)) + 1(S32)) - 1(S32)) - 1(S32)) - 1(S32)) - $1) + 1(S32)) + 1(S32))$) > 0(U64)) Assumption: true
(assert (> (* 1 (+ (+ (- (- (- (- (+ (+ (+ $1 1) 1) 1) 1) 1) 1) $1) 1) 1)) 0))
; ((((((($1 + 1(S32)) + 1(S32)) + 1(S32)) - 1(S32)) - 1(S32)) - 1(S32)) >= $1) Assumption: true
(assert (>= (- (- (- (+ (+ (+ $1 1) 1) 1) 1) 1) 1) $1))
; ($cast: int $18$ == 32(S32)) Assumption: false
(declare-const $18 Int)
(assert (and (< (- 128) $18) (< $18 127)))
(assert (not (= $18 32)))
; (($cast: long $4$ - (1(S64) * (0(S64) + $cast: long (((((($1 + 1(S32)) + 1(S32)) + 1(S32)) - 1(S32)) - 1(S32)) - 1(S32))$))) >= 1(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 (* 1 (+ 0 (- (- (- (+ (+ (+ $1 1) 1) 1) 1) 1) 1)))) 1))
; ($cast: int $17$ == 32(S32)) Assumption: true
(declare-const $17 Int)
(assert (and (< (- 128) $17) (< $17 127)))
(assert (= $17 32))
; (($cast: long $4$ - (1(S64) * (0(S64) + $cast: long ((((($1 + 1(S32)) + 1(S32)) + 1(S32)) - 1(S32)) - 1(S32))$))) >= 1(S64)) Assumption: true
(assert (>= (- $4 (* 1 (+ 0 (- (- (+ (+ (+ $1 1) 1) 1) 1) 1)))) 1))
; ($cast: int $5$ == 32(S32)) Assumption: false
(declare-const $5 Int)
(assert (and (< (- 128) $5) (< $5 127)))
(assert (not (= $5 32)))
; (((($1 + 1(S32)) + 1(S32)) + 1(S32)) > ($1 + 1(S32))) Assumption: true
(assert (> (+ (+ (+ $1 1) 1) 1) (+ $1 1)))
; ($cast: int $10$ == 62(S32)) Assumption: true
(declare-const $10 Int)
(assert (and (< (- 128) $10) (< $10 127)))
(assert (= $10 62))
; (($cast: long $4$ - (1(S64) * (0(S64) + $cast: long (($1 + 1(S32)) + 1(S32))$))) >= 1(S64)) Assumption: true
(assert (>= (- $4 (* 1 (+ 0 (+ (+ $1 1) 1)))) 1))
; ((($1 + 1(S32)) + 1(S32)) < $cast: int $3$) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (< (+ (+ $1 1) 1) $3))
; ($cast: int $9$ != 62(S32)) Assumption: true
(declare-const $9 Int)
(assert (and (< (- 128) $9) (< $9 127)))
(assert (not (= $9 62)))
; ($cast: int $9$ != 60(S32)) Assumption: true
(assert (not (= $9 60)))
; (($cast: long $4$ - (1(S64) * (0(S64) + $cast: long ($1 + 1(S32))$))) >= 1(S64)) Assumption: true
(assert (>= (- $4 (* 1 (+ 0 (+ $1 1)))) 1))
; (($1 + 1(S32)) < $cast: int $3$) Assumption: true
(assert (< (+ $1 1) $3))
; ($cast: int $5$ != 62(S32)) Assumption: true
(assert (not (= $5 62)))
; ($cast: int $5$ != 60(S32)) Assumption: true
(assert (not (= $5 60)))
; (($cast: long $4$ - (1(S64) * (0(S64) + $cast: long $1$))) >= 1(S64)) Assumption: true
(assert (>= (- $4 (* 1 (+ 0 $1))) 1))
; ($1 < $cast: int $3$) Assumption: true
(assert (< $1 $3))
; ($1 >= $cast: int $3$) Assumption: false
(assert (not (>= $1 $3)))
; ($3 > 0(U64)) Assumption: true
(assert (> $3 0))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
