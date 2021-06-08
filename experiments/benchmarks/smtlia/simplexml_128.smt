; output/00000235.smt: generated with canalyze.
; (((((($1 + 1(S32)) + 1(S32)) - 1(S32)) - 1(S32)) - 1(S32)) >= ($1 + 1(S32))) Assumption: false
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (not (>= (- (- (- (+ (+ $1 1) 1) 1) 1) 1) (+ $1 1))))
; ($cast: int $16$ == 32(S32)) Assumption: false
(declare-const $16 Int)
(assert (and (< (- 128) $16) (< $16 127)))
(assert (not (= $16 32)))
; (($cast: long $4$ - (1(S64) * (0(S64) + $cast: long ((((($1 + 1(S32)) + 1(S32)) - 1(S32)) - 1(S32)) - 1(S32))$))) >= 1(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 (* 1 (+ 0 (- (- (- (+ (+ $1 1) 1) 1) 1) 1)))) 1))
; ($cast: int $15$ == 32(S32)) Assumption: true
(declare-const $15 Int)
(assert (and (< (- 128) $15) (< $15 127)))
(assert (= $15 32))
; (($cast: long $4$ - (1(S64) * (0(S64) + $cast: long (((($1 + 1(S32)) + 1(S32)) - 1(S32)) - 1(S32))$))) >= 1(S64)) Assumption: true
(assert (>= (- $4 (* 1 (+ 0 (- (- (+ (+ $1 1) 1) 1) 1)))) 1))
; ($cast: int $9$ == 32(S32)) Assumption: false
(declare-const $9 Int)
(assert (and (< (- 128) $9) (< $9 127)))
(assert (not (= $9 32)))
; ($cast: int $5$ == 32(S32)) Assumption: true
(declare-const $5 Int)
(assert (and (< (- 128) $5) (< $5 127)))
(assert (= $5 32))
; ((($1 + 1(S32)) + 1(S32)) > ($1 + 1(S32))) Assumption: true
(assert (> (+ (+ $1 1) 1) (+ $1 1)))
; ($cast: int $9$ == 60(S32)) Assumption: true
(assert (= $9 60))
; (($cast: long $4$ - (1(S64) * (0(S64) + $cast: long ($1 + 1(S32))$))) >= 1(S64)) Assumption: true
(assert (>= (- $4 (* 1 (+ 0 (+ $1 1)))) 1))
; (($1 + 1(S32)) < $cast: int $3$) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
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
