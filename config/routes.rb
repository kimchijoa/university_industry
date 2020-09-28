Rails.application.routes.draw do
  resources :re_posts
  resources :alram_tests
  resources :alram_boards
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	
  root 'alram_tests#index'
end
