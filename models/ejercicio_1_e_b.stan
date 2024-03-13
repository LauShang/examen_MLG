data {
  int<lower=0> n_obs;       // Número total de observaciones
  int<lower=0> n_success;   // Número de éxitos (créditos otorgados)
  real mean0;               // Media de la distribución normal a priori
  real<lower=0> variance0;  // Varianza de la distribución normal a priori
}

parameters {
  real theta_raw;  // Parámetro sin procesar que sigue una distribución normal
}

transformed parameters {
  real<lower=0, upper=1> theta = inv_logit(theta_raw);  // Transformar theta_raw a (0, 1)
}

model {
  // Distribución a priori para theta_raw
  theta_raw ~ normal(mean0, sqrt(variance0));
  
  // Distribución de los datos observados
  n_success ~ binomial(n_obs, theta);
}
