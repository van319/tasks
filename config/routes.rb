Rails.application.routes.draw do
  root "top#index"
  resources :tasks, only: [:index]
  resources :komado, only: [:index]
end
