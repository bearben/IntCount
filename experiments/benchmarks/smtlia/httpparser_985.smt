; output/00001812.smt: generated with canalyze.
; ($cast: int $8$ == 62(S32)) Assumption: true
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 4294967295)))
(assert (= $8 62))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
; $7 Assumption: false
(declare-const $7 Int)
(assert (and (< (- 2147483648) $7) (< $7 2147483647)))
(assert (= $7 0))
; (2048(U64) > ($cast: size_t (($1 - $3) / 1(S64))$ + $cast: size_t $5$)) Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(declare-const $3 Int)
(assert (and (< (- 9223372036854775808) $3) (< $3 9223372036854775807)))
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (> 2048 (+ (/ (- $1 $3) 1) $5)))
; ((2048(S64) - (1(S64) * (0(S64) + $cast: long ($cast: size_t $5$ + $cast: size_t (($1 - $3) / 1(S64))$)$))) >= 1(S64)) Assumption: true
(assert (>= (- 2048 (* 1 (+ 0 (+ $5 (/ (- $1 $3) 1))))) 1))
; ($cast: size_t (($1 - $3) / 1(S64))$ < (2048(U64) - $cast: size_t $5$)) Assumption: true
(assert (< (/ (- $1 $3) 1) (- 2048 $5)))
; ($cast: size_t $5$ < 2048(U64)) Assumption: true
(assert (< $5 2048))
; [sym$FuncSymbol:1 memchr$] == NULL Assumption: false
(assert (not (= $1 0)))
; $3 Assumption: true
(assert (not (= $3 0)))
; ((328600(S64) - (65720(S64) * (0(S64) + $cast: long $2$))) >= 65720(S64)) Assumption: true
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (>= (- 328600 (* 65720 (+ 0 $2))) 65720))
; $1 Assumption: true
(assert (not (= $1 0)))
(check-sat)
