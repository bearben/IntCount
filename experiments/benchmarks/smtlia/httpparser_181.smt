; output/00000316.smt: generated with canalyze.
; ($cast: int $2$ & 4(S32)) Assumption: true
; ($cast: int $6$ > 0(S32)) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 65535)))
(assert (> $6 0))
; ($cast: int $1$ > 0(S32)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 65535)))
(assert (> $1 0))
; $0 Assumption: true
(declare-const $0 Int)
(assert (and (< (- 9223372036854775808) $0) (< $0 9223372036854775807)))
(assert (not (= $0 0)))
(check-sat)
