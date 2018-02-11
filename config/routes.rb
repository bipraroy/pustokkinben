Rails.application.routes.draw do
  get 'landing/index'
  root 'landing#index'
  resources :users
  post 'loggin', to: 'users#loggin', as: :loggin_user
  get  'new_loggin', to: 'users#new_loggin', as: :new_loggin_user

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
