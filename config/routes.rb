Rails.application.routes.draw do

  devise_for :users
  root to: 'cocktails#landing'

  resources :cocktails do

    collection do
      get 'landing'
      get 'random'
    end

    resources :doses
  end

  resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
