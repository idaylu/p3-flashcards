Rails.application.routes.draw do
  root 'decks#index'

  get '/register' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :decks do
    resources :rounds, only: [:create, :show]
  end

  resources :guesses, only: [:create]

end
