Rails.application.routes.draw do
  resources :doctors
  resources :clinics
  get 'home/index'
  root to: "home#index" 
end
