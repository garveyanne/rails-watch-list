Rails.application.routes.draw do
  get 'movies/index'
  get 'movie/index'

  resources :lists, only: [:index, :show, :create, :new] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end

Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists, except: :index
end
