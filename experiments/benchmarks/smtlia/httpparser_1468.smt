; output/00003392.smt: generated with canalyze.
; ($cast: size_t $cast: enum http_errno $4$$ < 33(U64)) Assumption: false
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 4294967295)))
(assert (not (< $4 33)))
; ($cast: unsigned int $4$ != 0(U32)) Assumption: true
(assert (not (= $4 0)))
; (1(S64) != (0(S64) + $cast: long $cast: size_t $3$$)) Assumption: false
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (not (not (= 1 (+ 0 $3)))))
; [sym$regval:12 [field: [var: settings]->on_message_begin]$] == NULL Assumption: true
(declare-const $12 Int)
(assert (and (< (- 9223372036854775808) $12) (< $12 9223372036854775807)))
(assert (= $12 0))
; ($cast: int $10$ == 85(S32)) Assumption: true
(declare-const $10 Int)
(assert (and (< (- 128) $10) (< $10 127)))
(assert (= $10 85))
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
