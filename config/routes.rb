Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :products do
    resources :order_items
  end
  resource :cart
  resources :orders
  get "info", to: "pages#info"
  root "pages#home"
end
