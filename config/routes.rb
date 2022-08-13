Rails.application.routes.draw do

  get 'apis/commands'
  get 'apis/commands/:id', to: 'apis#commands'
  get 'apis/tasks'
  get 'apis/tasks/:id', to: 'apis#tasks'
  get 'apis/nodes'
  get 'apis/nodes/:id', to: 'apis#nodes'
  get 'apis/models'
  get 'apis/models/:id', to: 'apis#models'


  root "models#index"
  resources :models
  resources :actions
  resources :customers
  resources :nodes
  resources :genieacs
  resources :commands
  resources :tasks
  resources :nodeconfigs
  resources :apis
        

  #get 'models/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
