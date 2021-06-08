; output/00003112.smt: generated with canalyze.
; ($cast: int $20$ == 10(S32)) Assumption: true
(declare-const $20 Int)
(assert (and (< (- 128) $20) (< $20 127)))
(assert (= $20 10))
; (($cast: long $11$ - 2(S64)) >= 1(S64)) Assumption: true
(declare-const $11 Int)
(assert (and (< 0 $11) (< $11 18446744073709551615)))
(assert (>= (- $11 2) 1))
; (2(U64) < $2) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
(assert (< 2 $2))
; ($cast: int $17$ == 13(S32)) Assumption: true
(declare-const $17 Int)
(assert (and (< (- 128) $17) (< $17 127)))
(assert (= $17 13))
; (($cast: long $11$ - 1(S64)) >= 1(S64)) Assumption: true
(assert (>= (- $11 1) 1))
; (1(U64) < $2) Assumption: true
(assert (< 1 $2))
; ($cast: int $12$ != 10(S32)) Assumption: true
(declare-const $12 Int)
(assert (and (< (- 128) $12) (< $12 127)))
(assert (not (= $12 10)))
; ($cast: int $12$ != 13(S32)) Assumption: true
(assert (not (= $12 13)))
; (($cast: long $11$ - 0(S64)) >= 1(S64)) Assumption: true
(assert (>= (- $11 0) 1))
; (0(U64) != ($2 - 0(U64))) Assumption: true
(assert (not (= 0 (- $2 0))))
; $5 Assumption: true
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (not (= $5 0)))
; ($cast: int $12$ != 85(S32)) Assumption: true
(assert (not (= $12 85)))
; ($cast: int $12$ != 84(S32)) Assumption: true
(assert (not (= $12 84)))
; ($cast: int $12$ != 83(S32)) Assumption: true
(assert (not (= $12 83)))
; ($cast: int $12$ != 82(S32)) Assumption: true
(assert (not (= $12 82)))
; ($cast: int $12$ != 80(S32)) Assumption: true
(assert (not (= $12 80)))
; ($cast: int $12$ != 79(S32)) Assumption: true
(assert (not (= $12 79)))
; ($cast: int $12$ != 78(S32)) Assumption: true
(assert (not (= $12 78)))
; ($cast: int $12$ != 77(S32)) Assumption: true
(assert (not (= $12 77)))
; ($cast: int $12$ != 76(S32)) Assumption: true
(assert (not (= $12 76)))
; ($cast: int $12$ != 72(S32)) Assumption: true
(assert (not (= $12 72)))
; ($cast: int $12$ != 71(S32)) Assumption: true
(assert (not (= $12 71)))
; ($cast: int $12$ != 68(S32)) Assumption: true
(assert (not (= $12 68)))
; ($cast: int $12$ != 67(S32)) Assumption: true
(assert (not (= $12 67)))
; ($cast: int $12$ != 66(S32)) Assumption: true
(assert (not (= $12 66)))
; ($cast: int $12$ != 65(S32)) Assumption: true
(assert (not (= $12 65)))
; ($cast: int $cast: unsigned char ($cast: int $12$ | 32(S32))$$ <= 122(S32)) Assumption: true
; ($cast: int $cast: unsigned char ($cast: int $12$ | 32(S32))$$ >= 97(S32)) Assumption: true
; ($cast: int $12$ == 72(S32)) Assumption: false
(assert (not (= $12 72)))
; ($cast: int $12$ == 10(S32)) Assumption: false
(assert (not (= $12 10)))
; ($cast: int $12$ == 13(S32)) Assumption: false
(assert (not (= $12 13)))
; (($cast: long $11$ - 0(S64)) >= 1(S64)) Assumption: true
(assert (>= (- $11 0) 1))
; (0(S64) != (0(S64) + $cast: long $cast: size_t ($2 - 0(U64))$$)) Assumption: true
(assert (not (= 0 (+ 0 (- $2 0)))))
; ($cast: size_t ($2 - 0(U64))$ == 0(U64)) Assumption: false
(assert (not (= (- $2 0) 0)))
; (($2 - 0(U64)) == 0(U64)) Assumption: false
(assert (not (= (- $2 0) 0)))
; ($cast: unsigned int $cast: enum http_parser_type $3$$ == 1(U32)) Assumption: false
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (not (= $3 1)))
; ($cast: unsigned int $cast: enum http_parser_type $3$$ == 0(U32)) Assumption: false
(assert (not (= $3 0)))
; (0(U64) < $2) Assumption: true
(assert (< 0 $2))
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
