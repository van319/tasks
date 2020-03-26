Rails.application.routes.draw do
  root "top#index"
  resources :tasks, only: [:index,:show]
  resources :komado,only: [:index, :create, :new, :update]
  
end
