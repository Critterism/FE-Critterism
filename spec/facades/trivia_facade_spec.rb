require 'rails_helper'

RSpec.describe TriviaFacade do
  describe '.create_trivia_game', :vcr do
    it 'retrieves data for 10 trivia questions' do
      user = User.create!(name: 'Bob', email: 'bob@bob.com',uid: '1234567', token: 'abcdefg')
      trivia = TriviaFacade.create_trivia_game(user.id)

      expect(trivia).to be_an Array
      expect(trivia.count).to eq(10)

      trivia.each do |section|
        expect(section).to be_a Game
        expect(section.category).to eq('Animals')
        expect(section.difficulty).to be_a String
        expect(section.question).to be_a String
        expect(section.answer).to be_an Answer
        expect(section.answer.correct).to be_a String
        expect(section.answer.incorrect1).to be_an String
        if section.answer.answer_type == 'multiple'
          expect(section.answer.incorrect2).to be_a String
          expect(section.answer.incorrect2).to_not eq('')
          expect(section.answer.incorrect3).to be_a String
          expect(section.answer.incorrect3).to_not eq('')
        end
      end
    end
  end
end
