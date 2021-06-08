; output/00003382.smt: generated with canalyze.
; ($cast: unsigned int $4$ != 16(U32)) Assumption: false
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 4294967295)))
(assert (not (not (= $4 16))))
; ($cast: int $10$ != 85(S32)) Assumption: true
(declare-const $10 Int)
(assert (and (< (- 128) $10) (< $10 127)))
(assert (not (= $10 85)))
; ($cast: int $10$ != 84(S32)) Assumption: true
(assert (not (= $10 84)))
; ($cast: int $10$ != 83(S32)) Assumption: true
(assert (not (= $10 83)))
; ($cast: int $10$ != 82(S32)) Assumption: true
(assert (not (= $10 82)))
; ($cast: int $10$ != 80(S32)) Assumption: true
(assert (not (= $10 80)))
; ($cast: int $10$ != 79(S32)) Assumption: true
(assert (not (= $10 79)))
; ($cast: int $10$ != 78(S32)) Assumption: true
(assert (not (= $10 78)))
; ($cast: int $10$ != 77(S32)) Assumption: true
(assert (not (= $10 77)))
; ($cast: int $10$ != 76(S32)) Assumption: true
(assert (not (= $10 76)))
; ($cast: int $10$ != 72(S32)) Assumption: true
(assert (not (= $10 72)))
; ($cast: int $10$ != 71(S32)) Assumption: true
(assert (not (= $10 71)))
; ($cast: int $10$ != 68(S32)) Assumption: true
(assert (not (= $10 68)))
; ($cast: int $10$ != 67(S32)) Assumption: true
(assert (not (= $10 67)))
; ($cast: int $10$ != 66(S32)) Assumption: true
(assert (not (= $10 66)))
; ($cast: int $10$ != 65(S32)) Assumption: true
(assert (not (= $10 65)))
; ($cast: int $cast: unsigned char ($cast: int $10$ | 32(S32))$$ <= 122(S32)) Assumption: true
; ($cast: int $cast: unsigned char ($cast: int $10$ | 32(S32))$$ >= 97(S32)) Assumption: true
; ($cast: int $10$ == 72(S32)) Assumption: false
(assert (not (= $10 72)))
; ($cast: int $10$ == 10(S32)) Assumption: false
(assert (not (= $10 10)))
; ($cast: int $10$ == 13(S32)) Assumption: false
(assert (not (= $10 13)))
; (($cast: long $9$ - 0(S64)) >= 1(S64)) Assumption: true
(declare-const $9 Int)
(assert (and (< 0 $9) (< $9 18446744073709551615)))
(assert (>= (- $9 0) 1))
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
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; ($cast: unsigned int $cast: enum http_parser_type $0$$ == 1(U32)) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (= $0 1)))
; ($cast: unsigned int $cast: enum http_parser_type $0$$ == 0(U32)) Assumption: false
(assert (not (= $0 0)))
(check-sat)
