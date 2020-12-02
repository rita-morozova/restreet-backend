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
get '/favvideos' => 'favvideos#index'

post '/photos', to: 'photos#create'
put '/photos/:id', to: 'photos#update'

get '/notes' => 'notes#index'
post '/notes', to: 'notes#create'

put 'photo/:id/likes'  => 'likes#update'
put 'photos/:id' => 'photos#update'

put '/likes/:id' => 'likes#update'
delete '/likes/:id', to: 'likes#destroy'




end
