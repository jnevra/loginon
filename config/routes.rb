Rails.application.routes.draw do
  devise_for :users
  # For details on the rDSL available within this file, see http://guides.rubyonrails.org/routing.html
root "forum_threads#index"


resources :forum_threads, only:[:show, :new, :create] do
  resources :forum_posts, only:[:create]
end
end
