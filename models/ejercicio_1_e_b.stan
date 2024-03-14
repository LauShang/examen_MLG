data {
  int<lower=0> n_obs;       // Número total de observaciones
  int<lower=0> n_success;   // Número de éxitos (créditos otorgados)
  real mean0;               // Media de la distribución normal a priori
  real<lower=0> variance0;  // Varianza de la distribución normal a priori
}

parameters {
  real theta;  // Parámetro sin procesar que sigue una distribución normal
}

model {
  // Distribución a priori para theta_raw
  theta ~ normal(mean0, sqrt(variance0));
  
  // Distribución de los datos observados
  n_success ~ binomial(n_obs, theta);
}
