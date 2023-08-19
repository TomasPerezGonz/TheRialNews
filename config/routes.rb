Rails.application.routes.draw do
  devise_for :users
  resources :news do
    resources :comments, only: [:create, :destroy]
  end

  devise_scope :user do
    authenticated :user do
      root 'news#index', as: :authenticated_root
    end

    unauthenticated :user do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end




