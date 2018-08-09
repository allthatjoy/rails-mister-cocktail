Rails.application.routes.draw do
  resources :cocktails
  resources :ingredients
  resources :doses
end
