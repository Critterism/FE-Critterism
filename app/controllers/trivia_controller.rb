class TriviaController < ApplicationController
  def index
    Game.destroy_all
    @trivia_questions = TriviaFacade.create_trivia_game(session[:user_id])
    redirect_to trivium_path(session[:user_id])
  end

  def show
    @next = Game.next_question(session[:user_id])
    if @next[0] == nil
      redirect_to charities_path
      flash[:alert] = 'Game Over!'
    else
      @answer = @next[0].answer
    end
  end

  def update
    @user = User.find(params[:id])
    question = @user.games.find_by(params[:question])
    if params[:answer] == question.answer.correct
      flash[:alert] = 'Correct!'
      question.correct!
      redirect_to trivium_path(@user)
    elsif params[:answer] != question.answer.correct
      flash[:alert] = "Incorrect! Correct answer was #{question.answer.correct}"
      question.incorrect!
      redirect_to trivium_path(@user)
    else
      question.unanswered!
      redirect_to trivium_path(@user)
    end
  end
end
