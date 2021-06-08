; output/00001607.smt: generated with canalyze.
; ($2 > 20(U32)) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 4294967295)))
(assert (> $2 20))
; ($3 == 0(U32)) Assumption: false
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (not (= $3 0)))
; ($3 <= 1(U32)) Assumption: true
(assert (<= $3 1))
(check-sat)
