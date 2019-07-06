transformed data {
   vector[2] mu;
   mu[1] = 1;
   mu[2] = 2;
}
parameters {
   real y[2];
}

model {
   y ~ normal(mu,1);
}
