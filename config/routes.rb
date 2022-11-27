Rails.application.routes.draw do
  # get 'flats/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'flats#index'
  get 'flats', to: 'flats#index'
  get 'flats/:id', to: 'flats#show', as: :flat
end
