data {
    int<lower=0> N; // number of units
    int<lower=0> K; //number of regressors
    matrix[N,K] x;  //regressor
    vector[N] y;  //output
}
parameters {
    real alpha;
    vector[K]  beta;
    real <lower=0> sigma;
}

model {
    y ~ normal(x*beta + alpha, sigma); 
}



