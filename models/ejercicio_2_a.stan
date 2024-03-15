// ejercicio_2_a.stan
data {
  int<lower=0> N;
  vector[N] y;
}
parameters {
  real mu;
  real<lower=0> sigma;
}
model {
  // Priors
  mu ~ normal(200, 40);
  sigma ~ gamma(10, 1);

  // Likelihood
  y ~ normal(mu, sigma);
}