Rails.application.routes.draw do
   get 'users/:id' => 'homes#index'
  root :to => 'homes#top'
  devise_for :users
  resources :post_images, only: [ :edit, :show]
  resources :books
  resources :blogs do
 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
