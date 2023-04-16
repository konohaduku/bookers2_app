Rails.application.routes.draw do
  root :to => 'homes#top'
  devise_for :users
  get 'users' , to: 'users#index' 
  resources :post_images, only: [ :edit, :show, :index]
  resources :books
  resources :blogs do
 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
