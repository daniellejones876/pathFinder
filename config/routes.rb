Rails.application.routes.draw do
  devise_for :users

  root to: "pages#landing"

  get '/home', to: "pages#home"
  get '/profile', to: "pages#profile"

  resources :logbooks do
    resources :recommendations, only: %i[show]
    resources :journals, only: %i[new create edit update]
  end
end
