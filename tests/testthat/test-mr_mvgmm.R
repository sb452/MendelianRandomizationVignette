# tests of the mr_mvgmm  - the Generalized method of moments  method for
# multivariable MR


# create MRInput object
Input1<-mr_mvinput(bx = cbind(ldlc, hdlc, trig),
                   bxse = cbind(ldlcse, hdlcse, trigse),
                   by = chdlodds, byse = chdloddsse)

library(randcorr)
set.seed(1234)
corr_test <- randcorr(28)
Input2<-mr_mvinput(bx = cbind(ldlc, hdlc, trig),
                   bxse = cbind(ldlcse, hdlcse, trigse),
                   by = chdlodds, byse = chdloddsse,
                   correlation = corr_test)

set.seed(5432)
corr_test <- randcorr(28)
Input3<-mr_mvinput(bx = cbind(ldlc, hdlc, trig),
                   bxse = cbind(ldlcse, hdlcse, trigse),
                   by = chdlodds, byse = chdloddsse,
                   correlation = corr_test)

test_that("Input object is correct class", {
  expect_s4_class(Input1, "MRMVInput")
  expect_s4_class(Input2, "MRMVInput")
})

# test recommended input
test_that("mvgmm applied to standard objects", {
  expect_snapshot(mr_mvgmm(Input1,
                           nx=rep(17723,3),
                           ny=17723))
})

# test inputs



test_that("mvgmm applied to correlated object", {
  expect_error(mr_mvgmm(Input2,
                        nx=rep(17723,3),
                        ny=17723))
  expect_snapshot(mr_mvgmm(Input3,
                           nx=rep(17723,3),
                           ny=17723))
})

# add correlation matrix
rho_mat = matrix(c(1,-0.1,0.1,0.1,-0.1,1,-0.6,0.2,
                   0.1,-0.6,1,0.1,0.1,0.2,0.1,1),ncol=4)

test_that("mvgmm applied with correlation matrix on exposures",{
  expect_snapshot(mr_mvgmm(Input1,
                           nx=rep(17723,3),
                           ny=17723,
                           cor.x= rho_mat))
})

test_that("mvgmm with robust off", {
  expect_snapshot(mr_mvgmm(Input1,
                             nx=rep(17723,3),
                             ny=17723,
                             robust=FALSE ))
})

test_that("mvgmm with alpha changed", {
  expect_snapshot(mr_mvgmm(Input1,
                             nx=rep(17723,3),
                             ny=17723,
                             alpha = 0.001 ))
})
