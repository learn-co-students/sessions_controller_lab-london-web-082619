Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/sessions/new' => 'sessions#new', as: "login"
  post '/sessions/login' => 'sessions#create'
  post '/sessions/logout' => 'sessions#destroy'
end
