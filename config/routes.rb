Rails.application.routes.draw do
  namespace :api do
    get '/users' => 'users#index'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'


    get '/goods' => 'goods#index'
    post '/goods' => 'good#create'
    get '/goods/:id' => 'goods#show'
    # patch '/goods/:id' => 'goods#update'
    # delete '/goods/:id' => 'goods#destroy'

    get '/photos' => 'photos#index'
    post '/photos' => 'photos#create'
    get '/photos/:id' => 'photos#show'
    # patch '/photos/:id' => 'photos#update'
    # delete '/photos/:id' => 'photos#destroy'

# Log whether or not a person has swiped left or right on a good already, so they dont get it again. 
    post '/sessions' => 'sessions#create'
    
  end
end
