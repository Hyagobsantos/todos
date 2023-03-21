Rails.application.routes.draw do
  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/topicos", to: "topicos#index"
  post "/topicos", to: "topicos#create"
  get "/topicos/new", to: "topicos#new", as: :new_topico
  get "/topicos/:id/edit", to: "topicos#edit", as: :edit_topico
  get "/topicos/:id", to: "topicos#show", as: :topico

end
