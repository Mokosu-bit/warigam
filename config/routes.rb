Rails.application.routes.draw do
  root 'events#index'
  get 'welcome', to: 'welcome#index'
  get 'tutorial', to: 'welcome#tutorial'
  resources :users, only: %i[show edit]
  resources :events do
    resource :rooms, only: %i[show] do
      collection do
        namespace :modes do
          resource :equal, only: %i[create]
          resource :unit, only: %i[create]
        end
      end
    end
    resource :join, only: %i[create destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, :skip => [:sessions, :registrations, :password], controllers: {
    omniauth_callbacks: 'omniauth_callbacks'
  }
  devise_scope :user do
    delete 'logout', to: 'devise/sessions#destroy'
  end
end
