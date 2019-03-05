Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :doctors
    post "/login", to: 'doctors#login'
  resources :patients, only: [:index, :show]
    post "/signin", to: 'patients#signin'
  resources :symptoms, only: [:index, :show]
    post "/symptoms", to: 'symptoms#create', :as => :create_forum
end
