Rails.application.routes.draw do
  get 'restaurants/new'
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, only:[:index, :create, :new, :show] do
    resources :reviews, only:[:new, :create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end


# get "/restaurants", to: "restaurants#index"
# get "/restaurants/new", to: "restaurants#new"
# get "/restaurants/:id", to: "restaurants#show", as: :restaurant
# post "/restaurants", to: "restaurants#create"
# get "/restaurants/id/edit", to "restaurants#edit", as :restaurant_review
# patch "/restaurants/:id", to: "restaurants#update"
# delete "/restaurants/:id", to: "restaurants#destroy"
