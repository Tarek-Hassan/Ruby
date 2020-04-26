Rails.application.routes.draw do

  # get 'sessions/login,'
  # get 'sessions/home,'
  # get 'sessions/profile,'
  # get 'sessions/setting'


  root 'welcome#index'
  get 'welcome/index'
  resources :users

  resources :articles do
    resources :comments
  end
  get "signup", :to => "users#new"
  post "users", :to => "users#create"
  get "login", :to => "sessions#login"
  post "login", :to => "sessions#login_attempt"
  get "logout", :to => "sessions#logout"
  # resources :articles

  # match ':controller(/:action(/:id))(.:format)'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
