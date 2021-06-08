; output/00003886.smt: generated with canalyze.
; ($cast: int $cast: unsigned char ($cast: int $8$ | 32(S32))$$ <= 122(S32)) Assumption: false
; ($cast: int $cast: unsigned char ($cast: int $8$ | 32(S32))$$ >= 97(S32)) Assumption: true
; ($cast: int $8$ == 72(S32)) Assumption: false
(declare-const $8 Int)
(assert (and (< (- 128) $8) (< $8 127)))
(assert (not (= $8 72)))
; ($cast: int $8$ == 10(S32)) Assumption: false
(assert (not (= $8 10)))
; ($cast: int $8$ == 13(S32)) Assumption: false
(assert (not (= $8 13)))
; (($cast: long $7$ - 0(S64)) >= 1(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
(assert (>= (- $7 0) 1))
; (0(S64) != (0(S64) + $cast: long $cast: size_t $2$$)) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
(assert (not (= 0 (+ 0 $2))))
; ($cast: size_t $2$ == 0(U64)) Assumption: false
(assert (not (= $2 0)))
; ($2 == 0(U64)) Assumption: false
(assert (not (= $2 0)))
; ($cast: unsigned int $cast: enum http_parser_type $3$$ == 1(U32)) Assumption: false
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (not (= $3 1)))
; ($cast: unsigned int $cast: enum http_parser_type $3$$ == 0(U32)) Assumption: false
(assert (not (= $3 0)))
; ($2 > 0(U64)) Assumption: true
(assert (> $2 0))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
