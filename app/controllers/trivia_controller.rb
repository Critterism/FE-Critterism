class TriviaController < ApplicationController
  def show
    @user = current_user
    @trivia = TriviaFacade.create_trivia
  end

end