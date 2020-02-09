Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'answers#index'
  get 'questions/new', to: 'questions#new'
  get 'questions/index', to: 'questions#index'
  get 'responses/new', to: 'responses#new'
  post '/questions/new', to:'questions#create'
  post '/questions/new', to: 'responses#create'
end
