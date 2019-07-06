data {
  int<lower=0> N;
  int<lower=0> y[N];
}
parameters {
  real<lower=0.00001> Theta;
}
model {
  Theta ~ gamma(4, 1000);
  for (n in 1:N)
    y[n] ~ exponential(Theta);
}
generated quantities{
  real y_pred;
  y_pred = exponential_rng(Theta);
}
