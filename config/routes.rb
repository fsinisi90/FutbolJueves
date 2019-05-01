Rails.application.routes.draw do
  resources :partidos
  resources :jugadors
  root 'application#hello'
end
