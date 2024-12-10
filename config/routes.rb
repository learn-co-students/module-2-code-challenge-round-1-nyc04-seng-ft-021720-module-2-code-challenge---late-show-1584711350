Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:show, :new, :create]

  # get '/average_appearance_rating/:id' => 'episodes#average_appearance_rating', :as => 'average_appearance_rating'
end
