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
  expect_snapshot(mr_mvcML(Input1,
                           n = 17723))
})


# test recommended input
test_that("DP turned off", {
  expect_snapshot(mr_mvcML(Input1,
                           n = 17723,
                           DP=FALSE))
})

# add correlation matrix
rho_mat = matrix(c(1,-0.1,0.1,0.1,-0.1,1,-0.6,0.2,
                   0.1,-0.6,1,0.1,0.1,0.2,0.1,1),ncol=4)

# test recommended input
test_that("change rho", {
  expect_snapshot(mr_mvcML(Input1,
                           n = 17723,
                           rho_mat = rho_mat))
})


test_that("set K_vec", {
  expect_snapshot(mr_mvcML(Input1, K_vec = 0:5, n = 17723))
})

test_that("set random_start", {
  expect_snapshot(mr_mvcML(Input1, random_start = 2, n = 17723))
})



test_that("changing maxit",{
  expect_snapshot(mr_mvcML(Input1, n = 17723, maxit=2000))
})

test_that("changing theta range",{
  expect_snapshot(mr_mvcML(Input1, n = 17723,
                           min_theta_range = -408,
                           max_theta_range = 226,
                           random_start=2))
})


test_that("changing random_seed",{
  expect_snapshot(mr_mvcML(Input1, n = 17723, seed = 2000))
})

test_that("changing n",{
  expect_snapshot(mr_mvcML(Input1,, n = 2000))
})

test_that("changing alpha",{
  expect_snapshot(mr_mvcML(Input1,n = 17723,alpha=0.001))
})

