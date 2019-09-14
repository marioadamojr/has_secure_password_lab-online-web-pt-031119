Rails.application.routes.draw do
  get 'sessions/new'

  resources :users
  get '/homepage', to: 'users#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
