Rails.application.routes.draw do
  get 'welcome/index'
  use_doorkeeper do 
    skip_controllers :authorizations, :applications, :authorized_applications
  end
  devise_for :users
  resources :items

  namespace :api do 
    namespace :v1 do 
      resources :items 
    end 
  end

  root to: "welcome#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
