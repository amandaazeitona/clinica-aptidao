Rails.application.routes.draw do
  resources :sections
  devise_for :admins, path: 'auth'
  get 'creatives/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end