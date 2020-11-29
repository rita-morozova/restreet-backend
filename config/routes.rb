Rails.application.routes.draw do
 resources :users
 resources :arts
 resources :videos
 resources :favvideos
 resources :favorites 
 resources :walls 
 resources :listings
 resources :notes
 resources :photos
 resources :likes 


get '/profile', to: 'users#profile'
post '/login', to: 'users#login' 
post '/signup', to: 'users#create'


post '/favvideos', to: 'favvideos#create'
get "/favvideos" => "favvideos#index"

post '/photos', to: 'photos#create'

get '/notes' => 'notes#index'
post '/notes', to: 'notes#create'


end