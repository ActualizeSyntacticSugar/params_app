Rails.application.routes.draw do
  namespace :api do
    get "/query_params_url" => "params_examples#query_params_method"
    get "/segment_params_url/:this_is_a_variable/cool" => "params_examples#segment_params_method"

    get "/name_url" => "games#name_method"
    get "/query_guess_url" => "games#query_guess_method"
    get "/segment_guess_url/:guess" => "games#segment_guess_method"
  end
end
