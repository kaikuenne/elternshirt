Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tshirts
  get 'checkout_id=:tshirt_id', to: "checkouts#new", as: :new_checkout
  post 'checkout/order=:id', to: "checkouts#order", as: :new_order
  resources :checkouts, except: [:new], path: 'checkout', param: :id_encrypted

  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
