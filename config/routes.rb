Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tshirts
  get 'checkout_id=:tshirt_id', to: "checkouts#new", as: :new_checkout
  resources :checkouts, except: [:new], path: 'checkout', param: :id_encrypted
end
