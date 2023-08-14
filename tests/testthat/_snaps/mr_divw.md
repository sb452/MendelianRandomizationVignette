# divw applied to standard object

    Code
      mr_divw(Input1)
    Output
      
      Debiased inverse-variance weighted method
      (Over.dispersion:TRUE)
      
      Number of Variants : 28 
      ------------------------------------------------------------------
       Method Estimate Std Error 95% CI       p-value Condition
         dIVW    2.940     0.531 1.900, 3.980   0.000   142.920
      ------------------------------------------------------------------

# divw without over.dispersion

    Code
      mr_divw(Input1, over.dispersion = FALSE)
    Output
      
      Debiased inverse-variance weighted method
      (Over.dispersion:FALSE)
      
      Number of Variants : 28 
      ------------------------------------------------------------------
       Method Estimate Std Error 95% CI       p-value Condition
         dIVW    2.940     0.307 2.337, 3.542   0.000   142.920
      ------------------------------------------------------------------

# divw with changed alpha

    Code
      mr_divw(Input1, alpha = 0.001)
    Output
      
      Debiased inverse-variance weighted method
      (Over.dispersion:TRUE)
      
      Number of Variants : 28 
      ------------------------------------------------------------------
       Method Estimate Std Error 99.9% CI       p-value Condition
         dIVW    2.940     0.531   1.194, 4.686   0.000   142.920
      ------------------------------------------------------------------

