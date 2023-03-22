Rails.application.routes.draw do
  devise_for :users
  resources :tasks

  resources :topicos do # tarefas é um recurso de topicos
    resources :tasks, only: [:new]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #define root in homepage

  root to: "welcome#index"

  # get "/topicos", to: "topicos#index"
  # post "/topicos", to: "topicos#create"
  # get "/topicos/new", to: "topicos#new", as: :new_topico
  # get "/topicos/:id/edit", to: "topicos#edit", as: :edit_topico
  # get "/topicos/:id", to: "topicos#show", as: :topico
  # patch "/topicos/:id", to: "topicos#update"
  # put "/topicos/:id", to: "topicos#update"
  # delete "/topicos/:id", to: "topicos#destroy"
end
