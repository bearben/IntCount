(declare-fun X0 () Int)
(declare-fun X1 () Int)
(declare-fun X2 () Int)
(declare-fun X3 () Int)
(declare-fun X4 () Int)
(declare-fun X5 () Int)
(assert (<= (- X1 X4) 5))
(assert (>= (- X1 X4) 0))
(assert (<= (- X2 X5) 5))
(assert (>= (- X2 X5) 0))
(assert (<= (- X3 X4) 5))
(assert (>= (- X3 X4) 0))
(assert (<= (- X4 X1) 5))
(assert (>= (- X4 X1) 0))
(assert (<= (- X5 X3) 5))
(assert (>= (- X5 X3) 0))
(check-sat)