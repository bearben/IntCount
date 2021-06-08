; output/00000284.smt: generated with canalyze.
; ($cast: int $3$ & 64(S32)) Assumption: true
; ($cast: int $2$ == 304(S32)) Assumption: false
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 4294967295)))
(assert (not (= $2 304)))
; ($cast: int $2$ == 204(S32)) Assumption: false
(assert (not (= $2 204)))
; (($cast: int $2$ / 100(S32)) == 1(S32)) Assumption: false
(assert (not (= (/ $2 100) 1)))
; ($cast: int $1$ == 0(S32)) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (not (= $1 0)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
