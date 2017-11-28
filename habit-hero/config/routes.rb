Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "users#index"
get "/users/new", to: "users#new", as: "new_user"
post '/users', to: 'users#create'
get '/users/:id', to: 'users#show', as: 'user'
get '/login', to: 'sessions#new'
post '/sessions', to: 'sessions#create'
get '/logout', to: 'sessions#destroy'
end
