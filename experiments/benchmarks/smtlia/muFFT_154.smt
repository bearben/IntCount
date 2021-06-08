; output/00000174.smt: generated with canalyze.
; ($7 >= $10) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 4294967295)))
(declare-const $10 Int)
(assert (and (< 0 $10) (< $10 4294967295)))
(assert (>= $7 $10))
; (($5 & ((0(U32) & $not: (65535(U32) & $3)$) | ($3 & 201392128(U32)))) == $5) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 4294967295)))
; ($7 >= $12) Assumption: false
(declare-const $12 Int)
(assert (and (< 0 $12) (< $12 4294967295)))
(assert (not (>= $7 $12)))
; (($4 & ((0(U32) & $not: (65535(U32) & $3)$) | ($3 & 201392128(U32)))) == $4) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 4294967295)))
; (($2 & 402653184(S32)) == 402653184(S32)) Assumption: false
; ($2 & 1(S32)) Assumption: false
; ($1 & 33554432(S32)) Assumption: false
; ($cast: unsigned int $0$ < 1(U32)) Assumption: false
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (not (< $0 1)))
(check-sat)
