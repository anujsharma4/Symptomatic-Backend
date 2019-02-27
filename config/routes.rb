Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :doctors, only: [:index, :show]
  resources :patients, only: [:index, :show]
  resources :symptoms, only: [:index, :show]
    post "/symptoms" => 'symptoms#create', :as => :create_forum
end
