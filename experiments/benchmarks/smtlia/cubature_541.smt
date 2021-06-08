; output/00000870.smt: generated with canalyze.
; (((8(U64) * $cast: unsigned long $3$) * 2(U64)) > 0(U64)) Assumption: true
(declare-const $3 Int)
(assert (and (< 0 $3) (< $3 4294967295)))
(assert (> (* (* 8 $3) 2) 0))
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< (- 9223372036854775808) $2) (< $2 9223372036854775807)))
(assert (not (= $2 0)))
; (2(U32) < $0) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (< 2 $0)))
; (($cast: long (16(U64) * $cast: unsigned long $0$)$ - 16(S64)) >= 16(S64)) Assumption: true
(assert (>= (- (* 16 $0) 16) 16))
; (1(U32) < $0) Assumption: true
(assert (< 1 $0))
; (($cast: long (16(U64) * $cast: unsigned long $0$)$ - 0(S64)) >= 16(S64)) Assumption: true
(assert (>= (- (* 16 $0) 0) 16))
; (0(U32) < $0) Assumption: true
(assert (< 0 $0))
; ((16(U64) * $cast: unsigned long $0$) > 0(U64)) Assumption: true
(assert (> (* 16 $0) 0))
; ($cast: unsigned int $1$ > 4(U32)) Assumption: false
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (not (> $1 4)))
; ($cast: unsigned int $1$ < 0(U32)) Assumption: false
(assert (not (< $1 0)))
; ($0 <= 1(U32)) Assumption: false
(assert (not (<= $0 1)))
(check-sat)
