Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :products do
    get :who_bought, on: :member
  end

  scope '(:locale)' do
    resources :orders
    resources :line_items
    resources :carts
    root 'store#index', as: 'store_index', via: :all
  end
  #stripe charge method
  resources :charges
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Depot::Application.routes.draw do
    resources :products do
      resources :reviews
    get :who_bought, on: :member
    end 
  end
end
