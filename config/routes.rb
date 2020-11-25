Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :workshops, only: [:index, :show, :update] do
    member do
      get :instructions
    end
  end

  resources :dashboards, only: [:index]

  resources :subscriptions, only: [:index, :new, :create]

end

# create custom route with custom controller and custom action
# get "dashboard", to: "dashboard#index", as: :dashboard
