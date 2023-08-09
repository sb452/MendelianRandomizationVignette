# pivw applied to standard object

    Code
      mr_pivw(Input1)
    Output
      
      Penalized inverse-variance weighted method
      
      Over dispersion: TRUE 
      Bootstrapping Fieller: TRUE 
      Penalty parameter (lambda): 1 
      IV selection threshold (delta): 0 
      Number of variants : 28 
      ------------------------------------------------------------------
       Method Estimate Std Error 95% CI       p-value Condition
         pIVW    2.932     0.528 1.922, 4.001   0.000   142.920
      ------------------------------------------------------------------

# pivw with lambda changed

    Code
      mr_pivw(Input1, lambda = 2)
    Output
      
      Penalized inverse-variance weighted method
      
      Over dispersion: TRUE 
      Bootstrapping Fieller: TRUE 
      Penalty parameter (lambda): 2 
      IV selection threshold (delta): 0 
      Number of variants : 28 
      ------------------------------------------------------------------
       Method Estimate Std Error 95% CI       p-value Condition
         pIVW    2.924     0.525 1.924, 3.981   0.000   142.920
      ------------------------------------------------------------------

# pivw with over.dispersion off

    Code
      mr_pivw(Input1, over.dispersion = FALSE)
    Output
      
      Penalized inverse-variance weighted method
      
      Over dispersion: FALSE 
      Bootstrapping Fieller: TRUE 
      Penalty parameter (lambda): 1 
      IV selection threshold (delta): 0 
      Number of variants : 28 
      ------------------------------------------------------------------
       Method Estimate Std Error 95% CI       p-value Condition
         pIVW    2.932     0.306 2.344, 3.578   0.000   142.920
      ------------------------------------------------------------------

# pivw with delta changes

    Code
      mr_pivw(Input1, delta = delta, sel.pval = sel.pval)
    Output
      
      Penalized inverse-variance weighted method
      
      Over dispersion: TRUE 
      Bootstrapping Fieller: TRUE 
      Penalty parameter (lambda): 1 
      IV selection threshold (delta): 5.451 
      Number of variants : 7 
      ------------------------------------------------------------------
       Method Estimate Std Error 95% CI       p-value Condition
         pIVW    3.309     0.759 1.830, 4.931   0.000     3.585
      ------------------------------------------------------------------

# pivw with Boot fieller off

    Code
      mr_pivw(Input1, Boot.Fieller = FALSE)
    Output
      
      Penalized inverse-variance weighted method
      
      Over dispersion: TRUE 
      Bootstrapping Fieller: FALSE 
      Penalty parameter (lambda): 1 
      IV selection threshold (delta): 0 
      Number of variants : 28 
      ------------------------------------------------------------------
       Method Estimate Std Error 95% CI       p-value Condition
         pIVW    2.932     0.528 1.898, 3.966   0.000   142.920
      ------------------------------------------------------------------

# pivw with alpha changed

    Code
      mr_pivw(Input1, alpha = 0.001)
    Output
      
      Penalized inverse-variance weighted method
      
      Over dispersion: TRUE 
      Bootstrapping Fieller: TRUE 
      Penalty parameter (lambda): 1 
      IV selection threshold (delta): 0 
      Number of variants : 28 
      ------------------------------------------------------------------
       Method Estimate Std Error 99.9% CI       p-value Condition
         pIVW    2.932     0.528   1.369, 4.642   0.000   142.920
      ------------------------------------------------------------------

