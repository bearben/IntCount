; output/00003933.smt: generated with canalyze.
; ((983296(S32) | $cast: int $13$) != 983881(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 983618(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 983635(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 590153(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 787536(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 1311298(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 1704271(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 1704261(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 656193(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 655937(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 655661(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 655685(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 655695(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 328272(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 328008(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 262738(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 196946(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 196929(S32)) Assumption: true
; ((983296(S32) | $cast: int $13$) != 196949(S32)) Assumption: true
; ($cast: int $13$ <= 90(S32)) Assumption: true
(declare-const $13 Int)
(assert (and (< (- 128) $13) (< $13 127)))
(assert (<= $13 90))
; ($cast: int $13$ >= 65(S32)) Assumption: true
(assert (>= $13 65))
; ($cast: int $13$ == $cast: int $16$) Assumption: false
(declare-const $16 Int)
(assert (and (< (- 128) $16) (< $16 127)))
(assert (not (= $13 $16)))
; (($cast: long $15$ - 1(S64)) >= 1(S64)) Assumption: true
(declare-const $15 Int)
(assert (and (< 0 $15) (< $15 18446744073709551615)))
(assert (>= (- $15 1) 1))
; $14 Assumption: true
(declare-const $14 Int)
(assert (and (< (- 9223372036854775808) $14) (< $14 9223372036854775807)))
(assert (not (= $14 0)))
; ($cast: int $13$ == 32(S32)) Assumption: false
(assert (not (= $13 32)))
; ($cast: int $13$ == 0(S32)) Assumption: false
(assert (not (= $13 0)))
; (($cast: long $7$ - 1(S64)) >= 1(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
(assert (>= (- $7 1) 1))
; (1(S64) != (0(S64) + $cast: long $cast: size_t $2$$)) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
(assert (not (= 1 (+ 0 $2))))
; [sym$regval:9 [field: [var: settings_connect]->on_message_begin]$] == NULL Assumption: true
(declare-const $9 Int)
(assert (and (< (- 9223372036854775808) $9) (< $9 9223372036854775807)))
(assert (= $9 0))
; ($cast: int $8$ == 85(S32)) Assumption: true
(declare-const $8 Int)
(assert (and (< (- 128) $8) (< $8 127)))
(assert (= $8 85))
; ($cast: int $cast: unsigned char ($cast: int $8$ | 32(S32))$$ <= 122(S32)) Assumption: true
; ($cast: int $cast: unsigned char ($cast: int $8$ | 32(S32))$$ >= 97(S32)) Assumption: true
; ($cast: int $8$ == 72(S32)) Assumption: false
(assert (not (= $8 72)))
; ($cast: int $8$ == 10(S32)) Assumption: false
(assert (not (= $8 10)))
; ($cast: int $8$ == 13(S32)) Assumption: false
(assert (not (= $8 13)))
; (($cast: long $7$ - 0(S64)) >= 1(S64)) Assumption: true
(assert (>= (- $7 0) 1))
; (0(S64) != (0(S64) + $cast: long $cast: size_t $2$$)) Assumption: true
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
