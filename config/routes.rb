Rails.application.routes.draw do
  get 'ingredients/index'
  get 'ingredients/show'
  get 'ingredients/new'
  get 'ingredients/create'
  get 'ingredients/edit'
  get 'ingredients/update'
  get 'ingredients/destroy'
  resources :cocktails
  resources :ingredients
end
