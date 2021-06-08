; output/00001556.smt: generated with canalyze.
; $44 Assumption: true
(declare-const $44 Int)
(assert (and (< (- 2147483648) $44) (< $44 2147483647)))
(assert (not (= $44 0)))
; $42 Assumption: true
(declare-const $42 Int)
(assert (and (< (- 2147483648) $42) (< $42 2147483647)))
(assert (not (= $42 0)))
; $41 Assumption: false
(declare-const $41 Int)
(assert (and (< (- 2147483648) $41) (< $41 2147483647)))
(assert (= $41 0))
; $40 Assumption: true
(declare-const $40 Int)
(assert (and (< (- 2147483648) $40) (< $40 2147483647)))
(assert (not (= $40 0)))
; $39 Assumption: false
(declare-const $39 Int)
(assert (and (< (- 2147483648) $39) (< $39 2147483647)))
(assert (= $39 0))
; (($cast: long $7$ - 40(S64)) >= 8(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
(assert (>= (- $7 40) 8))
; (($cast: long $7$ - 32(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 32) 8))
; $38 Assumption: false
(declare-const $38 Int)
(assert (and (< (- 2147483648) $38) (< $38 2147483647)))
(assert (= $38 0))
; (($cast: long $9$ - 40(S64)) >= 8(S64)) Assumption: true
(declare-const $9 Int)
(assert (and (< 0 $9) (< $9 18446744073709551615)))
(assert (>= (- $9 40) 8))
; (($cast: long $9$ - 32(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $9 32) 8))
; (5(U32) < $1) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (< 5 $1))
; $43 Assumption: false
(declare-const $43 Int)
(assert (and (< (- 2147483648) $43) (< $43 2147483647)))
(assert (= $43 0))
; $37 Assumption: true
(declare-const $37 Int)
(assert (and (< (- 2147483648) $37) (< $37 2147483647)))
(assert (not (= $37 0)))
; $36 Assumption: false
(declare-const $36 Int)
(assert (and (< (- 2147483648) $36) (< $36 2147483647)))
(assert (= $36 0))
; $35 Assumption: false
(declare-const $35 Int)
(assert (and (< (- 2147483648) $35) (< $35 2147483647)))
(assert (= $35 0))
; $34 Assumption: false
(declare-const $34 Int)
(assert (and (< (- 2147483648) $34) (< $34 2147483647)))
(assert (= $34 0))
; (($cast: long $7$ - 24(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 24) 8))
; (($cast: long $7$ - 16(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 16) 8))
; $33 Assumption: false
(declare-const $33 Int)
(assert (and (< (- 2147483648) $33) (< $33 2147483647)))
(assert (= $33 0))
; (($cast: long $9$ - 24(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $9 24) 8))
; (($cast: long $9$ - 16(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $9 16) 8))
; (3(U32) < $1) Assumption: true
(assert (< 3 $1))
; $32 Assumption: false
(declare-const $32 Int)
(assert (and (< (- 2147483648) $32) (< $32 2147483647)))
(assert (= $32 0))
; $31 Assumption: false
(declare-const $31 Int)
(assert (and (< (- 2147483648) $31) (< $31 2147483647)))
(assert (= $31 0))
; $30 Assumption: false
(declare-const $30 Int)
(assert (and (< (- 2147483648) $30) (< $30 2147483647)))
(assert (= $30 0))
; $29 Assumption: false
(declare-const $29 Int)
(assert (and (< (- 2147483648) $29) (< $29 2147483647)))
(assert (= $29 0))
; (($cast: long $7$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 8) 8))
; (($cast: long $7$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $7 0) 8))
; $6 Assumption: true
(declare-const $6 Int)
(assert (and (< (- 9223372036854775808) $6) (< $6 9223372036854775807)))
(assert (not (= $6 0)))
; $28 Assumption: false
(declare-const $28 Int)
(assert (and (< (- 2147483648) $28) (< $28 2147483647)))
(assert (= $28 0))
; (($cast: long $9$ - 8(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $9 8) 8))
; (($cast: long $9$ - 0(S64)) >= 8(S64)) Assumption: true
(assert (>= (- $9 0) 8))
; $8 Assumption: true
(declare-const $8 Int)
(assert (and (< (- 9223372036854775808) $8) (< $8 9223372036854775807)))
(assert (not (= $8 0)))
; (1(U32) < $1) Assumption: true
(assert (< 1 $1))
; ($cast: unsigned int $0$ == 1(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 1))
(check-sat)
