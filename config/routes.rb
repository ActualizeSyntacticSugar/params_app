Rails.application.routes.draw do
  namespace :api do
    get "/query_params_url" => "params_examples#query_params_method"

    get "/name_url" => "games#name_method"
  end
end
