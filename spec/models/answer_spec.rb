require 'rails_helper'

RSpec.describe Answer, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:correct) }
    it { should validate_presence_of(:incorrect1) }
    it { should have_db_column(:incorrect2) }
    it { should have_db_column(:incorrect3) }
    it { should have_db_column(:answer_type) }
    it { should have_db_column(:game_id) }
  end

  describe 'relationships' do
    it { should belong_to(:game) }
  end

  describe 'Instance Methods' do
    describe '.shuffle' do
      it 'returns all the answers incorrect and correct shuffled' do
        game = Game.create!(category: "multiple", difficulty: "hard", question: "Which species of Brown Bear is not extinct?")
        answers = Answer.create!(correct: "Syrian Brown Bear", incorrect1: "California Grizzly Bear", incorrect2: "Atlas Bear",incorrect: "Mexican Grizzly Bear", game_id: game.id, answer_type: game.category)
        expect(answers.shuffle(answers)).to be_an Array
      end
    end
  end
end
