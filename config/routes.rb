Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'answers#index'
  get 'qas/index', to: 'qas#index'
  resources :qas
  delete 'qas/destroy', to: 'qas#destroy'
  post '/qas/new',to: 'qas#create'
end
