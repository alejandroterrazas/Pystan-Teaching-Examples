data {
  int n_samples;
  real mu[n_samples];
}

parameters {
   real y[n_samples];
}

model {
   y ~ normal(mu,1);
}
