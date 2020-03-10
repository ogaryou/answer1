Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :qas
  resources :users, only: %i[new create]
  get 'qas/index', to: 'qas#index'
  post 'qas/index', to: 'qas#index'
  patch "/qas" , to:'qas#index'
  delete 'qas/destroy', to: 'qas#destroy'
  post '/qas/new',to: 'qas#create'
  root 'answers#index'
  get 'answers/index',to: 'answers#index', as: :user_root
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
end
