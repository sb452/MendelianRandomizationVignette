# mvcML applied to standard object

    Code
      mr_mvcML(Input1, n = 17723)
    Output
      
      Multivariable MRcML method 
      
      Number of variants : 28 
      Results for:  MVMRcML-DP 
      Number of data perturbations with successful convergence:  200 
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value
       exposure_1    1.927     0.613  0.726, 3.127   0.002
       exposure_2   -0.350     0.671 -1.666, 0.966   0.602
       exposure_3    0.822     0.272  0.289, 1.354   0.002
      ------------------------------------------------------------------

# DP turned off

    Code
      mr_mvcML(Input1, n = 17723, DP = FALSE)
    Output
      
      Multivariable MRcML method 
      
      Number of variants : 28 
      Results for:  MVMRcML-BIC 
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value
       exposure_1    2.037     0.335  1.381, 2.693   0.000
       exposure_2   -0.345     0.435 -1.197, 0.507   0.428
       exposure_3    0.855     0.182  0.498, 1.212   0.000
      ------------------------------------------------------------------

# change rho

    Code
      mr_mvcML(Input1, n = 17723, rho_mat = rho_mat)
    Output
      
      Multivariable MRcML method 
      
      Number of variants : 28 
      Results for:  MVMRcML-DP 
      Number of data perturbations with successful convergence:  200 
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value
       exposure_1    1.856     0.636  0.610, 3.102   0.004
       exposure_2   -0.751     0.741 -2.203, 0.700   0.310
       exposure_3    0.713     0.311  0.103, 1.323   0.022
      ------------------------------------------------------------------

# set K_vec

    Code
      mr_mvcML(Input1, K_vec = 0:5, n = 17723)
    Output
      
      Multivariable MRcML method 
      
      Number of variants : 28 
      Results for:  MVMRcML-DP 
      Number of data perturbations with successful convergence:  200 
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value
       exposure_1    1.941     0.507  0.947, 2.935   0.000
       exposure_2   -0.352     0.670 -1.665, 0.961   0.600
       exposure_3    0.819     0.266  0.297, 1.341   0.002
      ------------------------------------------------------------------

# set random_start

    Code
      mr_mvcML(Input1, random_start = 2, n = 17723)
    Output
      
      Multivariable MRcML method 
      
      Number of variants : 28 
      Results for:  MVMRcML-DP 
      Number of data perturbations with successful convergence:  200 
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value
       exposure_1    1.895     0.453  1.008, 2.782   0.000
       exposure_2   -0.427     0.904 -2.198, 1.345   0.637
       exposure_3    0.825     0.327  0.183, 1.466   0.012
      ------------------------------------------------------------------

# changing maxit

    Code
      mr_mvcML(Input1, n = 17723, maxit = 2000)
    Output
      
      Multivariable MRcML method 
      
      Number of variants : 28 
      Results for:  MVMRcML-DP 
      Number of data perturbations with successful convergence:  200 
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value
       exposure_1    1.927     0.613  0.726, 3.127   0.002
       exposure_2   -0.350     0.671 -1.666, 0.966   0.602
       exposure_3    0.822     0.272  0.289, 1.354   0.002
      ------------------------------------------------------------------

# changing theta range

    Code
      mr_mvcML(Input1, n = 17723, min_theta_range = -408, max_theta_range = 226,
        random_start = 2)
    Output
      
      Multivariable MRcML method 
      
      Number of variants : 28 
      Results for:  MVMRcML-DP 
      Number of data perturbations with successful convergence:  200 
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value
       exposure_1    1.886     0.455  0.994, 2.778   0.000
       exposure_2   -0.400     0.845 -2.056, 1.257   0.636
       exposure_3    0.832     0.310  0.223, 1.440   0.007
      ------------------------------------------------------------------

# changing random_seed

    Code
      mr_mvcML(Input1, n = 17723, seed = 2000)
    Output
      
      Multivariable MRcML method 
      
      Number of variants : 28 
      Results for:  MVMRcML-DP 
      Number of data perturbations with successful convergence:  200 
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value
       exposure_1    1.889     0.603  0.708, 3.070   0.002
       exposure_2   -0.391     0.735 -1.832, 1.051   0.595
       exposure_3    0.815     0.291  0.245, 1.385   0.005
      ------------------------------------------------------------------

# changing n

    Code
      mr_mvcML(Input1, , n = 2000)
    Output
      
      Multivariable MRcML method 
      
      Number of variants : 28 
      Results for:  MVMRcML-DP 
      Number of data perturbations with successful convergence:  200 
      ------------------------------------------------------------------
         Exposure Estimate Std Error  95% CI       p-value
       exposure_1    1.832     0.771  0.321, 3.342   0.018
       exposure_2   -0.316     0.760 -1.807, 1.174   0.677
       exposure_3    0.838     0.302  0.246, 1.430   0.006
      ------------------------------------------------------------------

# changing alpha

    Code
      mr_mvcML(Input1, n = 17723, alpha = 0.001)
    Output
      
      Multivariable MRcML method 
      
      Number of variants : 28 
      Results for:  MVMRcML-DP 
      Number of data perturbations with successful convergence:  200 
      ------------------------------------------------------------------
         Exposure Estimate Std Error 99.9% CI       p-value
       exposure_1    1.927     0.613  -0.089, 3.942   0.002
       exposure_2   -0.350     0.671  -2.559, 1.859   0.602
       exposure_3    0.822     0.272  -0.072, 1.716   0.002
      ------------------------------------------------------------------

