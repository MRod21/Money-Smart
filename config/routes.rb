Rails.application.routes.draw do

  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'

  resources :budgets
  resources :transactions
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
