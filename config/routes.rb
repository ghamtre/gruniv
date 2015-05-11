Rails.application.routes.draw do
  resources :comments
  resources :pins 
  devise_for :users

  resources :links do
    member do
      put "like", to: "links#upvote"
      put "dislike", to: "links#downvote"
    end
    resources :comments
  end
  resources :pins do 
    member do 
      put "like", to: "pins#upvote"
    end
  end
  
  authenticated :user do
  root 'links#index', as: "authenticated_root"
end
  root 'pages#home'
end
