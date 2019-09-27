Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/new' => 'sessions#new', as: "new_session"
  post '/login' => 'sessions#create', as: "create_session"
  post '/logout' => 'sessions#destroy', as: "destroy_session"
end
