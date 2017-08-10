Rails.application.routes.draw do
  # get 'doses/create'

  # get 'doses/new'

  # get 'doses/destroy'

  # get 'cocktails/index'

  # get 'cocktails/create'

  # get 'cocktails/new'

  # get 'cocktails/show'

  resources :cocktails do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
end
