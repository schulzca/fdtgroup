Fdtgroup::Application.routes.draw do
  root :to => "static_pages#index"

  resources :users, :only => [:new, :create]
  resources :products, :only => [:show, :index]
  resources :sessions, :only => [:new, :create, :destroy]
  match "/home", :to => "static_pages#index", :via => "get"
  match "/signup", :to => "users#new", :via => "get"
  match "/signin", :to => "sessions#new", :via => "get"
  match "/signout", :to => "sessions#destroy", :via => "delete"
end
