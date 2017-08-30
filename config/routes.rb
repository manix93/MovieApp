Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'movies#index'
  resources :movies, only: %i(index show)
  resources :actors, only: %i(index show)
end
