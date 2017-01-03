Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  get 'users/ne'

  get 'users/create'

  get 'users/read'

  get 'users/update'

  get 'users/destroy'

  get 'products/index'

  get 'products/show'

  get 'products/ne'

  get 'products/create'

  get 'products/read'

  get 'products/update'

  get 'products/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
