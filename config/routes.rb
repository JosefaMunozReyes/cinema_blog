Rails.application.routes.draw do
  get 'movie/index',  as:"movies" 
  get 'movie/new'
  get 'documental/index', as:"documentals"
  get 'documental/new'
  get 'serie/index',   as:"series"
  get 'serie/new'
  get 'pages/index'
  get 'pages/new'
  get 'pages/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "movie/index" => "movie#create"
  post "documental/index" => "documental#create"
  post "serie/index" => "serie#create"
  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#index"
end
