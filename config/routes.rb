Rails.application.routes.draw do

  # match 'services/all/edit' => 'services#edit_all', :as => :edit_all, :via => :get
  # get 'services/all/edit', to: 'services#edit_all', as: 'edit_all'
  # put 'services/all', to: 'services#update_all', as: 'update_all'
  # get 'services', to: 'services#index'

  resources :services

  get 'creatives/index'

  devise_for :admins, :controllers => {:registrations => "admins/registrations"}
  authenticated :admin do
    root 'services#index', as: :authenticated_root
  end


  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
