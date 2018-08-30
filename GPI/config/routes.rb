Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'
  
  get '/crearoc', to: 'ordencompras#new'
  post '/crearoc', to: 'ordencompras#create'

  get '/users/:id', to: 'users#show'

  get '/newmaterial', to: 'materials#new'
  post '/newmaterial', to: 'materials#create'

  get 'welcome/index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'  
  
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :ordencompras
  resources :materials
  
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end