Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # get 'welcome/index'
  # get 'singup'
root 'users#register'
get '/register', to: 'users#register'
post '/register/:user', to: 'users#create'
get '/login', to: 'users#login'
post '/login/:user', to: 'users#login'

  # get 'welcome/index'
  resources :articles do
    resources:comments
  end

  
  # root to make ir defualt root
  root 'users#new'
end
