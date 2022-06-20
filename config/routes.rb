Rails.application.routes.draw do
  root "events#index"
  get "welcome", to: "welcome#index"
  get "tutorial", to: "welcome#tutorial"
  resources :events do
    resource :rooms, only: %i[show] do
      collection do
        post 'equal'
        post 'unit'
      end
    end
    resource :join, only: %i[create destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    omniauth_callbacks: "omniauth_callbacks"
  }
end
