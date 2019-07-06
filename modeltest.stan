data {
    int<lower=1> n; // number of draws
    int<lower=0> k; // number of successes
}
parameters {
    real<lower=0,upper=1> theta;
   # real<lower=0,upper=1> postpredk;
}

model {
    theta ~ beta(1, 1);
    k ~ binomial(n, theta);
}

generated quantities {
    real postpredk;
    postpredk = binomial(n, theta);
}

