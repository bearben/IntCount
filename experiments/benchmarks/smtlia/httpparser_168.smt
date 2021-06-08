; output/00000282.smt: generated with canalyze.
; ($cast: unsigned long long $4$ != 18446744073709551615(U64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 18446744073709551615)))
(assert (not (= $4 18446744073709551615)))
; ($cast: int $3$ & 1(S32)) Assumption: false
; ($cast: int $3$ & 64(S32)) Assumption: false
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
