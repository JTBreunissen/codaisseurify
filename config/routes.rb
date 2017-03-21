Rails.application.routes.draw do
  root to: 'artists#index'

  resources :songs  
  resources :artists, only: [:index, :show, :destroy] do
    resources :songs
  end
end
