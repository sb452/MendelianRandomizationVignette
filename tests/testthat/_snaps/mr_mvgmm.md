# mvgmm applied to standard objects

    Code
      mr_mvgmm(Input1, nx = rep(17723, 3), ny = 17723)
    Output
      
      Multivariable generalized method of moments (GMM) method
      
      Exposure correlation matrix not specified. Exposures are assumed to be uncorrelated.
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value Cond F-stat
       exposure_1    1.830     0.451  0.947, 2.713   0.000        20.3
       exposure_2   -0.722     0.580 -1.858, 0.415   0.213        12.9
       exposure_3    0.686     0.239  0.217, 1.155   0.004        13.3
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = 17.369 
      
      Heterogeneity test statistic = 24.9273

# mvgmm applied to correlated object

    Code
      mr_mvgmm(Input3, nx = rep(17723, 3), ny = 17723)
    Output
      Conditional F statistics did not converge to positive values - should the sample sizes be larger?
      
      Multivariable generalized method of moments (GMM) method
      
      Exposure correlation matrix not specified. Exposures are assumed to be uncorrelated.
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI        p-value Cond F-stat
       exposure_1    0.780     0.102  0.580,  0.980   0.000          NA
       exposure_2   -0.576     0.143 -0.856, -0.296   0.000          NA
       exposure_3    0.509     0.036  0.439,  0.578   0.000          NA
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = -11.344 
      
      Heterogeneity test statistic = 704.0559

# mvgmm applied with correlation matrix on exposures

    Code
      mr_mvgmm(Input1, nx = rep(17723, 3), ny = 17723, cor.x = rho_mat)
    Output
      
      Multivariable generalized method of moments (GMM) method
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value Cond F-stat
       exposure_1    1.839     0.451  0.955, 2.723   0.000        23.0
       exposure_2   -0.788     0.580 -1.925, 0.349   0.174        26.9
       exposure_3    0.667     0.239  0.198, 1.136   0.005        28.5
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = 16.887 
      
      Heterogeneity test statistic = 24.8485

# mvgmm with robust off

    Code
      mr_mvgmm(Input1, nx = rep(17723, 3), ny = 17723, robust = FALSE)
    Output
      
      Multivariable generalized method of moments (GMM) method
      
      Exposure correlation matrix not specified. Exposures are assumed to be uncorrelated.
      
      Non-robust model with no overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value Cond F-stat
       exposure_1    1.945     0.320  1.318, 2.571   0.000        20.3
       exposure_2   -0.667     0.403 -1.456, 0.122   0.098        12.9
       exposure_3    0.704     0.168  0.376, 1.032   0.000        13.3
      ------------------------------------------------------------------
      
      Heterogeneity test statistic = 47.5092 (p-value = 0.0043)

# mvgmm with alpha changed

    Code
      mr_mvgmm(Input1, nx = rep(17723, 3), ny = 17723, alpha = 0.001)
    Output
      
      Multivariable generalized method of moments (GMM) method
      
      Exposure correlation matrix not specified. Exposures are assumed to be uncorrelated.
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error 99.9% CI       p-value Cond F-stat
       exposure_1    1.830     0.451   0.347, 3.313   0.000        20.3
       exposure_2   -0.722     0.580  -2.629, 1.186   0.213        12.9
       exposure_3    0.686     0.239  -0.101, 1.474   0.004        13.3
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = 17.369 
      
      Heterogeneity test statistic = 24.9273

