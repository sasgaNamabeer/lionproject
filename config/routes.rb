Rails.application.routes.draw do
  resources :posts
  root 'home#index'
  
  post '/posts/:post_id' =>"comments#create"
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
