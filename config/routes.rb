Rails.application.routes.draw do
  root 'welcome#index'
  get '/auth/google_oauth2/callback', to: 'sessions#google'
  get '/charities/wildlife', to: 'charities/wildlife#index'
  get '/charities/animals', to: 'charities/animals#index'

  resources :user, only: %i[create show]
  resources :trivia, only: %i[index show update]
  resources :charities, only: %i[index show]


  controller :sessions do
    delete 'logout' => :destroy
  end
end
