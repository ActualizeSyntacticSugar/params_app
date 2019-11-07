Rails.application.routes.draw do
  namespace :api do
    get "/query_params_url" => "params_examples#query_params_method"

    get "/name_url" => "games#name_method"
    get "/query_guess_url" => "games#query_guess_method"
  end
end
