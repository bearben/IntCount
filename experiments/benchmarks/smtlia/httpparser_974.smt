; output/00001795.smt: generated with canalyze.
; (2048(U64) > ($cast: size_t (($1 - $4) / 1(S64))$ + $cast: size_t $6$)) Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(declare-const $4 Int)
(assert (and (< (- 9223372036854775808) $4) (< $4 9223372036854775807)))
(declare-const $6 Int)
(assert (and (< (- 9223372036854775808) $6) (< $6 9223372036854775807)))
(assert (> 2048 (+ (/ (- $1 $4) 1) $6)))
; ((((53248(S64) - (4096(S64) * (0(S64) + $cast: long ($3 - 1(S32))$))) - 2048(S64)) - (1(S64) * (0(S64) + $cast: long ($cast: size_t $6$ + $cast: size_t (($1 - $4) / 1(S64))$)$))) >= 1(S64)) Assumption: true
(declare-const $3 Int)
(assert (and (< (- 2147483648) $3) (< $3 2147483647)))
(assert (>= (- (- (- 53248 (* 4096 (+ 0 (- $3 1)))) 2048) (* 1 (+ 0 (+ $6 (/ (- $1 $4) 1))))) 1))
; ((((53248(S64) - (4096(S64) * (0(S64) + $cast: long ($3 - 1(S32))$))) - 2048(S64)) - 0(S64)) >= 1(S64)) Assumption: true
(assert (>= (- (- (- 53248 (* 4096 (+ 0 (- $3 1)))) 2048) 0) 1))
; ($cast: size_t (($1 - $4) / 1(S64))$ < (2048(U64) - $cast: size_t $6$)) Assumption: true
(assert (< (/ (- $1 $4) 1) (- 2048 $6)))
; ($cast: size_t $6$ < 2048(U64)) Assumption: true
(assert (< $6 2048))
; [sym$FuncSymbol:1 memchr$] == NULL Assumption: false
(assert (not (= $1 0)))
; $4 Assumption: true
(assert (not (= $4 0)))
; (((53248(S64) - (4096(S64) * (0(S64) + $cast: long ($3 - 1(S32))$))) - 0(S64)) >= 2048(S64)) Assumption: true
(assert (>= (- (- 53248 (* 4096 (+ 0 (- $3 1)))) 0) 2048))
; ((328600(S64) - (65720(S64) * (0(S64) + $cast: long $2$))) >= 65720(S64)) Assumption: true
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (>= (- 328600 (* 65720 (+ 0 $2))) 65720))
; $1 Assumption: true
(assert (not (= $1 0)))
(check-sat)
