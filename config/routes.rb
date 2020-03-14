Rails.application.routes.draw do
  resources :clinics
  get 'home/index'
  root to: "home#index" 
end
