Rails.application.routes.draw do

  get '/' => 'sessions#welcome'
  resources :budgets
  resources :transactions
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
