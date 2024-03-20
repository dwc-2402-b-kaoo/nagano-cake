Rails.application.routes.draw do
  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do
    root 'homes#top'
    resources :items, only: [:index, :new, :show, :edit, :create, :update]
    resources :genres, only: [:index, :edit, :create, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:show, :update]
    resources :orders_details, only: [:update]
  end

  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  #public/homesコントローラ
  root 'public/homes#top'
  get "/about" => "public/homes#about"

  #public/customersコントローラ
  get '/customers/my_page', to: 'public/customers#show', as: 'customers_my_page'
  get "/customers/information/edit" => "public/customers#edit", as: "customer/edit"
  patch "/customers/information" => "public/customers#update", as: "customer/update"
  get "/customers/unsubscribe" => "public/customers#unsubscribe", as: "customer/unsubscribe"
  patch "/customers/withdraw" => "public/customers#withdraw", as: "customer/withdraw"

  #public/cart_itemsコントローラ
  delete "/cart_items/destroy_all" => "public/cart_items#destroy_all", as: "cart_item/destroy_all"

  #public/ordersコントローラ
  post "/orders/confirm" => "public/orders#confirm", as: "order/confirm"
  get "/orders/thanks" => "public/orders#thanks", as: "order/thanks"

  scope module: :public do
    resources :items, only: [:index, :show]
    resources :cart_items, only: [:index, :update, :destroy, :create]
    resources :orders, only: [:new, :create, :index, :show]
    resources :adresses, only: [:index, :edit, :create, :update, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
