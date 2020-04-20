Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login' => 'sessions#new'
  post '/login' => 'session#create'
  
  resources :sessions, only: [:create, :new]
  resources :users
end
