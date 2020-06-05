Rails.application.routes.draw do
resources :artists, only: [:show, :new, :edit, :update, :create]
resources :genres, only: [:show, :new, :edit, :update, :create]
resources :songs, only: [:index, :show, :new, :edit, :update, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
