Rails.application.routes.draw do
  resources :animals
  resources :categories
  
  root 'animals#index'
end
