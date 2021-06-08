; output/00000122.smt: generated with canalyze.
; ($1 == 0(S32)) Assumption: false
(declare-const $1 Int)
(assert (and (< (- 2147483648) $1) (< $1 2147483647)))
(assert (not (= $1 0)))
; ($1 == 1(S32)) Assumption: false
(assert (not (= $1 1)))
; ($1 <= 600(S32)) Assumption: false
(assert (not (<= $1 600)))
; $1 Assumption: true
(assert (not (= $1 0)))
; (($cast: long $2$ - 96(S64)) >= 8(S64)) Assumption: true
(declare-const $2 Int)
(assert (and (< 0 $2) (< $2 18446744073709551615)))
(assert (>= (- $2 96) 8))
; (($cast: long $2$ - 88(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $2 88) 8))
; (($cast: long $2$ - 80(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $2 80) 8))
; (($cast: long $2$ - 72(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $2 72) 8))
; (($cast: long $2$ - 64(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $2 64) 8))
; (($cast: long $2$ - 56(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $2 56) 8))
; (($cast: long $2$ - 48(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $2 48) 8))
; (($cast: long $2$ - 40(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $2 40) 8))
; (($cast: long $2$ - 32(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $2 32) 8))
; (($cast: long $2$ - 24(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $2 24) 8))
; (($cast: long $2$ - 16(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $2 16) 8))
; (($cast: long $2$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $2 8) 8))
; $1 Assumption: true
(assert (not (= $1 0)))
; ($0 < 13(S32)) Assumption: false
(declare-const $0 Int)
(assert (and (< (- 2147483648) $0) (< $0 2147483647)))
(assert (not (< $0 13)))
(check-sat)
