Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'articles#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :articles
  resources :comments, only: %(create)
  resources :replies, only: %(create)
  resources :reply_comments, only: %(create) do
    collection do
      get :load_more
    end
  end
end
