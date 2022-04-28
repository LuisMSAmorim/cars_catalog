Rails.application.routes.draw do
  
  devise_for :users, skip: [:registrations]
  
  root 'home#index'
  
  get 'home/index'
  
  resources :cars
end
