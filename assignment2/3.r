bayesT <- function(P_A,P_B,P_BinA){
  P_BbyA = P_A*P_BinA/P_B
  return(P_BbyA)
} 
rain = 0.2
cloudy = 0.4
cloudyrain = 0.85

print(bayesT(rain,cloudy,cloudyrain))