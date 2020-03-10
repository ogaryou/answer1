Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/me'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :qas
  get 'qas/index', to: 'qas#index'
  post 'qas/index', to: 'qas#index'
  patch "/qas" , to:'qas#index'
  delete 'qas/destroy', to: 'qas#destroy'
  post '/qas/new',to: 'qas#create'
  root 'answers#index'
  get 'answers/index'
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
end
