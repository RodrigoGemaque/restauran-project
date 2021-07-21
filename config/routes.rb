Rails.application.routes.draw do
  get 'menu/index'
  devise_for :users
  resources :products

  root 'pages#home'

  get 'menu', to: "menu#index"  
  get 'catering', to: "pages#catering"
  get 'info', to: "pages#info"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
