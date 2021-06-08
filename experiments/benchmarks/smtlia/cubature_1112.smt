; output/00001591.smt: generated with canalyze.
; ($2 > 20(U32)) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 4294967295)))
(assert (> $2 20))
; ($3 == 0(U32)) Assumption: false
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (not (= $3 0)))
; ($cast: unsigned int $7$ > 4(U32)) Assumption: false
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 4294967295)))
(assert (not (> $7 4)))
; ($cast: unsigned int $7$ < 0(U32)) Assumption: false
(assert (not (< $7 0)))
; ($3 <= 1(U32)) Assumption: false
(assert (not (<= $3 1)))
(check-sat)
