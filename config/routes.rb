Rails.application.routes.draw do
  root to: 'restaurants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, except: [:edit, :update, :destroy] do
    resources :reviews, only: [:new, :create]
  end
end
