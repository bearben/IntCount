; output/00000601.smt: generated with canalyze.
; ($7 >= $8) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 4294967295)))
(declare-const $8 Int)
(assert (and (< 0 $8) (< $8 4294967295)))
(assert (>= $7 $8))
; (($6 & ((4(U32) & $not: (65535(U32) & $3)$) | ($3 & 201392128(U32)))) == $6) Assumption: true
(declare-const $6 Int)
(assert (and (< 0 $6) (< $6 4294967295)))
; ($7 >= $10) Assumption: false
(declare-const $10 Int)
(assert (and (< 0 $10) (< $10 4294967295)))
(assert (not (>= $7 $10)))
; (($5 & ((4(U32) & $not: (65535(U32) & $3)$) | ($3 & 201392128(U32)))) == $5) Assumption: true
(declare-const $5 Int)
(assert (and (< 0 $5) (< $5 4294967295)))
; (($4 & ((4(U32) & $not: (65535(U32) & $3)$) | ($3 & 201392128(U32)))) == $4) Assumption: false
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 4294967295)))
; (((($cast: uint64_t $14$ << 32(S32)) | $cast: unsigned long $15$) & 6(U64)) == 6(U64)) Assumption: false
; (($2 & 402653184(S32)) == 402653184(S32)) Assumption: true
; ($2 & 1(S32)) Assumption: false
; ($1 & 33554432(S32)) Assumption: true
; ($cast: unsigned int $0$ < 1(U32)) Assumption: false
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (not (< $0 1)))
(check-sat)
