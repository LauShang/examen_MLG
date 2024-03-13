data {
  int<lower=0> n_obs; // Número total de observaciones
  int<lower=0> n_success; // Número de éxitos (créditos otorgados)
  real<lower=0> alpha0; 
  real<lower=0> beta0; 
}

parameters {
  real<lower=0, upper=1> theta; // Proporción de éxito, sigue una distribución Beta
}

model {
  // Especificar la distribución a priori para theta
  theta ~ beta(alpha0, beta0);

  // Especificar la verosimilitud de los datos observados
  n_success ~ binomial(n_obs, theta);
}
