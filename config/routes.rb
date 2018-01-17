Rails.application.routes.draw do

  # match 'prices/all/edit' => 'prices#edit_all', :as => :edit_all, :via => :get
  get 'prices/all/edit', to: 'prices#edit_all', as: 'edit_all'
  put 'prices/all', to: 'prices#update_all', as: 'update_all'
  get 'prices', to: 'prices#index'

  devise_for :admins, path: 'auth'
  get 'creatives/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
