Rails.application.routes.draw do
  resources :yourboxes

  resources :pins

  devise_for :users
  root "pages#home"

  get "about" => "pages#about"


end
