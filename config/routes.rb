Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :items do
    resources :rentals, except: :destroy
  end
  resources :rentals, only: :destroy

  get 'dashboard', to: 'dashboard#show'
end



# get 'items', to: 'items#index'
# get 'items/id', to: 'items#show'
# post 'items/id', to: 'items#create'
# get 'items/new', to: 'items#new'
# get 'items/id/edit', to: 'items#edit'
