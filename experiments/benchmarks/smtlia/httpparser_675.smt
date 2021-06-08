; output/00001271.smt: generated with canalyze.
; ($cast: unsigned int $0$ != 11(U32)) Assumption: true
(declare-const $0 Int)
(assert (and (< 0 $0) (< $0 4294967295)))
(assert (not (= $0 11)))
; ($cast: unsigned int $0$ != 12(U32)) Assumption: true
(assert (not (= $0 12)))
; ($cast: unsigned int $0$ != 9(U32)) Assumption: true
(assert (not (= $0 9)))
; ($cast: unsigned int $0$ != 10(U32)) Assumption: true
(assert (not (= $0 10)))
; ($cast: unsigned int $0$ != 5(U32)) Assumption: true
(assert (not (= $0 5)))
; ($cast: unsigned int $0$ != 7(U32)) Assumption: true
(assert (not (= $0 7)))
; ($cast: unsigned int $0$ != 8(U32)) Assumption: true
(assert (not (= $0 8)))
; ($cast: unsigned int $0$ != 6(U32)) Assumption: true
(assert (not (= $0 6)))
; ($cast: unsigned int $0$ != 4(U32)) Assumption: true
(assert (not (= $0 4)))
; ($cast: unsigned int $0$ != 2(U32)) Assumption: true
(assert (not (= $0 2)))
; ($cast: unsigned int $0$ != 3(U32)) Assumption: true
(assert (not (= $0 3)))
(check-sat)
