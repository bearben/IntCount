(declare-fun X0 () (_ BitVec 12))
(declare-fun X1 () (_ BitVec 12))
(declare-fun X2 () (_ BitVec 12))
(declare-fun X3 () (_ BitVec 12))
(declare-fun X4 () (_ BitVec 12))
(assert (bvsge (bvadd (bvmul #b000000001010 X0) (bvmul #b111111110110 X4)  #b111111111011) #b000000000000))
(assert (bvsge (bvadd (bvmul #b000000000010 X3) (bvmul #b000000000010 X4)  #b111111111000) #b000000000000))
(assert (bvsge (bvadd (bvmul #b000000000001 X0)  #b000000001000) #b000000000000))
(assert (bvsge (bvadd (bvmul #b000000000001 X1)  #b000000001000) #b000000000000))
(assert (bvsge (bvadd (bvmul #b000000000001 X2)  #b000000001000) #b000000000000))
(assert (bvsge (bvadd (bvmul #b000000000001 X3)  #b000000001000) #b000000000000))
(assert (bvsge (bvadd (bvmul #b000000000001 X4)  #b000000001000) #b000000000000))
(assert (bvsge (bvadd (bvmul #b111111111111 X0)  #b000000000111) #b000000000000))
(assert (bvsge (bvadd (bvmul #b111111111111 X1)  #b000000000111) #b000000000000))
(assert (bvsge (bvadd (bvmul #b111111111111 X2)  #b000000000111) #b000000000000))
(assert (bvsge (bvadd (bvmul #b111111111111 X3)  #b000000000111) #b000000000000))
(assert (bvsge (bvadd (bvmul #b111111111111 X4)  #b000000000111) #b000000000000))
(check-sat)
