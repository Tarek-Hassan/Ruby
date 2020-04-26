Rails.application.routes.draw do
  # get 'test1/index'
  # get 'test1/new'
  # get 'test1/show'
  # get 'test1/create'
  # get 'test1/update'
  # get 'test1/edit'
  # get 'test1/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get 'welcome/index'
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
