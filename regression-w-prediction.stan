data {
  int<lower=0> N;
  vector[N] x;
  vector[N] y;
  int<lower=0> N_tilde;  //added for prediciton
  vector[N_tilde] x_tilde; //added for prediction
}
parameters {
  real a;
  real b;
  real<lower=0> sigma;
}
model {
  y ~ normal(a + b * x, sigma);
}
generated quantities {
   vector[N_tilde] y_tilde;  //predicted values
   for (n in 1:N_tilde)
     y_tilde[n] = normal_rng(a + b * x_tilde[n], sigma);
}
