# tests of the mr_mvgmm  - the Generalized method of moments  method for
# multivariable MR


# create MRInput object
Input1<-mr_mvinput(bx = cbind(ldlc, hdlc, trig),
                   bxse = cbind(ldlcse, hdlcse, trigse),
                   by = chdlodds, byse = chdloddsse)

test_that("Input object is correct class", {
  expect_s4_class(Input1, "MRMVInput")
})

# test recommended input
test_that("mvgmm applied to standard object", {
  expect_snapshot(mr_mvgmm(Input1,
                           nx=rep(17723,3),
                           ny=17723))
})
