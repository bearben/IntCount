(declare-fun X0 () Int)
(declare-fun X1 () Int)
(declare-fun X2 () Int)
(declare-fun X3 () Int)
(declare-fun X4 () Int)
(declare-fun X5 () Int)
(declare-fun X6 () Int)
(declare-fun X7 () Int)
(assert (>= (- X1 X0) 0))
(assert (>= (- X2 X1) 0))
(assert (>= (- X3 X2) 0))
(assert (>= (- X4 X3) 0))
(assert (>= (- X5 X4) 0))
(assert (>= (- X6 X5) 0))
(assert (<= (- X7 X6) 7))
(check-sat)