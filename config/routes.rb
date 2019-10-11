Rails.application.routes.draw do
  namespace :api do
    get '/users' => 'users#index'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'

    get '/goods' => 'goods#index'
    get '/goods/:id' => 'goods#show'

    get '/photos' => 'photos#index'
    get '/photos/:id' => 'photos#show'

    post '/sessions' => 'sessions#create'
    
  end
end
