; output/00000340.smt: generated with canalyze.
; $10 Assumption: true
(declare-const $10 Int)
(assert (and (< (- 9223372036854775808) $10) (< $10 9223372036854775807)))
(assert (not (= $10 0)))
; (((4096(S64) - (1024(S64) * (0(S64) + $cast: long $4$))) - (16(S64) * (0(S64) + $cast: long ($3 + 1(U32))$))) >= 16(S64)) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 4294967295)))
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (>= (- (- 4096 (* 1024 (+ 0 $4))) (* 16 (+ 0 (+ $3 1)))) 16))
; (((4096(S64) - (1024(S64) * (0(S64) + $cast: long $4$))) - 0(S64)) >= 16(S64)) Assumption: true
(assert (>= (- (- 4096 (* 1024 (+ 0 $4))) 0) 16))
; $5 Assumption: true
(declare-const $5 Int)
(assert (and (< (- 9223372036854775808) $5) (< $5 9223372036854775807)))
(assert (not (= $5 0)))
; ($cast: unsigned long ($3 + 1(U32))$ < 64(U64)) Assumption: true
(assert (< (+ $3 1) 64))
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
