data {
  int<lower=0> n_obs; // Número total de ensayos
  int<lower=0> n_success; // Número total de éxitos observados
}
parameters {
  real<lower=0, upper=1> theta; // Probabilidad de éxito
}
model {
  // Prior
  theta ~ uniform(0, 1);

  // Likelihood
  n_success ~ binomial(n_obs, theta);
}