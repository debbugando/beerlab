Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :users

  # para filtrar actions, vc pode utilizar o except ou only
  # ex:
  # resources :users, only: [:index, :show]
  # resources :users, except: [:destroy, :create, :update]
    resources :users do
      collection do
        get 'my_action', action: :my_action
      end
  end

  #namespace :api do
  #  resources :users
  #end

end
