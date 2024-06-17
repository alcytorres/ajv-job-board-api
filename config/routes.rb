Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # get "/users" => "users#index"

  get "/jobs" => "jobs#index"
  get "/jobs/:id" => "jobs#show"
  post "/jobs" => "jobs#create"
  patch "/jobs/:id" => "jobs#update"
  delete "/jobs/:id" => "jobs#destroy"


  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/companies" => "companies#index"
  get "/companies/:id" => "companies#show"
  post "/companies" => "companies#create"
  patch "/companies/:id" => "companies#update"
  delete "/companies/:id" => "companies#destroy"
end
