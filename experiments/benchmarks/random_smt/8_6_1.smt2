(declare-fun X0 () (_ BitVec 12))
(declare-fun X1 () (_ BitVec 12))
(declare-fun X2 () (_ BitVec 12))
(declare-fun X3 () (_ BitVec 12))
(declare-fun X4 () (_ BitVec 12))
(declare-fun X5 () (_ BitVec 12))
(declare-fun X6 () (_ BitVec 12))
(declare-fun X7 () (_ BitVec 12))
(assert (bvsge (bvadd (bvmul #b111111111101 X4)  #b000000000101) #b000000000000))
(assert (bvsge (bvadd (bvmul #b111111111110 X5)  #b000000001000) #b000000000000))
(assert (bvsge (bvadd (bvmul #b000000000111 X5)  #b000000000100) #b000000000000))
(assert (bvsge (bvadd (bvmul #b000000000011 X2)  #b111111111001) #b000000000000))
(assert (bvsge (bvadd (bvmul #b111111111010 X5)  #b000000000100) #b000000000000))
(assert (bvsge (bvadd (bvmul #b111111110111 X3)  #b111111111000) #b000000000000))
(assert (bvsge (bvadd (bvmul #b000000000001 X0)  #b000000001000) #b000000000000))
(assert (bvsge (bvadd (bvmul #b000000000001 X1)  #b000000001000) #b000000000000))
(assert (bvsge (bvadd (bvmul #b000000000001 X2)  #b000000001000) #b000000000000))
(assert (bvsge (bvadd (bvmul #b000000000001 X3)  #b000000001000) #b000000000000))
(assert (bvsge (bvadd (bvmul #b000000000001 X4)  #b000000001000) #b000000000000))
(assert (bvsge (bvadd (bvmul #b000000000001 X5)  #b000000001000) #b000000000000))
(assert (bvsge (bvadd (bvmul #b000000000001 X6)  #b000000001000) #b000000000000))
(assert (bvsge (bvadd (bvmul #b000000000001 X7)  #b000000001000) #b000000000000))
(assert (bvsge (bvadd (bvmul #b111111111111 X0)  #b000000000111) #b000000000000))
(assert (bvsge (bvadd (bvmul #b111111111111 X1)  #b000000000111) #b000000000000))
(assert (bvsge (bvadd (bvmul #b111111111111 X2)  #b000000000111) #b000000000000))
(assert (bvsge (bvadd (bvmul #b111111111111 X3)  #b000000000111) #b000000000000))
(assert (bvsge (bvadd (bvmul #b111111111111 X4)  #b000000000111) #b000000000000))
(assert (bvsge (bvadd (bvmul #b111111111111 X5)  #b000000000111) #b000000000000))
(assert (bvsge (bvadd (bvmul #b111111111111 X6)  #b000000000111) #b000000000000))
(assert (bvsge (bvadd (bvmul #b111111111111 X7)  #b000000000111) #b000000000000))
(check-sat)