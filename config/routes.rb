Rails.application.routes.draw do
  resources :drinkusers
  resources :drinks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
