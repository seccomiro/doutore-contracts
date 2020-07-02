Rails.application.routes.draw do
  resources :contracts
  resources :doctors
  resources :clinics
  get 'home/index'
  root to: "home#index" 
end
