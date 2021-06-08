; output/00000193.smt: generated with canalyze.
; ($7 >= $8) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 4294967295)))
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 4294967295)))
(assert (>= $7 $8))
; (($6 & ((2(U32) & $not: (65535(U32) & $3)$) | ($3 & 201392128(U32)))) == $6) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 4294967295)))
; (($5 & ((2(U32) & $not: (65535(U32) & $3)$) | ($3 & 201392128(U32)))) == $5) Assumption: false
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 4294967295)))
; ($7 >= $12) Assumption: false
(declare-const $12 Int)
(assert (and (< 0 $12) (< $12 4294967295)))
(assert (not (>= $7 $12)))
; (($4 & ((2(U32) & $not: (65535(U32) & $3)$) | ($3 & 201392128(U32)))) == $4) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 4294967295)))
; (($2 & 402653184(S32)) == 402653184(S32)) Assumption: false
; ($2 & 1(S32)) Assumption: true
; ($1 & 33554432(S32)) Assumption: false
; ($cast: unsigned int $0$ < 1(U32)) Assumption: false
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (not (< $0 1)))
(check-sat)
