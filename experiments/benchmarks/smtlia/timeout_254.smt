; output/00000343.smt: generated with canalyze.
; $19 Assumption: true
(declare-const $19 Int)
(assert (and (< (- 9223372036854775808) $19) (< $19 9223372036854775807)))
(assert (not (= $19 0)))
; $18 Assumption: false
(declare-const $18 Int)
(assert (and (< (- 9223372036854775808) $18) (< $18 9223372036854775807)))
(assert (= $18 0))
; $17 Assumption: false
(declare-const $17 Int)
(assert (and (< (- 9223372036854775808) $17) (< $17 9223372036854775807)))
(assert (= $17 0))
; $5 Assumption: true
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (not (= $5 0)))
; ($16 & 16(S32)) Assumption: true
; $2 Assumption: false
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (= $2 0))
; ((650(U32) + $1) == 659(U32)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (= (+ 650 $1) 659))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
