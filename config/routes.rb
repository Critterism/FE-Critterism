Rails.application.routes.draw do
  root 'welcome#index'
  get '/auth/google_oauth2/callback', to: 'sessions#google'
  get '/charities', to: 'charity_dashboard#index'
  
  resources :user, only: %i[create show]
  resources :trivia, only: %i[index]
  resources :charity, only: %i[index]


  controller :sessions do
    delete 'logout' => :destroy
  end
end
