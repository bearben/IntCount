; output/00002041.smt: generated with canalyze.
; (2048(U64) > ($cast: size_t (($1 - $15) / 1(S64))$ + $cast: size_t $21$)) Assumption: false
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(declare-const $15 Int)
(assert (and (< (- 9223372036854775808) $15) (< $15 9223372036854775807)))
(declare-const $21 Int)
(assert (and (< (- 9223372036854775808) $21) (< $21 9223372036854775807)))
(assert (not (> 2048 (+ (/ (- $1 $15) 1) $21))))
; ($cast: size_t $21$ < 2048(U64)) Assumption: false
(assert (not (< $21 2048)))
; [sym$FuncSymbol:1 memchr$] == NULL Assumption: false
(assert (not (= $1 0)))
; $15 Assumption: true
(assert (not (= $15 0)))
; (((53248(S64) - (4096(S64) * (0(S64) + $cast: long ($20 - 1(S32))$))) - 0(S64)) >= 2048(S64)) Assumption: true
(declare-const $20 Int)
(assert (and (< (- 2147483648) $20) (< $20 2147483647)))
(assert (>= (- (- 53248 (* 4096 (+ 0 (- $20 1)))) 0) 2048))
; ($cast: unsigned int $19$ != 1(U32)) Assumption: false
(declare-const $19 Int)
(assert (and (< 0 $19) (< $19 4294967295)))
(assert (not (not (= $19 1))))
; ((328600(S64) - (65720(S64) * (0(S64) + $cast: long $18$))) >= 65720(S64)) Assumption: true
(declare-const $18 Int)
(assert (and (< (- 2147483648) $18) (< $18 2147483647)))
(assert (>= (- 328600 (* 65720 (+ 0 $18))) 65720))
; $17 Assumption: true
(declare-const $17 Int)
(assert (and (< (- 2147483648) $17) (< $17 2147483647)))
(assert (not (= $17 0)))
; $3 Assumption: true
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(assert (not (= $3 0)))
; (($cast: long $4$ - 0(S64)) >= 80(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (>= (- $4 0) 80))
; ($cast: unsigned int $cast: enum http_errno $1$$ == 31(U32)) Assumption: true
(assert (= $1 31))
; ($cast: unsigned int $cast: enum http_errno $1$$ == 0(U32)) Assumption: false
(assert (not (= $1 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
