Rails.application.routes.draw do
  root to: 'home#show'

  namespace :api do
    resources :schools
  end

  get '*path', to: 'home#show'
end
