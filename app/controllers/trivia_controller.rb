class TriviaController < ApplicationController
  def index
    @questions = TriviaFacade.create_game_table
    @answers = TriviaFacade.create_answers
  end

  private

  def current_question
    @questions[0]
  end
end
