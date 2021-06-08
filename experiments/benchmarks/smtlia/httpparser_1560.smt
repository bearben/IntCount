; output/00003527.smt: generated with canalyze.
; ((528(S64) - (16(S64) * (0(S64) + $cast: long $cast: enum http_errno $1$$))) >= 16(S64)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (>= (- 528 (* 16 (+ 0 $1))) 16))
; ($cast: size_t $cast: enum http_errno $1$$ < 33(U64)) Assumption: true
(assert (< $1 33))
; ($cast: unsigned int $1$ != 0(U32)) Assumption: true
(assert (not (= $1 0)))
; (1(S64) != (0(S64) + $cast: long $cast: size_t $3$$)) Assumption: false
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (not (not (= 1 (+ 0 $3)))))
; [sym$regval:11 [field: [var: settings]->on_message_begin]$] == NULL Assumption: true
(declare-const $11 Int)
(assert (and (< (- 9223372036854775808) $11) (< $11 9223372036854775807)))
(assert (= $11 0))
; ($cast: int $9$ == 85(S32)) Assumption: true
(declare-const $9 Int)
(assert (and (< (- 128) $9) (< $9 127)))
(assert (= $9 85))
; ($cast: int $cast: unsigned char ($cast: int $9$ | 32(S32))$$ <= 122(S32)) Assumption: true
; ($cast: int $cast: unsigned char ($cast: int $9$ | 32(S32))$$ >= 97(S32)) Assumption: true
; ($cast: int $9$ == 10(S32)) Assumption: false
(assert (not (= $9 10)))
; ($cast: int $9$ == 13(S32)) Assumption: false
(assert (not (= $9 13)))
; (($cast: long $8$ - 0(S64)) >= 1(S64)) Assumption: true
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 18446744073709551615)))
(assert (>= (- $8 0) 1))
; (0(S64) != (0(S64) + $cast: long $cast: size_t $3$$)) Assumption: true
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
