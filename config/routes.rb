Rails.application.routes.draw do
  get 'dashboard/index'

  get 'landing/index'
  root 'landing#index'
  resources :users

  #Loggin to the user
  post 'loggin', to: 'users#loggin', as: :loggin_user
  get  'new_loggin', to: 'users#new_loggin', as: :new_loggin_user

  #Create admin user
  get 'new_admin',to: 'users#new_admin',as: :new_admin
  post 'create_admin',to: 'users#create_admin',as: :create_admin

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
