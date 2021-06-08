; output/00003794.smt: generated with canalyze.
; (((((((((0(U64) + $1) + 5(U64)) + 1024(U64)) + 2(U64)) + 5(U64)) + 1024(U64)) + 2(U64)) + 6(U64)) == (($1 + $cast: unsigned long (1031(S32) * $2)$) + 6(U64))) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 18446744073709551615)))
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (= (+ (+ (+ (+ (+ (+ (+ (+ 0 $1) 5) 1024) 2) 5) 1024) 2) 6) (+ (+ $1 (* 1031 $2)) 6)))
; (2(S32) < $2) Assumption: false
(assert (not (< 2 $2)))
; (1(S32) < $2) Assumption: true
(assert (< 1 $2))
; (0(S32) < $2) Assumption: true
(assert (< 0 $2))
; ((($1 + $cast: unsigned long (1031(S32) * $2)$) + 6(U64)) > 0(U64)) Assumption: true
(assert (> (+ (+ $1 (* 1031 $2)) 6) 0))
; ($1 > 0(U64)) Assumption: true
(assert (> $1 0))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
