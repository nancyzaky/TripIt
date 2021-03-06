Rails.application.routes.draw do
  namespace :api do
resources :users, only: [:index, :create] do
  resources :bookings, only: [:index]
end
  resources :bookings, only: [:create, :destroy]

resources :hotels, only: [:index, :create, :show] do
  resources :rooms, only: [:index, :create]


  resources :features, only: [:create]

end
resources :activities, only: [:create, :show, :destroy, :update]
resources :pictures, only: [:create]
resources :reviews, only: [:update, :destroy,:create, :index]
post "/login", to: "sessions#create"
get "/me", to: "users#show"
delete "/logout", to: "sessions#destroy"
get "/rooms/:id", to: "rooms#show"
post "/views", to: "views#create"
get "/rooms/:id/reviews", to: "reviews#index"
get "/rooms/:id/bookings/:start_date/:end_date", to: "bookings#available"
post "/hotels/:id/attractions", to: "attractions#create"
get "hotels/:id/attractions", to: "attractions#show"
get "hotels/:id/attractions_ordered", to: "attractions#attractions_ordered"
get "hotels/:id/attractions_ordered_desc", to: "attractions#attractions_ordered_desc"

get "hotels/:id/attractions_ordered_rating_asc", to:
"attractions#attractions_ordered_rating_asc"
get "hotels/:id/attractions_ordered_rating_desc", to:
"attractions#attractions_ordered_rating_desc"
end
# "# get bookings/:id, to: bookings#show"
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
