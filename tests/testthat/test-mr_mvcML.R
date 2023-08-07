# tests of the mr_cML  - the constrained maximum likelihood method for
# multivariable MR

# create input object

Input1<-mr_mvinput(bx = cbind(ldlc, hdlc, trig),
                    bxse = cbind(ldlcse, hdlcse, trigse),
                    by = chdlodds, byse = chdloddsse)

test_that("Input object is correct class", {
  expect_s4_class(Input1, "MRMVInput")
})

# test recommended input
test_that("mvcML applied to standard object", {
  expect_snapshot(mr_mvcML(mr_mvinput(bx = cbind(ldlc, hdlc, trig),
                                      bxse = cbind(ldlcse, hdlcse, trigse),
                                      by = chdlodds, byse = chdloddsse),
                           n = 17723))
})




