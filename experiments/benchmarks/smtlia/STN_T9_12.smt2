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
(declare-fun X11 () Int)
(assert (<= (- X1 X0) 5))
(assert (>= (- X1 X0) 0))
(assert (<= (- X2 X1) 5))
(assert (>= (- X2 X1) 0))
(assert (<= (- X3 X1) 5))
(assert (>= (- X3 X1) 0))
(assert (<= (- X4 X1) 5))
(assert (>= (- X4 X1) 0))
(assert (<= (- X5 X1) 5))
(assert (>= (- X5 X1) 0))
(assert (<= (- X6 X1) 5))
(assert (>= (- X6 X1) 0))
(assert (<= (- X7 X2) 5))
(assert (>= (- X7 X2) 0))
(assert (<= (- X8 X4) 5))
(assert (>= (- X8 X4) 0))
(assert (<= (- X9 X7) 5))
(assert (>= (- X9 X7) 0))
(assert (<= (- X10 X5) 5))
(assert (>= (- X10 X5) 0))
(assert (<= (- X11 X8) 5))
(assert (>= (- X11 X8) 0))
(check-sat)
