Rails.application.routes.draw do
  resources :scores, only: [:create, :destroy, :show, :index]
  resources :players, only: [] do
    resource :history, only: [:show]
  end
  resources :apidocs, only: [:index]
end
