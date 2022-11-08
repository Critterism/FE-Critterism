class TriviaController < ApplicationController
  def index
    @trivia_questions = TriviaFacade.create_trivia
  end
end
