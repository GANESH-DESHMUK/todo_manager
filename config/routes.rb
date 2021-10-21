Rails.application.routes.draw do
  #get "todos", to: "todos#index"
  #post "todos/create", to: "todos#create"
  resources :todos
  resources :users
  post "users/login", to: "users#login"
end
