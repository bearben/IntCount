; output/00000000.smt: generated with canalyze.
; ($cast: unsigned int $1$ != 31(U32)) Assumption: true
(declare-const $1 Int)
(assert (and (< 0 $1) (< $1 4294967295)))
(assert (not (= $1 31)))
; ($cast: unsigned int $1$ != 30(U32)) Assumption: true
(assert (not (= $1 30)))
; ($cast: unsigned int $1$ != 29(U32)) Assumption: true
(assert (not (= $1 29)))
; ($cast: unsigned int $1$ != 28(U32)) Assumption: true
(assert (not (= $1 28)))
; ($cast: unsigned int $1$ != 27(U32)) Assumption: true
(assert (not (= $1 27)))
; ($cast: unsigned int $1$ != 25(U32)) Assumption: true
(assert (not (= $1 25)))
; ($cast: unsigned int $1$ != 24(U32)) Assumption: true
(assert (not (= $1 24)))
; ($cast: unsigned int $1$ != 26(U32)) Assumption: true
(assert (not (= $1 26)))
; ($cast: unsigned int $1$ != 23(U32)) Assumption: true
(assert (not (= $1 23)))
; ($cast: unsigned int $1$ != 22(U32)) Assumption: true
(assert (not (= $1 22)))
; ($cast: unsigned int $1$ != 21(U32)) Assumption: true
(assert (not (= $1 21)))
; ($cast: unsigned int $1$ != 20(U32)) Assumption: true
(assert (not (= $1 20)))
; ($cast: int $0$ == 10(S32)) Assumption: false
(declare-const $0 Int)
(assert (and (< (- 128) $0) (< $0 127)))
(assert (not (= $0 10)))
; ($cast: int $0$ == 13(S32)) Assumption: false
(assert (not (= $0 13)))
; ($cast: int $0$ == 32(S32)) Assumption: false
(assert (not (= $0 32)))
(check-sat)
