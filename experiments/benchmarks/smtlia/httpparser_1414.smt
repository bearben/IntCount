; output/00003160.smt: generated with canalyze.
; $cast: int $37$ Assumption: true
(declare-const $37 Int)
(assert (and (< 0 $37) (< $37 4294967295)))
(assert (not (= $37 0)))
; $5 Assumption: true
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (not (= $5 0)))
; ($cast: unsigned int $cast: enum http_errno $33$$ != 0(U32)) Assumption: true
(declare-const $33 Int)
(assert (and (< 0 $33) (< $33 4294967295)))
(assert (not (= $33 0)))
; (0(S32) != $31) Assumption: false
(declare-const $31 Int)
(assert (and (< (- 2147483648) $31) (< $31 2147483647)))
(assert (not (not (= 0 $31))))
; [sym$regval:30 [field: [var: settings]->on_message_begin]$] == NULL Assumption: false
(declare-const $30 Int)
(assert (and (< (- 9223372036854775808) $30) (< $30 9223372036854775807)))
(assert (not (= $30 0)))
; ($cast: int $12$ == 85(S32)) Assumption: true
(declare-const $12 Int)
(assert (and (< (- 128) $12) (< $12 127)))
(assert (= $12 85))
; ($cast: int $cast: unsigned char ($cast: int $12$ | 32(S32))$$ <= 122(S32)) Assumption: true
; ($cast: int $cast: unsigned char ($cast: int $12$ | 32(S32))$$ >= 97(S32)) Assumption: true
; ($cast: int $12$ == 72(S32)) Assumption: false
(assert (not (= $12 72)))
; ($cast: int $12$ == 10(S32)) Assumption: false
(assert (not (= $12 10)))
; ($cast: int $12$ == 13(S32)) Assumption: false
(assert (not (= $12 13)))
; (($cast: long $11$ - 0(S64)) >= 1(S64)) Assumption: true
(declare-const $11 Int)
(assert (and (< 0 $11) (< $11 18446744073709551615)))
(assert (>= (- $11 0) 1))
; (0(S64) != (0(S64) + $cast: long $cast: size_t ($2 - 0(U64))$$)) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
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