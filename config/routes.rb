Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'questions#index'
get '/about' => 'home#about'

# adminのルーティング
namespace :admin do
	resources :end_users, only: [:index, :show, :destroy]

	resources :questions, only: [:index, :show, :destroy] do
	    resources :comments, only: [:destroy]
	end

	resources :answers, only: [:show, :destroy] do

	end
end

# end_userのルーティング
resources :end_users do
    resource :relationships, only: [:create, :destroy]
      get :follows, on: :member
      get :followers, on: :member
end

resources :questions do
    resources :comments, only: [:create, :destroy]
    resources :answers, except: [:index] do
  		resource :favorites, only: [:create, :destroy]
	end
end

end
