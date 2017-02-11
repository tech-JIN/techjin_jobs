Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  devise_for :users , controllers: {
        sessions: 'users/sessions'
      }
  resources :users, only: [:index, :show]
  get 'pages/index'

  get 'pages/show'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
