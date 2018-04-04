Rails.application.routes.draw do
  resources :milages
  resources :vehicles

  root to: "vehicles#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
