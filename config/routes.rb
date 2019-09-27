Rails.application.routes.draw do
  get '/sessions/new', to: 'sessions#new', as: "new_session"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/login', to: 'sessions#new', as: "login"
  post '/login', to: 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
