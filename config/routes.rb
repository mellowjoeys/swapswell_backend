Rails.application.routes.draw do
  namespace :api do
    get '/users' => 'users#index'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'


    get '/goods' => 'goods#index'
    post '/goods' => 'good#create'
    get '/goods/:id' => 'goods#show'
    patch '/goods/:id' => 'goods#update'
    delete '/goods/:id' => 'goods#destroy'

    get '/photos' => 'photos#index'
    post '/photos' => 'photos#create'
    get '/photos/:id' => 'photos#show'
    patch '/goods/:id' => 'photos#update'
    delete '/goods/:id' => 'photos#destroy'
    #create, update, destroy

    post '/sessions' => 'sessions#create'
    
  end
end
