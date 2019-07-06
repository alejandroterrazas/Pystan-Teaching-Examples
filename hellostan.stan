data {
  real<lower=0, upper=1> theta;
  int<lower=0> K;  //number of drawss
  int<lower=0> N; //number of success
}

parameters {
  real<lower=0, upper=1> mu; 
}

model {
  mu ~ beta(1,1);  //just a cheat; pystan does not allow empty currently
}

generated quantities {
   int<lower=0,upper=K> y[N];
   for (n in 1:N)
     y[n] = binomial_rng(K, theta);
}
