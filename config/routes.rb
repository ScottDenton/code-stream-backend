Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :videos
        resources :favorites
        resources :categories
      end
      resources :categories do
        resources :videos
      end
    end
  end
end
