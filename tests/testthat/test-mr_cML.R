# tests of the mr_cML  - the constrained maximum likelihood method for
# univariable MR

# create MRInput object
Input1<- mr_input(ldlc, ldlcse, chdlodds, chdloddsse)

test_that("Input object is correct class", {
  expect_s4_class(Input1, "MRInput")
})

test_that("cML applied to standard object", {
  expect_snapshot(mr_cML(Input1, num_pert=5, MA = TRUE, DP = TRUE, n = 17723))
})

# testing input options
test_that("set MA to FALSE", {
  expect_snapshot(mr_cML(Input1, num_pert=5, MA = FALSE, DP = TRUE, n = 17723))
})

test_that("set DP to FALSE", {
  expect_snapshot(mr_cML(Input1,  MA = TRUE, DP = FALSE, n = 17723))
 })

test_that("set K_vec", {
  expect_snapshot(mr_cML(Input1, K_vec = 0:5, num_pert=5, MA = TRUE, DP = TRUE, n = 17723))
  })

test_that("set random_start", {
  expect_snapshot(mr_cML(Input1, random_start = 0, num_pert=5, MA = TRUE, DP = TRUE, n = 17723))
  })


test_that("set random_start warnings", {
  warn1<- capture_warnings(mr_cML(Input1, random_start = 10, num_pert=5, MA = TRUE, DP = TRUE, n = 17723))
  expect_match(warn1, "May not converge", all = FALSE)
  # this gives a dozen warnings
  expect_snapshot(mr_cML(Input1, random_start = 10, num_pert=5, MA = TRUE, DP = TRUE, n = 17723))
})


test_that("set random_start_pert warnings", {
  warn2<- capture_warnings(mr_cML(Input1, random_start_pert = 10, num_pert=5, MA = TRUE, DP = TRUE, n = 17723))
  expect_match(warn2, "May not converge", all = FALSE)
  # this gives a dozen warnings
  expect_snapshot(mr_cML(Input1, random_start_pert = 10, num_pert=5, MA = TRUE, DP = TRUE, n = 17723))
  })

test_that("changing maxit",{
  expect_snapshot(mr_cML(Input1, K_vec = 9, num_pert=5, MA = TRUE, DP = TRUE, n = 17723, maxit=2000))
})


test_that("changing random_seed",{
  expect_snapshot(mr_cML(Input1, K_vec = 0:9, num_pert=5, MA = TRUE,
                         DP = TRUE, n = 17723, random_seed = 2000))
})

test_that("changing n",{
  expect_snapshot(mr_cML(Input1, K_vec = 0:9, num_pert=5, MA = TRUE,
                         DP = TRUE, n = 2000))
})

test_that("changing alpha",{
  expect_snapshot(mr_cML(Input1, K_vec = 0:9, num_pert=5, MA = TRUE,
                         DP = TRUE, n = 17723,Alpha=0.001))
})
