# tests of the mr_pcgmm  - the Principal component generalized method of moments  method for
# univariable MR


# create MRInput object
library(randcorr)
set.seed(1234)
corr_test <- randcorr(28)

Input1<- mr_input(ldlc, ldlcse, chdlodds, chdloddsse,
                  correlation = corr_test)

test_that("Input object is correct class", {
  expect_s4_class(Input1, "MRInput")
})

# test various input options
test_that("pcgmm applied to standard object", {
  expect_snapshot(mr_pcgmm(Input1,
                  nx=17723,
                  ny=17723))
})

test_that("pcgmm with r changed", {
  expect_snapshot(mr_pcgmm(Input1,
                             nx=17723,
                             ny=17723,
                             r=4 ))
})

test_that("pcgmm with thres changed", {
  expect_snapshot(mr_pcgmm(Input1,
                             nx=17723,
                             ny=17723,
                             thres=0.85 ))
})

test_that("pcgmm with robust off", {
  expect_snapshot(mr_pcgmm(Input1,
                             nx=17723,
                             ny=17723,
                             robust=FALSE ))
})

test_that("pcgmm with alpha changed", {
  expect_snapshot(mr_pcgmm(Input1,
                             nx=17723,
                             ny=17723,
                             alpha = 0.001 ))
})
