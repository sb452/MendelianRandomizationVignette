# tests of the mr_pivw  - the penalized inverse variance weighted method for
# univariable MR


# create MRInput object
Input1<- mr_input(ldlc, ldlcse, chdlodds, chdloddsse)

test_that("Input object is correct class", {
  expect_s4_class(Input1, "MRInput")
})

# test various input options
test_that("pivw applied to standard object", {
  expect_snapshot(mr_pivw(Input1))
})

test_that("pivw with lambda changed", {
  expect_snapshot(mr_pivw(Input1, lambda = 2))
})


test_that("pivw with over.dispersion off", {
  expect_snapshot(mr_pivw(Input1, over.dispersion = FALSE))
})

test_that("pivw with delta changes", {
  sel.pval = sort(2*pnorm(abs(ldlc/ldlcse),lower.tail = FALSE))
  delta = qnorm(5e-8/2,lower.tail = FALSE)
  expect_snapshot(mr_pivw(Input1,
                          delta =  delta,
                          sel.pval = sel.pval))
})

test_that("pivw with Boot fieller off", {
  expect_snapshot(mr_pivw(Input1, Boot.Fieller = FALSE))
})

test_that("pivw with alpha changed", {
  expect_snapshot(mr_pivw(Input1, alpha=0.001))
})



