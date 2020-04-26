Rails.application.routes.draw do
 

  devise_for :users
  # authenticated :user do
  #   root :to => 'articles#index', as: :authenticated_root
  # end
  root 'welcome#index'
  resources :users do
    resources :articles
  end
  # get 'welcome/index'
  # get 'singup'
# root 'users#register'
# get '/register', to: 'users#register'
# post '/register/:user', to: 'users#create'
# get '/login', to: 'users#login'
# post '/login/:user', to: 'users#login'

  # get 'welcome/index'
  resources :articles do
    resources:comments
  end
  resources:users

  
  # root to make ir defualt root
  # root 'users#new'
end
