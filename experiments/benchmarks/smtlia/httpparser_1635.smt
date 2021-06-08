; output/00003647.smt: generated with canalyze.
; ($cast: unsigned int $1$ != 16(U32)) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (not (not (= $1 16))))
; ($cast: int $23$ == 45(S32)) Assumption: false
(declare-const $23 Int)
(assert (and (< (- 128) $23) (< $23 127)))
(assert (not (= $23 45)))
; ($cast: int $23$ <= 90(S32)) Assumption: false
(assert (not (<= $23 90)))
; ($cast: int $23$ >= 65(S32)) Assumption: true
(assert (>= $23 65))
; ($cast: int $23$ == $cast: int $35$) Assumption: false
(declare-const $35 Int)
(assert (and (< (- 128) $35) (< $35 127)))
(assert (not (= $23 $35)))
; (($cast: long $34$ - 2(S64)) >= 1(S64)) Assumption: true
(declare-const $34 Int)
(assert (and (< 0 $34) (< $34 18446744073709551615)))
(assert (>= (- $34 2) 1))
; $33 Assumption: true
(declare-const $33 Int)
(assert (and (< (- 9223372036854775808) $33) (< $33 9223372036854775807)))
(assert (not (= $33 0)))
; ($cast: int $23$ == 32(S32)) Assumption: false
(assert (not (= $23 32)))
; ($cast: int $23$ == 0(S32)) Assumption: false
(assert (not (= $23 0)))
; (($cast: long $8$ - 2(S64)) >= 1(S64)) Assumption: true
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 18446744073709551615)))
(assert (>= (- $8 2) 1))
; (2(S64) != (0(S64) + $cast: long $cast: size_t $3$$)) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (not (= 2 (+ 0 $3))))
; ((983296(S32) | $cast: int $19$) == 590153(S32)) Assumption: true
; ($cast: int $19$ == 45(S32)) Assumption: true
(declare-const $19 Int)
(assert (and (< (- 128) $19) (< $19 127)))
(assert (= $19 45))
; ($cast: int $19$ >= 65(S32)) Assumption: false
(assert (not (>= $19 65)))
; ($cast: int $19$ == $cast: int $22$) Assumption: false
(declare-const $22 Int)
(assert (and (< (- 128) $22) (< $22 127)))
(assert (not (= $19 $22)))
; (($cast: long $21$ - 1(S64)) >= 1(S64)) Assumption: true
(declare-const $21 Int)
(assert (and (< 0 $21) (< $21 18446744073709551615)))
(assert (>= (- $21 1) 1))
; $20 Assumption: true
(declare-const $20 Int)
(assert (and (< (- 9223372036854775808) $20) (< $20 9223372036854775807)))
(assert (not (= $20 0)))
; ($cast: int $19$ == 32(S32)) Assumption: false
(assert (not (= $19 32)))
; ($cast: int $19$ == 0(S32)) Assumption: false
(assert (not (= $19 0)))
; (($cast: long $8$ - 1(S64)) >= 1(S64)) Assumption: true
(assert (>= (- $8 1) 1))
; (1(S64) != (0(S64) + $cast: long $cast: size_t $3$$)) Assumption: true
(assert (not (= 1 (+ 0 $3))))
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
