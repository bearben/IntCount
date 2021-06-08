; output/00000203.smt: generated with canalyze.
; ($7 >= $12) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 4294967295)))
(declare-const $12 Int)
(assert (and (< 0 $12) (< $12 4294967295)))
(assert (>= $7 $12))
; (($4 & ((2(U32) & $not: (65535(U32) & $3)$) | ($3 & 201392128(U32)))) == $4) Assumption: true
(declare-const $4 Int)
(assert (and (< 0 $4) (< $4 4294967295)))
; (((($cast: uint64_t $14$ << 32(S32)) | $cast: unsigned long $15$) & 6(U64)) == 6(U64)) Assumption: false
; (($2 & 402653184(S32)) == 402653184(S32)) Assumption: true
; ($2 & 1(S32)) Assumption: true
; ($1 & 33554432(S32)) Assumption: false
; ($cast: unsigned int $0$ < 1(U32)) Assumption: false
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (not (< $0 1)))
(check-sat)
