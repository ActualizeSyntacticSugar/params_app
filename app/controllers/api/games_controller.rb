class Api::GamesController < ApplicationController
  def name_method
    @name = params["input_name"].upcase
    if @name[0] == "A"
      @message = "Your name starts with A!"
    else
      @message = "Your name does not start with A!"
    end
    render "name.json.jb"
  end
end
