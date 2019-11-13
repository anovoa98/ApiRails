Rails.application.routes.draw do
  resources :vehicles
  resources :owners
  resources :placas
  resources :type_vehicles
  resources :insurance_polices
  resources :names
  resources :services
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
