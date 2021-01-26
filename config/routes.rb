Rails.application.routes.draw do
 resources :users
 resources :arts, only: [:index, :show]
 resources :videos, only: [:index, :show]
 resources :favvideos, only: [:index, :show, :create, :destroy]
 resources :favorites, only: [:index, :show, :create, :destroy] 
 resources :walls, only: [:index, :show, :destroy] 
 resources :listings, only: [:index, :show, :create, :update, :destroy]
 resources :notes, only: [:index,  :create, :update, :destroy]
 resources :photos, only: [:index, :create, :update, :destroy, :show]
 resources :likes


get '/profile', to: 'users#profile'
post '/login', to: 'users#login' 
post '/signup', to: 'users#create'


post '/favvideos', to: 'favvideos#create'
get '/favvideos' => 'favvideos#index'

post '/photos', to: 'photos#create'
put '/photos/:id', to: 'photos#update'

get '/notes' => 'notes#index'
post '/notes', to: 'notes#create'

delete '/likes/:id', to: 'likes#destroy'
delete '/photos/:id', to: 'photos#destroy'

end
