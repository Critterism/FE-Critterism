class TriviaController < ApplicationController
  def index
    session[:game_questions] = TriviaFacade.create_trivia
  end
end
