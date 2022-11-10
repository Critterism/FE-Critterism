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

  def update
    @user = User.find(params[:id])
    question = @user.games.find_by(params[:question])
    if question.save
      if params[:answer] == question.answer.correct
        flash[:alert] = 'Correct!'
        redirect_to trivium_path(@user)
        @user.games.rotate
      elsif params[:answer] != question.answer.correct
        flash[:alert] = "Incorrect! Correct answer is #{question.answer.correct}"
        redirect_to trivium_path(@user)
        @user.games.rotate
      else
        redirect_to trivium_path(@user)
      end
    end
  end
end
