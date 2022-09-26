Rails.application.routes.draw do
  get 'archive/index'
  resources :food_logs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to:"food_logs#index"
end
