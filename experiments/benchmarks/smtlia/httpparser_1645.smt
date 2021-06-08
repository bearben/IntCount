; output/00003660.smt: generated with canalyze.
; (81920(U64) > $cast: size_t $18$) Assumption: false
(declare-const $18 Int)
(assert (and (< (- 9223372036854775808) $18) (< $18 9223372036854775807)))
(assert (not (> 81920 $18)))
; ($cast: size_t $18$ < 81920(U64)) Assumption: false
(assert (not (< $18 81920)))
; [sym$FuncSymbol:1 memchr$] == NULL Assumption: false
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; ($cast: unsigned int $cast: enum http_parser_type $cast: enum http_parser_type $cast: unsigned int $16$$$$ == 1(U32)) Assumption: false
(declare-const $16 Int)
(assert (and (< 0 $16) (< $16 4294967295)))
(assert (not (= $16 1)))
; ($cast: unsigned int $cast: enum http_parser_type $cast: enum http_parser_type $cast: unsigned int $16$$$$ == 0(U32)) Assumption: false
(assert (not (= $16 0)))
; (2(S32) < $cast: int $6$) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 18446744073709551615)))
(assert (< 2 $6))
; $12 Assumption: true
(declare-const $12 Int)
(assert (and (< (- 9223372036854775808) $12) (< $12 9223372036854775807)))
(assert (not (= $12 0)))
; $11 Assumption: true
(declare-const $11 Int)
(assert (and (< (- 9223372036854775808) $11) (< $11 9223372036854775807)))
(assert (not (= $11 0)))
; $10 Assumption: false
(declare-const $10 Int)
(assert (and (< (- 9223372036854775808) $10) (< $10 9223372036854775807)))
(assert (= $10 0))
; $9 Assumption: true
(declare-const $9 Int)
(assert (and (< (- 9223372036854775808) $9) (< $9 9223372036854775807)))
(assert (not (= $9 0)))
; $8 Assumption: false
(declare-const $8 Int)
(assert (and (< (- 9223372036854775808) $8) (< $8 9223372036854775807)))
(assert (= $8 0))
; $7 Assumption: true
(declare-const $7 Int)
(assert (and (< (- 9223372036854775808) $7) (< $7 9223372036854775807)))
(assert (not (= $7 0)))
; ($6 > 0(U64)) Assumption: true
(assert (> $6 0))
; $5 Assumption: true
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (not (= $5 0)))
; $4 Assumption: true
(declare-const $4 Int)
(assert (and (< (- 9223372036854775808) $4) (< $4 9223372036854775807)))
(assert (not (= $4 0)))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; $1 Assumption: true
(assert (not (= $1 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
