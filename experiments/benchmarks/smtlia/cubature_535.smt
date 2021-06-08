; output/00000864.smt: generated with canalyze.
; $42 Assumption: true
(declare-const $42 Int)
(assert (and (< (- 2147483648) $42) (< $42 2147483647)))
(assert (not (= $42 0)))
; $40 Assumption: true
(declare-const $40 Int)
(assert (and (< (- 2147483648) $40) (< $40 2147483647)))
(assert (not (= $40 0)))
; $39 Assumption: false
(declare-const $39 Int)
(assert (and (< (- 2147483648) $39) (< $39 2147483647)))
(assert (= $39 0))
; $38 Assumption: true
(declare-const $38 Int)
(assert (and (< (- 2147483648) $38) (< $38 2147483647)))
(assert (not (= $38 0)))
; $37 Assumption: false
(declare-const $37 Int)
(assert (and (< (- 2147483648) $37) (< $37 2147483647)))
(assert (= $37 0))
; $36 Assumption: false
(declare-const $36 Int)
(assert (and (< (- 2147483648) $36) (< $36 2147483647)))
(assert (= $36 0))
; (($cast: long $7$ - 80(S64)) >= 16(S64)) Assumption: true
(declare-const $7 Int)
(assert (and (< 0 $7) (< $7 18446744073709551615)))
(assert (>= (- $7 80) 16))
; (($cast: long $7$ - 64(S64)) >= 16(S64)) Assumption: true
(assert (>= (- $7 64) 16))
; (5(U32) < $1) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (< 5 $1))
; $41 Assumption: false
(declare-const $41 Int)
(assert (and (< (- 2147483648) $41) (< $41 2147483647)))
(assert (= $41 0))
; $35 Assumption: true
(declare-const $35 Int)
(assert (and (< (- 2147483648) $35) (< $35 2147483647)))
(assert (not (= $35 0)))
; $34 Assumption: false
(declare-const $34 Int)
(assert (and (< (- 2147483648) $34) (< $34 2147483647)))
(assert (= $34 0))
; $33 Assumption: false
(declare-const $33 Int)
(assert (and (< (- 2147483648) $33) (< $33 2147483647)))
(assert (= $33 0))
; $32 Assumption: false
(declare-const $32 Int)
(assert (and (< (- 2147483648) $32) (< $32 2147483647)))
(assert (= $32 0))
; $31 Assumption: false
(declare-const $31 Int)
(assert (and (< (- 2147483648) $31) (< $31 2147483647)))
(assert (= $31 0))
; (($cast: long $7$ - 48(S64)) >= 16(S64)) Assumption: true
(assert (>= (- $7 48) 16))
; (($cast: long $7$ - 32(S64)) >= 16(S64)) Assumption: true
(assert (>= (- $7 32) 16))
; (3(U32) < $1) Assumption: true
(assert (< 3 $1))
; $30 Assumption: false
(declare-const $30 Int)
(assert (and (< (- 2147483648) $30) (< $30 2147483647)))
(assert (= $30 0))
; $29 Assumption: false
(declare-const $29 Int)
(assert (and (< (- 2147483648) $29) (< $29 2147483647)))
(assert (= $29 0))
; $28 Assumption: false
(declare-const $28 Int)
(assert (and (< (- 2147483648) $28) (< $28 2147483647)))
(assert (= $28 0))
; $27 Assumption: false
(declare-const $27 Int)
(assert (and (< (- 2147483648) $27) (< $27 2147483647)))
(assert (= $27 0))
; $26 Assumption: false
(declare-const $26 Int)
(assert (and (< (- 2147483648) $26) (< $26 2147483647)))
(assert (= $26 0))
; (($cast: long $7$ - 16(S64)) >= 16(S64)) Assumption: true
(assert (>= (- $7 16) 16))
; (($cast: long $7$ - 0(S64)) >= 16(S64)) Assumption: true
(assert (>= (- $7 0) 16))
; $6 Assumption: true
(declare-const $6 Int)
(assert (and (< (- 9223372036854775808) $6) (< $6 9223372036854775807)))
(assert (not (= $6 0)))
; (1(U32) < $1) Assumption: true
(assert (< 1 $1))
; ($cast: unsigned int $0$ == 1(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (= $0 1))
(check-sat)
