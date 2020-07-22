Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/episodes" => "episodes#index"
    post "/episodes" => "episodes#create"
    get "/episodes/:id" => "episodes#show"
    patch "/episodes/:id" => "episodes#update"
    delete "/episodes/:id" => "episodes#destroy"
  end
end
