Rails.application.routes.draw do
  
  get 'home/index'
  resources :cars
  root 'cars#index'
end
