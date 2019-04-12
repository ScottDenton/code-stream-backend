Rails.application.routes.draw do
  resources :favorites
  resources :categories
  namespace :api do
    namespace :v1 do
      resources :users
      resources :videos
    end
  end
end
