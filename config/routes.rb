Rails.application.routes.draw do
  root 'application#hello'

  get 'sessions/new', to: 'sessions#new', as: "new_session"
  get '/login', to: 'sessions#new', as: "login"
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
