; output/00000100.smt: generated with canalyze.
; ($0 > 1(U32)) Assumption: false
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (> $0 1)))
; (($5 & 131072(U32)) != 0(U32)) Assumption: true
; (((($cast: uint64_t $9$ << 32(S32)) | $cast: unsigned long $10$) & 6(U64)) == 6(U64)) Assumption: false
; (($4 & 402653184(S32)) == 402653184(S32)) Assumption: true
; ($4 & 1(S32)) Assumption: true
; ($3 & 33554432(S32)) Assumption: true
; ($cast: unsigned int $2$ < 1(U32)) Assumption: false
(declare-const $2 Int)
(assert (and (< (- 2147483648) $2) (< $2 2147483647)))
(assert (not (< $2 1)))
; ($1 != 1(S32)) Assumption: true
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (not (= $1 1)))
; ($1 != -1(S32)) Assumption: true
(assert (not (= $1 (- 1))))
(check-sat)
