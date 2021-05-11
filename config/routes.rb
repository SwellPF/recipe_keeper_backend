Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :recipes, only: [:index, :create, :show, :destroy]
      resources :categories, only: [:index, :create]
    end
  end
end
