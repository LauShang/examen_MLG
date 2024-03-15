data {
  int<lower=0> n_obs;
  int<lower=0> n_success;
  real<lower=0> alpha0; 
  real<lower=0> beta0; 
}

parameters {
  real<lower=0, upper=1> theta;
}

model {
  // inicial
  theta ~ beta(alpha0, beta0);

  // verosimilitud
  n_success ~ binomial(n_obs, theta);
}
