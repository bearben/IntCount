; output/00001705.smt: generated with canalyze.
; ($cast: int $9$ == 58(S32)) Assumption: false
(declare-const $9 Int)
(assert (and (< (- 128) $9) (< $9 127)))
(assert (not (= $9 58)))
; ($cast: int $9$ == 45(S32)) Assumption: false
(assert (not (= $9 45)))
; ($cast: int $9$ == 46(S32)) Assumption: false
(assert (not (= $9 46)))
; ($cast: int $9$ >= 48(S32)) Assumption: false
(assert (not (>= $9 48)))
; ($cast: int $cast: unsigned char ($cast: int $9$ | 32(S32))$$ <= 122(S32)) Assumption: false
; ($cast: int $cast: unsigned char ($cast: int $9$ | 32(S32))$$ >= 97(S32)) Assumption: true
; (($cast: long $6$ - (1(S64) * (((0(S64) + $cast: long $cast: int $1$$) + 1(S64)) + 1(S64)))) >= 1(S64)) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 18446744073709551615)))
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 65535)))
(assert (>= (- $6 (* 1 (+ (+ (+ 0 $1) 1) 1))) 1))
; (($cast: long $6$ - (1(S64) * ((((0(S64) + $cast: long $cast: int $1$$) + 1(S64)) + 1(S64)) + 0(S64)))) >= 1(S64)) Assumption: true
(assert (>= (- $6 (* 1 (+ (+ (+ (+ 0 $1) 1) 1) 0))) 1))
; ((((0(S64) + $cast: long $cast: int $1$$) + 1(S64)) + 1(S64)) < (0(S64) + $cast: long $cast: size_t ($cast: int $1$ + $cast: int $2$)$$)) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 65535)))
(assert (< (+ (+ (+ 0 $1) 1) 1) (+ 0 (+ $1 $2))))
; ($cast: int $8$ <= 57(S32)) Assumption: true
(declare-const $8 Int)
(assert (and (< (- 128) $8) (< $8 127)))
(assert (<= $8 57))
; ($cast: int $8$ >= 48(S32)) Assumption: true
(assert (>= $8 48))
; ($cast: int $cast: unsigned char ($cast: int $8$ | 32(S32))$$ <= 122(S32)) Assumption: false
; ($cast: int $cast: unsigned char ($cast: int $8$ | 32(S32))$$ >= 97(S32)) Assumption: true
; (($cast: long $6$ - (1(S64) * ((0(S64) + $cast: long $cast: int $1$$) + 1(S64)))) >= 1(S64)) Assumption: true
(assert (>= (- $6 (* 1 (+ (+ 0 $1) 1))) 1))
; (($cast: long $6$ - (1(S64) * (((0(S64) + $cast: long $cast: int $1$$) + 1(S64)) + 0(S64)))) >= 1(S64)) Assumption: true
(assert (>= (- $6 (* 1 (+ (+ (+ 0 $1) 1) 0))) 1))
; (((0(S64) + $cast: long $cast: int $1$$) + 1(S64)) < (0(S64) + $cast: long $cast: size_t ($cast: int $1$ + $cast: int $2$)$$)) Assumption: true
(assert (< (+ (+ 0 $1) 1) (+ 0 (+ $1 $2))))
; ($cast: int $7$ == 46(S32)) Assumption: true
(declare-const $7 Int)
(assert (and (< (- 128) $7) (< $7 127)))
(assert (= $7 46))
; ($cast: int $7$ >= 48(S32)) Assumption: false
(assert (not (>= $7 48)))
; ($cast: int $cast: unsigned char ($cast: int $7$ | 32(S32))$$ >= 97(S32)) Assumption: false
; ($cast: int $7$ == 91(S32)) Assumption: false
(assert (not (= $7 91)))
; (($cast: long $6$ - (1(S64) * (0(S64) + $cast: long $cast: int $1$$))) >= 1(S64)) Assumption: true
(assert (>= (- $6 (* 1 (+ 0 $1))) 1))
; (($cast: long $6$ - (1(S64) * ((0(S64) + $cast: long $cast: int $1$$) + 0(S64)))) >= 1(S64)) Assumption: true
(assert (>= (- $6 (* 1 (+ (+ 0 $1) 0))) 1))
; ((0(S64) + $cast: long $cast: int $1$$) < (0(S64) + $cast: long $cast: size_t ($cast: int $1$ + $cast: int $2$)$$)) Assumption: true
(assert (< (+ 0 $1) (+ 0 (+ $1 $2))))
; $4 Assumption: false
(declare-const $4 Int)
(assert (and (< (- 2147483648) $4) (< $4 2147483647)))
(assert (= $4 0))
; ($cast: int $3$ & 2(S32)) Assumption: true
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
