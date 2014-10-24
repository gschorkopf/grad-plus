Rails.application.routes.draw do
  root to: 'home#show'

  namespace :api do

  end

  get '*path', to: 'home#show'
end
