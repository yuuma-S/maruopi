Rails.application.routes.draw do

devise_for :end_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'questions#index'
get '/about' => 'home#about'


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
    collection do
      match 'search' => 'answers#search', via: [:get, :post]
    end
	end
end

end
