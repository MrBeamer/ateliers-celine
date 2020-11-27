Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :workshops, only: [:index, :show, :update] do
    member do
      get :instructions
    end
  end

  resources :orders, only: [:show, :create]

  resources :dashboards, only: [:index]

  resources :subscriptions, only: [:index, :new, :create, :show]


  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  mount StripeEvent::Engine, at: '/stripe-webhooks'
end

# create custom route with custom controller and custom action
# get "dashboard", to: "dashboard#index", as: :dashboard
