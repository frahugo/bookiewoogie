Bookiewoogie::Application.routes.draw do
  root :to => "home#index"

  devise_for :users, :controllers => {:registrations => "registrations"}

  resources :users

  resources :books do
    member do
      post :recommend
    end
  end
  resources :authors
end