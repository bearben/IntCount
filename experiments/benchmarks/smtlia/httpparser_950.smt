; output/00001739.smt: generated with canalyze.
; ($3 > ($cast: size_t (($1 - $0) / 1(S64))$ + $cast: size_t (($1 - $2) / 1(S64))$)) Assumption: false
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (> $3 (+ (/ (- $1 $0) 1) (/ (- $1 $2) 1)))))
; ($cast: size_t (($1 - $2) / 1(S64))$ < $3) Assumption: false
(assert (not (< (/ (- $1 $2) 1) $3)))
; $2 Assumption: true
(assert (not (= $2 0)))
; [sym$FuncSymbol:1 memchr$] == NULL Assumption: false
(assert (not (= $1 0)))
; $0 Assumption: true
(assert (not (= $0 0)))
(check-sat)
