; output/00000085.smt: generated with canalyze.
; (((($cast: uint64_t $3$ << 32(S32)) | $cast: unsigned long $4$) & 6(U64)) == 6(U64)) Assumption: true
; (($2 & 402653184(S32)) == 402653184(S32)) Assumption: true
; ($2 & 1(S32)) Assumption: false
; ($1 & 33554432(S32)) Assumption: true
; ($cast: unsigned int $0$ < 1(U32)) Assumption: false
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (not (< $0 1)))
(check-sat)
