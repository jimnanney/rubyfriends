Rubyfriends::Application.routes.draw do

  get '/about', to: 'tweets#about', as: :about
  get '/home', to: 'tweets#home', as: :home
  resources :tweets, only: [:index, :show]
  root to: 'tweets#home'

end
