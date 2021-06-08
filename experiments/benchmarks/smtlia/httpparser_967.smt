; output/00001782.smt: generated with canalyze.
; (2048(U64) > ($cast: size_t (($1 - $5) / 1(S64))$ + $cast: size_t $7$)) Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(declare-const $7 Int)
(assert (and (< (- 9223372036854775808) $7) (< $7 9223372036854775807)))
(assert (> 2048 (+ (/ (- $1 $5) 1) $7)))
; ($cast: size_t $7$ < 2048(U64)) Assumption: false
(assert (not (< $7 2048)))
; [sym$FuncSymbol:1 memchr$] == NULL Assumption: false
(assert (not (= $1 0)))
; $5 Assumption: true
(assert (not (= $5 0)))
; (((53248(S64) - (4096(S64) * (0(S64) + $cast: long (($4 + 1(S32)) - 1(S32))$))) - 0(S64)) >= 2048(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< (- 2147483648) $4) (< $4 2147483647)))
(assert (>= (- (- 53248 (* 4096 (+ 0 (- (+ $4 1) 1)))) 0) 2048))
; ($cast: unsigned int $3$ != 1(U32)) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (not (= $3 1)))
; ((328600(S64) - (65720(S64) * (0(S64) + $cast: long $2$))) >= 65720(S64)) Assumption: true
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (>= (- 328600 (* 65720 (+ 0 $2))) 65720))
; $1 Assumption: true
(assert (not (= $1 0)))
(check-sat)
