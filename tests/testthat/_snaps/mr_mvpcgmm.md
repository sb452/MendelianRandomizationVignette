# mvgmm applied to standard object

    Code
      mr_mvpcgmm(Input1, nx = rep(17723, 3), ny = 17723)
    Output
      
      Multivariable principal components generalized method of moments (PC-GMM) method
      
      Exposure correlation matrix not specified. Exposures are assumed to be uncorrelated.
      
      Number of principal components used : 25 
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value Cond F-stat
       exposure_1    1.695     0.517  0.681, 2.709   0.001        18.6
       exposure_2   -0.754     0.759 -2.240, 0.733   0.321        10.2
       exposure_3    0.682     0.292  0.110, 1.255   0.020        10.8
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = 25.5785 
      
      Heterogeneity test statistic = 21.5116

# mvgmm applied to correlated object

    Code
      mr_mvpcgmm(Input2, nx = rep(17723, 3), ny = 17723)
    Output
      
      Multivariable principal components generalized method of moments (PC-GMM) method
      
      Exposure correlation matrix not specified. Exposures are assumed to be uncorrelated.
      
      Number of principal components used : 18 
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value Cond F-stat
       exposure_1    1.239     0.775 -0.280, 2.757   0.110        16.6
       exposure_2   -1.828     0.973 -3.735, 0.080   0.060        12.6
       exposure_3    0.520     0.372 -0.209, 1.249   0.162        13.3
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = 39.3250 
      
      Heterogeneity test statistic = 14.9855

# mvgmm applied with correlation matrix on exposures

    Code
      mr_mvpcgmm(Input2, nx = rep(17723, 3), ny = 17723, cor.x = corr_ex)
    Output
      
      Multivariable principal components generalized method of moments (PC-GMM) method
      
      Number of principal components used : 18 
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI        p-value Cond F-stat
       exposure_1    1.214     0.765 -0.284,  2.713   0.112        31.4
       exposure_2   -1.945     0.951 -3.809, -0.081   0.041        30.7
       exposure_3    0.510     0.364 -0.204,  1.224   0.162        90.8
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = 34.8973 
      
      Heterogeneity test statistic = 15.0000

# mvgmm with r changed

    Code
      mr_mvpcgmm(Input2, nx = rep(17723, 3), ny = 17723, r = 4)
    Output
      
      Multivariable principal components generalized method of moments (PC-GMM) method
      
      Exposure correlation matrix not specified. Exposures are assumed to be uncorrelated.
      
      Number of principal components used : 4 
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value Cond F-stat
       exposure_1    2.355     1.074  0.250, 4.460   0.028        26.9
       exposure_2   -0.588     3.601 -7.645, 6.469   0.870         2.2
       exposure_3    1.080     0.977 -0.835, 2.995   0.269         2.4
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = -16.2214 
      
      Heterogeneity test statistic = 0.0186

# mvgmm with thres changed

    Code
      mr_mvpcgmm(Input2, nx = rep(17723, 3), ny = 17723, thres = 0.85)
    Output
      
      Multivariable principal components generalized method of moments (PC-GMM) method
      
      Exposure correlation matrix not specified. Exposures are assumed to be uncorrelated.
      
      Number of principal components used : 5 
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value Cond F-stat
       exposure_1    2.031     1.012  0.048, 4.015   0.045        14.4
       exposure_2    0.104     3.493 -6.743, 6.951   0.976         1.6
       exposure_3    1.238     0.939 -0.602, 3.078   0.187         1.6
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = -4.6058 
      
      Heterogeneity test statistic = 0.9610

# mvgmm with robust off

    Code
      mr_mvpcgmm(Input2, nx = rep(17723, 3), ny = 17723, robust = FALSE)
    Output
      
      Multivariable principal components generalized method of moments (PC-GMM) method
      
      Exposure correlation matrix not specified. Exposures are assumed to be uncorrelated.
      
      Number of principal components used : 18 
      
      Non-robust model with no overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI        p-value Cond F-stat
       exposure_1    1.238     0.435  0.385,  2.090   0.004        16.6
       exposure_2   -1.822     0.533 -2.866, -0.778   0.001        12.6
       exposure_3    0.504     0.198  0.115,  0.893   0.011        13.3
      ------------------------------------------------------------------
      
      Heterogeneity test statistic = 32.0349 on 15 degrees of freedom, (p-value = 0.0064)

# mvgmm with alpha changed

    Code
      mr_mvpcgmm(Input2, nx = rep(17723, 3), ny = 17723, alpha = 0.001)
    Output
      
      Multivariable principal components generalized method of moments (PC-GMM) method
      
      Exposure correlation matrix not specified. Exposures are assumed to be uncorrelated.
      
      Number of principal components used : 18 
      
      Robust model with overdispersion heterogeneity.
      
      ------------------------------------------------------------------
         Exposure Estimate Std Error 99.9% CI       p-value Cond F-stat
       exposure_1    1.239     0.775  -1.311, 3.788   0.110        16.6
       exposure_2   -1.828     0.973  -5.031, 1.375   0.060        12.6
       exposure_3    0.520     0.372  -0.705, 1.745   0.162        13.3
      ------------------------------------------------------------------
      
      Overdispersion heterogeneity parameter estimate = 39.3250 
      
      Heterogeneity test statistic = 14.9855

