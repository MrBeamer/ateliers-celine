Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'pages#home'

  resources :workshops, only: [:index, :show, :update] do
    member do
      get :instructions
    end
  end


  resources :dashboards, only: [:index]

  resources :subscriptions, only: [:index, :new, :create, :show] do
    resources :orders, only: [:new, :create]
  end

  get "profile", to: "subscriptions#profile", as: :profile

  get 'faqs', to: "pages#faqs", as: :faqs
  get 'terms_and_conditions', to: "pages#terms_and_conditions", as: :terms_and_conditions


  resources :orders, only: [:show] do
    resources :payments, only: :new
  end
  mount StripeEvent::Engine, at: '/stripe-webhooks'
end


# create custom route with custom controller and custom action
# get "dashboard", to: "dashboard#index", as: :dashboard
