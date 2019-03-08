Rails.application.routes.draw do
  devise_for :users
  get 'admin' => 'admin#index'

  resources :products do
    get :who_bought, on: :member
  end

  scope '(:locale)' do
    resources :orders
    resources :line_items
    resources :carts
    root 'store#index', as: 'store_index', via: :all
    # root to: 'home#index'
  end
  #stripe charge method
  resources :charges
end
