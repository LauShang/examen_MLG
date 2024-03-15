
// ejercicio_1_e_c.stan
data {
  int<lower=0> n_obs;
  int<lower=0> n_success;
}
parameters {
  real<lower=0, upper=1> theta;
}
model {
  // Distribución a priori
  theta ~ uniform(0, 1);

  // Distribución de los datos observados
  n_success ~ binomial(n_obs, theta);
}

