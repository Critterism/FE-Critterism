require 'rails_helper'

RSpec.describe TriviaFacade do
  describe '.create_trivia', :vcr do
    it 'retrieves data for 10 trivia questions' do
      trivia = TriviaFacade.create_trivia
      expect(trivia).to be_an Array
      expect(trivia.count).to eq(10)
      expect(trivia[0]).to be_a Trivia
      expect(trivia[0].category).to eq('Animals')
      expect(trivia[0].correct_answer).to be_a String
      expect(trivia[0].difficulty).to be_a String
      expect(trivia[0].incorrect_answers).to be_an Array
      expect(trivia[0].question).to be_a String
      expect(trivia[0].type).to be_a String
    end
  end
end