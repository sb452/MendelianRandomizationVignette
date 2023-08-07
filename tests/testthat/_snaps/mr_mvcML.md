# mvcML applied to standard object

    Code
      mr_mvcML(mr_mvinput(bx = cbind(ldlc, hdlc, trig), bxse = cbind(ldlcse, hdlcse,
        trigse), by = chdlodds, byse = chdloddsse), n = 17723)
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

