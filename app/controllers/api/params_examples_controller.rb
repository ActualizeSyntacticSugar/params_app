class Api::ParamsExamplesController < ApplicationController
  def query_params_method
    @size = params["size"]
    @sheep = params["sheep"]
    render "query_params.json.jb"
  end

  def segment_params_method
    @message = params["this_is_a_variable"]
    render "segment_params.json.jb"
  end

  def body_params_method
    @secret_stuff = params["sheep"]
    render "body_params.json.jb"
  end
end
