Rails.application.routes.draw do
  
  
  resources :line_items
  resources :quotes do
    resources :line_item_dates
  end
  resources :users
  resources :companies
  get "/signup", to: "users#new"
  get "/signin", to: 'sessions#new'
  post "/signin", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "quotes#index"
end
