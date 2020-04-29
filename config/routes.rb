Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'users#new'
  post '/', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
