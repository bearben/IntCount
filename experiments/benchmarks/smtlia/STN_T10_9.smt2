(declare-fun X0 () Int)
(declare-fun X1 () Int)
(declare-fun X2 () Int)
(declare-fun X3 () Int)
(declare-fun X4 () Int)
(declare-fun X5 () Int)
(declare-fun X6 () Int)
(declare-fun X7 () Int)
(declare-fun X8 () Int)
(assert (<= (- X1 X5) 5))
(assert (>= (- X1 X5) 0))
(assert (<= (- X2 X8) 5))
(assert (>= (- X2 X8) 0))
(assert (<= (- X3 X7) 5))
(assert (>= (- X3 X7) 0))
(assert (<= (- X4 X5) 5))
(assert (>= (- X4 X5) 0))
(assert (<= (- X5 X0) 5))
(assert (>= (- X5 X0) 0))
(assert (<= (- X6 X8) 5))
(assert (>= (- X6 X8) 0))
(assert (<= (- X7 X6) 5))
(assert (>= (- X7 X6) 0))
(assert (<= (- X8 X4) 5))
(assert (>= (- X8 X4) 0))
(check-sat)