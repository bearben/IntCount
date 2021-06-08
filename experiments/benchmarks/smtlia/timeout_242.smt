; output/00000331.smt: generated with canalyze.
; ((650(U32) + $1) != 674(U32)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (not (= (+ 650 $1) 674)))
; ((650(U32) + $1) != 668(U32)) Assumption: true
(assert (not (= (+ 650 $1) 668)))
; ((650(U32) + $1) != 659(U32)) Assumption: true
(assert (not (= (+ 650 $1) 659)))
; ((650(U32) + $1) != 655(U32)) Assumption: true
(assert (not (= (+ 650 $1) 655)))
; ((650(U32) + $1) != 650(U32)) Assumption: true
(assert (not (= (+ 650 $1) 650)))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
