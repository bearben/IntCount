; output/00000384.smt: generated with canalyze.
; ((528(S64) - (16(S64) * (0(S64) + $cast: long $0$))) >= 16(S64)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (>= (- 528 (* 16 (+ 0 $0))) 16))
; ($cast: size_t $0$ < 33(U64)) Assumption: true
(assert (< $0 33))
(check-sat)
