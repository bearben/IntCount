; output/00001065.smt: generated with canalyze.
; (2(U32) < $0) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (< 2 $0)))
; ($5 == 0(U32)) Assumption: false
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 4294967295)))
(assert (not (= $5 0)))
; (($cast: long $3$ - 4(S64)) >= 4(S64)) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 18446744073709551615)))
(assert (>= (- $3 4) 4))
; (1(U32) == $1) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (= 1 $1))
; (1(U32) < $0) Assumption: true
(assert (< 1 $0))
; (($cast: long $3$ - 0(S64)) >= 4(S64)) Assumption: true
(assert (>= (- $3 0) 4))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; (0(U32) == $1) Assumption: false
(assert (not (= 0 $1)))
; (0(U32) < $0) Assumption: true
(assert (< 0 $0))
(check-sat)
