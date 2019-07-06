data {
    int<lower=0> J; // number of individuals
    real y[J];      //estimated treatment effects
    real<lower=0> sigma[J];  //s.e.'s of effect estimates
}
parameters {
//N.B. tjese are the parameters to be estimated
    real mu;  //population mean
    real<lower=0> tau;  //population standard deviation
    vector[J] eta;  //school-level errors--one for each school
}

transformed parameters {
    vector[J] theta;  //schools effects
    theta = mu + tau*eta;
}

model {
    eta ~ normal(0,1);
    y ~ normal(theta, sigma); 
}



