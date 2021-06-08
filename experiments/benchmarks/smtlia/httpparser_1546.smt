; output/00003513.smt: generated with canalyze.
; ($cast: unsigned int $1$ != 16(U32)) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (not (not (= $1 16))))
; ($cast: int $cast: unsigned char ($cast: int $9$ | 32(S32))$$ <= 122(S32)) Assumption: false
; ($cast: int $cast: unsigned char ($cast: int $9$ | 32(S32))$$ >= 97(S32)) Assumption: true
; ($cast: int $9$ == 10(S32)) Assumption: false
(declare-const $9 Int)
(assert (and (< (- 128) $9) (< $9 127)))
(assert (not (= $9 10)))
; ($cast: int $9$ == 13(S32)) Assumption: false
(assert (not (= $9 13)))
; (($cast: long $8$ - 0(S64)) >= 1(S64)) Assumption: true
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 18446744073709551615)))
(assert (>= (- $8 0) 1))
; (0(S64) != (0(S64) + $cast: long $cast: size_t $3$$)) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (not (= 0 (+ 0 $3))))
; ($cast: size_t $3$ == 0(U64)) Assumption: false
(assert (not (= $3 0)))
; ($3 == 0(U64)) Assumption: false
(assert (not (= $3 0)))
; ($3 > 0(U64)) Assumption: true
(assert (> $3 0))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
