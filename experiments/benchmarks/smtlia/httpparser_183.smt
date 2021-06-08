; output/00000318.smt: generated with canalyze.
; ((272(S64) - (8(S64) * (0(S64) + $cast: long $0$))) >= 8(S64)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (>= (- 272 (* 8 (+ 0 $0))) 8))
; ($cast: unsigned long $cast: unsigned int $0$$ < 34(U64)) Assumption: true
(assert (< $0 34))
(check-sat)
