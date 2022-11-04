Rails.application.routes.draw do
  root 'welcome#index'
  get '/auth/google_oauth2/callback', to: 'sessions#google'

  resources :user, only: [:create, :show]

  controller :sessions do
    delete 'logout' => :destroy
  end
end
