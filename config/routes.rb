Rails.application.routes.draw do
  root "crimes#index"
  resources :thiefs 
  resources :crimes
  get 'newcrimethief', to: "crime_thiefs#new", as: 'new'
  resources :crime_thiefs

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
