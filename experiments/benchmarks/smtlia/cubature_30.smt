; output/00000035.smt: generated with canalyze.
; ($0 > $2) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 4294967295)))
(assert (not (> $0 $2)))
; $1 Assumption: true
(declare-const $1 Int)
(assert (and (< (- 9223372036854775808) $1) (< $1 9223372036854775807)))
(assert (not (= $1 0)))
(check-sat)
