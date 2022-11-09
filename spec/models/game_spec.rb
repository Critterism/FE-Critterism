require 'rails_helper'

RSpec.describe Game, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:question) }
    it { should validate_presence_of(:difficulty) }
  end

  describe 'relationships' do
    it { should have_one(:answer) }
  end

  describe '.answer_array' do
    xit 'is the answer belonging to a question' do
      questions = TriviaFacade.create_game_table
      game_answers = TriviaFacade.create_answers

      expect(questions[0].answers).to eq(game_answers[0])
    end
  end
end
