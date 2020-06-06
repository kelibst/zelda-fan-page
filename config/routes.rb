Rails.application.routes.draw do
  root 'opinions#index'
  resources :opinions, only: [:index, :create] do 
    resources :comments, only: [:create]
  end
  devise_for :users
  get 'follow' => 'friendships#follow'
  post 'follow' => 'friendships#follow'
  delete 'unfollow' => 'friendships#unfollow'
  resources :users, only:[:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
