; output/00000174.smt: generated with canalyze.
; $2 Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
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
(check-sat)
