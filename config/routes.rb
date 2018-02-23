Rails.application.routes.draw do
  # Tim suggests nesting these
  resources :redactions
  resources :images
  resources :cases
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
