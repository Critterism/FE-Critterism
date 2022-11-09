class TriviaController < ApplicationController
  def index
    @trivia_questions = TriviaFacade.create_trivia
  end

  private

  def current_question
    @trivia_questions[0]
  end
end
