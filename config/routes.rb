Rails.application.routes.draw do
  resources :appearances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/guests/:id/sort', to: 'guests#sort', as: 'guest_sort'
  resources :guests
  resources :episodes
end
