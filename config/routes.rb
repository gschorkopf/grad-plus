Rails.application.routes.draw do
  root to: 'home#show'

  namespace :api do
    resources :schools
    resources :tasks
  end

  get '*path', to: 'home#show'
end
