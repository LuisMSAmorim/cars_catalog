Rails.application.routes.draw do
  
  get 'home/index'
  root 'home#index'
  devise_for :users
  resources :cars

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :cars
    end
  end
end
