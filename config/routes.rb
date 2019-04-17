Rails.application.routes.draw do
  get 'sessions/new'
  post 'sessions/create'
  post 'sessions/getUserVideos'
  get 'sessions/destroy'
  namespace :api do
    namespace :v1 do
      resources :livestreams
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
