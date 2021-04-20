Rails.application.routes.draw do
  root 'matches#index'
  resources :matches
  resources :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
