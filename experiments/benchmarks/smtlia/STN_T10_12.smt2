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
(assert (<= (- X1 X6) 5))
(assert (>= (- X1 X6) 0))
(assert (<= (- X2 X7) 5))
(assert (>= (- X2 X7) 0))
(assert (<= (- X3 X11) 5))
(assert (>= (- X3 X11) 0))
(assert (<= (- X4 X8) 5))
(assert (>= (- X4 X8) 0))
(assert (<= (- X5 X1) 5))
(assert (>= (- X5 X1) 0))
(assert (<= (- X6 X2) 5))
(assert (>= (- X6 X2) 0))
(assert (<= (- X7 X0) 5))
(assert (>= (- X7 X0) 0))
(assert (<= (- X8 X3) 5))
(assert (>= (- X8 X3) 0))
(assert (<= (- X9 X0) 5))
(assert (>= (- X9 X0) 0))
(assert (<= (- X10 X2) 5))
(assert (>= (- X10 X2) 0))
(assert (<= (- X11 X1) 5))
(assert (>= (- X11 X1) 0))
(check-sat)
