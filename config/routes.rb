Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'happynumber/input'
  root 'happynumber#input'
  get 'happynumber/find_happy'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create' 
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new' 
  post '/users' => 'users#create'

end

