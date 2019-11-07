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

  def query_guess_method
    winning_number = 32
    input_guess = params["guess"].to_i
    if input_guess == winning_number
      @result = "You win!"
    elsif input_guess < winning_number
      @result = "You lose! (too low)"
    elsif input_guess > winning_number
      @result = "You lose! (too high)"
    end
    render "query_guess.json.jb"
  end
end
