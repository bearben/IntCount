; output/00000129.smt: generated with canalyze.
; ($0 > 1(U32)) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (> $0 1)))
; (($4 & 402653184(S32)) == 402653184(S32)) Assumption: false
; ($4 & 1(S32)) Assumption: false
; ($3 & 33554432(S32)) Assumption: false
; ($cast: unsigned int $2$ < 1(U32)) Assumption: false
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (not (< $2 1)))
; ($1 != 1(S32)) Assumption: true
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (not (= $1 1)))
; ($1 != -1(S32)) Assumption: true
(assert (not (= $1 (- 1))))
(check-sat)