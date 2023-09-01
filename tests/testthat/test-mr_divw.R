# tests of the mr_divw  - the Debiased inverse variance weighted method for
# univariable MR


# create MRInput object
Input1<- mr_input(ldlc, ldlcse, chdlodds, chdloddsse)

test_that("Input object is correct class", {
  expect_s4_class(Input1, "MRInput")
})

# test various input options
test_that("divw applied to standard object", {
  expect_snapshot(mr_divw(Input1))
})

test_that("divw without over.dispersion", {
  expect_snapshot(mr_divw(Input1, over.dispersion = FALSE))
})

test_that("divw with changed alpha", {
  expect_snapshot(mr_divw(Input1, alpha=0.001))
})

library(vdiffr)
test_that("divw with diagnostics", {
  divw_plot<- mr_divw(Input1, diagnostics = TRUE)
  expect_doppelganger("divw_plot", divw_plot)
})

