; output/00000967.smt: generated with canalyze.
; (2(U32) < $0) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (< 2 $0)))
; (($cast: long $2$ - 8(S64)) >= 8(S64)) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
(assert (>= (- $2 8) 8))
; (1(U32) < $0) Assumption: true
(assert (< 1 $0))
; (($cast: long $2$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $2 0) 8))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
; (0(U32) < $0) Assumption: true
(assert (< 0 $0))
(check-sat)
