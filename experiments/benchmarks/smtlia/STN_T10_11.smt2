(declare-fun X0 () Int)
(declare-fun X1 () Int)
(declare-fun X2 () Int)
(declare-fun X3 () Int)
(declare-fun X4 () Int)
(declare-fun X5 () Int)
(declare-fun X6 () Int)
(declare-fun X7 () Int)
(declare-fun X8 () Int)
(declare-fun X9 () Int)
(declare-fun X10 () Int)
(assert (<= (- X1 X9) 5))
(assert (>= (- X1 X9) 0))
(assert (<= (- X2 X7) 5))
(assert (>= (- X2 X7) 0))
(assert (<= (- X3 X2) 5))
(assert (>= (- X3 X2) 0))
(assert (<= (- X4 X7) 5))
(assert (>= (- X4 X7) 0))
(assert (<= (- X5 X2) 5))
(assert (>= (- X5 X2) 0))
(assert (<= (- X6 X10) 5))
(assert (>= (- X6 X10) 0))
(assert (<= (- X7 X6) 5))
(assert (>= (- X7 X6) 0))
(assert (<= (- X8 X10) 5))
(assert (>= (- X8 X10) 0))
(assert (<= (- X9 X7) 5))
(assert (>= (- X9 X7) 0))
(assert (<= (- X10 X3) 5))
(assert (>= (- X10 X3) 0))
(check-sat)