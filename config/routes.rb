Rails.application.routes.draw do
  namespace :api do
    get '/users' => 'users#index'
    get '/users/:id' => 'users#show'

    get '/goods' => 'goods#index'
    get '/goods/:id' => 'goods#show'

    get '/photos' => 'photos#index'
    get '/photos/:id' => 'photos#show'
  end
end
