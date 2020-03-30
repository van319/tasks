Rails.application.routes.draw do
  root "top#index"
  resources :tasks,only: [:index, :show, :edit, :update, :destroy]
  resources :komado,only: [:index, :create, :new,]
  
end
