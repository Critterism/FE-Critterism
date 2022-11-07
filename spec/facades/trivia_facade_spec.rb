require 'rails_helper'

RSpec.describe TriviaFacade do
  describe '.create_trivia', :vcr do
    it 'retrieves data for 10 trivia questions' do
      trivia = TriviaFacade.create_trivia

      expect(trivia).to be_an Array
      expect(trivia.count).to eq(10)

      trivia.each do |section|
        expect(section).to be_a Trivia
        expect(section.category).to eq('Animals')
        expect(section.answers).to be_an Array
        expect(section.correct_answer).to be_a String
        expect(section.difficulty).to be_a String
        expect(section.incorrect_answers).to be_an Array
        expect(section.question).to be_a String
        expect(section.type).to be_a String
      end
    end
  end
end
