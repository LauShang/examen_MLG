
// ejercicio_1_e_b.stan
data {
  int<lower=0> n_obs;
  int<lower=0> n_success;
  real mean0;
  real<lower=0> variance0;
}

parameters {
  real theta;
}

model {
  // Distribución a priori
  theta ~ normal(mean0, sqrt(variance0));
  
  // Distribución de los datos observados
  n_success ~ binomial(n_obs, theta);
}

