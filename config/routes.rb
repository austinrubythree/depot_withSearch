Rails.application.routes.draw do
  # devise_for :users
  get 'admin' => 'admin#index'

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
  # Depot::Application.routes.draw do
  devise_for :users
  #   resources :products do
  #     resources :
  #   get :who_bought, on: :member
  #   end 
  # end
end
