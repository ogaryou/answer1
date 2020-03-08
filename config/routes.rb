Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get 'pages/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :qas
  get 'qas/index', to: 'qas#index'
  post '/qas/index',to: 'qas#index'
  delete 'qas/destroy', to: 'qas#destroy'
  post '/qas/new',to: 'qas#create'
  get '/answers/index',to:'answers#index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
end
