Rails.application.routes.draw do
  resources :coperates
  resources :officers
  resources :companys
  resources :historys
  resources :informations
  resources :i_rmains
  resources :publications
  resources :pressses
  get 'admins/home'
  devise_for :users
  resources :notices
  resources :media
  resources :newzs 
  resources :admins
  resources :recruits
  resources :environments
  resources :footer
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "welcome#index", as: 'home'
  resources :products
  resources :clientproducts
  resources :contacts, only: [:new, :create, :index]
  get 'new' => 'contacts#new', as:'new' 
  get 'get_newzs', to: 'newzs#get_newzs'
  get 'show_newzs', to: 'newzs#show_newzs'
end

