Rails.application.routes.draw do


  root 'products#index'	
  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  post '/logout', to: 'sessions#destroy'

  post '/products/add_to_cart'
  post '/products/add_to_wishlist'

  post '/products/remove_from_cart'

  post '/products/remove_from_wishlist'

  post '/carts/update'
  
resources :users, :products, :wishlists, :carts, :home


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
