class TriviaController < ApplicationController
  def index
    @trivia_questions = TriviaFacade.create_trivia_game(session[:user_id])
    redirect_to trivium_path(session[:user_id])
  end

  def show
    @next = Game.next_question(session[:user_id])
    @answer = @next[0].answer
    if @next[0].nil?
      redirect_to charities_path
      flash[:alert] = 'Game Over!'
    end
  end

  private


  def current_question
    @questions[0]
  end
end
