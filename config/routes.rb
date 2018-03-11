Rails.application.routes.draw do
  resources :movies
  resources :person

  root :to => 'home#index'

  get 'search_movie', to: "search#index"  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
