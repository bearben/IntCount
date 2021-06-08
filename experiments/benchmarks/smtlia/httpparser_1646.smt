; output/00003789.smt: generated with canalyze.
; (((0(U64) + $1) + 6(U64)) == (($1 + $cast: unsigned long (1031(S32) * $2)$) + 6(U64))) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 18446744073709551615)))
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (not (= (+ (+ 0 $1) 6) (+ (+ $1 (* 1031 $2)) 6))))
; (0(S32) < $2) Assumption: false
(assert (not (< 0 $2)))
; ((($1 + $cast: unsigned long (1031(S32) * $2)$) + 6(U64)) > 0(U64)) Assumption: true
(assert (> (+ (+ $1 (* 1031 $2)) 6) 0))
; ($1 > 0(U64)) Assumption: true
(assert (> $1 0))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
