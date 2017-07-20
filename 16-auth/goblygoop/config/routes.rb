Rails.application.routes.draw do



  #get 'login', to: 'sessions#new',
  #get 'sessions/new'

  #get 'sessions/create'

  #get 'sessions/destroy'


  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/login', to: 'sessions#new', as: 'login'
  resources :sessions, only: [:new, :create, :destroy]

  root 'beers#index'

  resources :users
  #get 'beers/index'
  get '/beers/search' => 'beers#search'
  post '/beers/search' => 'beers#find_beer'
  resources :beers, except: []



  # get '/beers', to: 'beers#index'
  # get '/beers' => 'beers#index'

  # get 'beers/new'
  #
  # get 'beers/show'
  #
  # get 'beers/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
