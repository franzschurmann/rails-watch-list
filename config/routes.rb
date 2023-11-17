Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [ :index, :show, :new, :create ] do
    resources :bookmarks, only: [ :new, :create, :destroy]
  end
  # get '/lists', to: 'lists#index'

  # get '/lists/:id', to: 'lists#show'

  # get '/lists/new', to: 'lists#new', as: :new_list
  # post '/lists', to: 'lists#create'
  # Defines the root path route ("/")
  # root "articles#index"
end
