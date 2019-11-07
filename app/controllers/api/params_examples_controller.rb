class Api::ParamsExamplesController < ApplicationController
  def query_params_method
    @size = params["size"]
    @sheep = params["sheep"]
    render "query_params.json.jb"
  end
end
