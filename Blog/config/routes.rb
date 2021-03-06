Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#index"

  authenticated :user do
    root "doc#index", as: "authenticated_root"
  end

  resources :docs
  resources :comments
end
