class TriviaController < ApplicationController
  before_action :require_user

  def index
    Game.destroy_all
    @trivia_questions = TriviaFacade.create_trivia_game(current_user.id)
    redirect_to trivium_path(current_user.id)
  end

  def show
    @next = Game.next_question(current_user.id)
    if @next[0] == nil
      redirect_to charities_path
      flash[:alert] = '🐇 Game Over! 🐾'
    else
      @answer = @next[0].answer
    end
  end

  def update
    question = current_user.games.find_by(params[:question])
    if params[:answer] == question.answer.correct
      question.correct!
      redirect_to trivium_path(current_user), notice: "Correct! 🦊 It was #{question.answer.correct}!"
    elsif params[:answer] != question.answer.correct
      question.incorrect!
      redirect_to trivium_path(current_user), notice: "Incorrect. 🐶 The correct answer was #{question.answer.correct}."
    else
      question.unanswered!
      redirect_to trivium_path(current_user)
    end
  end
end
