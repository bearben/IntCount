; output/00000333.smt: generated with canalyze.
; ($cast: unsigned long ($4 + 1(U32))$ < 4(U64)) Assumption: false
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 4294967295)))
(assert (not (< (+ $4 1) 4)))
; ($cast: unsigned long ($3 + 1(U32))$ < 64(U64)) Assumption: false
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (not (< (+ $3 1) 64)))
; $2 Assumption: false
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (= $2 0))
; ((650(U32) + $1) == 668(U32)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (= (+ 650 $1) 668))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
