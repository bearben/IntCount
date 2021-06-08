; output/00000311.smt: generated with canalyze.
; ($cast: int $2$ & 64(S32)) Assumption: true
; ($cast: int $4$ == 304(S32)) Assumption: false
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 4294967295)))
(assert (not (= $4 304)))
; ($cast: int $4$ == 204(S32)) Assumption: false
(assert (not (= $4 204)))
; (($cast: int $4$ / 100(S32)) == 1(S32)) Assumption: false
(assert (not (= (/ $4 100) 1)))
; ($cast: int $3$ == 0(S32)) Assumption: false
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (not (= $3 0)))
; ($cast: int $2$ & 4(S32)) Assumption: false
; ($cast: int $6$ > 0(S32)) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 65535)))
(assert (> $6 0))
; ($cast: int $1$ > 0(S32)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 65535)))
(assert (> $1 0))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
