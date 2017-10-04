Rails.application.routes.draw do

  root 'donations#index'

  get '/help' => 'userstories#show'

  get '/sessions/new' => 'sessions#new', as: 'new_session'
  post '/sessions' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'

  resources :donations
  resources :histories
  resources :users

end
