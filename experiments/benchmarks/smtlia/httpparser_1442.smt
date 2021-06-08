; output/00003278.smt: generated with canalyze.
; ($cast: int $15$ == 10(S32)) Assumption: true
(declare-const $15 Int)
(assert (and (< (- 128) $15) (< $15 127)))
(assert (= $15 10))
; (($cast: long $5$ - 2(S64)) >= 1(S64)) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 18446744073709551615)))
(assert (>= (- $5 2) 1))
; (2(U64) < $4) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (< 2 $4))
; ($cast: int $13$ == 13(S32)) Assumption: true
(declare-const $13 Int)
(assert (and (< (- 128) $13) (< $13 127)))
(assert (= $13 13))
; (($cast: long $5$ - 1(S64)) >= 1(S64)) Assumption: true
(assert (>= (- $5 1) 1))
; (1(U64) < $4) Assumption: true
(assert (< 1 $4))
; ($cast: int $6$ != 10(S32)) Assumption: true
(declare-const $6 Int)
(assert (and (< (- 128) $6) (< $6 127)))
(assert (not (= $6 10)))
; ($cast: int $6$ != 13(S32)) Assumption: true
(assert (not (= $6 13)))
; (($cast: long $5$ - 0(S64)) >= 1(S64)) Assumption: true
(assert (>= (- $5 0) 1))
; ((983296(S32) | $cast: int $30$) != 983881(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 983618(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 983635(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 590153(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 787536(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 1311298(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 1704271(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 1704261(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 656193(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 655937(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 655661(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 655685(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 655695(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 328272(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 328008(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 262738(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 196946(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 196929(S32)) Assumption: true
; ((983296(S32) | $cast: int $30$) != 196949(S32)) Assumption: true
; ($cast: int $30$ == 45(S32)) Assumption: true
(declare-const $30 Int)
(assert (and (< (- 128) $30) (< $30 127)))
(assert (= $30 45))
; ($cast: int $30$ >= 65(S32)) Assumption: false
(assert (not (>= $30 65)))
; ($cast: int $30$ == $cast: int $33$) Assumption: false
(declare-const $33 Int)
(assert (and (< (- 128) $33) (< $33 127)))
(assert (not (= $30 $33)))
; (($cast: long $32$ - 1(S64)) >= 1(S64)) Assumption: true
(declare-const $32 Int)
(assert (and (< 0 $32) (< $32 18446744073709551615)))
(assert (>= (- $32 1) 1))
; $31 Assumption: true
(declare-const $31 Int)
(assert (and (< (- 9223372036854775808) $31) (< $31 9223372036854775807)))
(assert (not (= $31 0)))
; ($cast: int $30$ == 32(S32)) Assumption: false
(assert (not (= $30 32)))
; ($cast: int $30$ == 0(S32)) Assumption: false
(assert (not (= $30 0)))
; (($cast: long $5$ - 1(S64)) >= 1(S64)) Assumption: true
(assert (>= (- $5 1) 1))
; [sym$regval:21 [field: [var: settings_count_body]->on_message_begin]$] == NULL Assumption: true
(declare-const $21 Int)
(assert (and (< (- 9223372036854775808) $21) (< $21 9223372036854775807)))
(assert (= $21 0))
; ($cast: int $6$ == 85(S32)) Assumption: true
(assert (= $6 85))
; ($cast: int $cast: unsigned char ($cast: int $6$ | 32(S32))$$ <= 122(S32)) Assumption: true
; ($cast: int $cast: unsigned char ($cast: int $6$ | 32(S32))$$ >= 97(S32)) Assumption: true
; ($cast: int $6$ == 72(S32)) Assumption: false
(assert (not (= $6 72)))
; ($cast: int $6$ == 10(S32)) Assumption: false
(assert (not (= $6 10)))
; ($cast: int $6$ == 13(S32)) Assumption: false
(assert (not (= $6 13)))
; (($cast: long $5$ - 0(S64)) >= 1(S64)) Assumption: true
(assert (>= (- $5 0) 1))
; (($4 - 0(U64)) < 4024(U64)) Assumption: false
(assert (not (< (- $4 0) 4024)))
; (0(U64) < $4) Assumption: true
(assert (< 0 $4))
; ($4 > 0(U64)) Assumption: true
(assert (> $4 0))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; ($cast: unsigned int $cast: enum http_parser_type $1$$ == 1(U32)) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (not (= $1 1)))
; ($cast: unsigned int $cast: enum http_parser_type $1$$ == 0(U32)) Assumption: false
(assert (not (= $1 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
