Rails.application.routes.draw do


  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  post '/products/add_to_cart'
  post '/products/add_to_wishlist'

  post '/products/remove_from_cart'

  post '/products/remove_from_wishlist'
  
resources :users, :products, :wishlists, :carts, :home


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
