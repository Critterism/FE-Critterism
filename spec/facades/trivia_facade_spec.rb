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

  describe '.create_game', :vcr do
    it 'populates attributes to the Games table' do
      game = TriviaFacade.create_game

      expect(game).to be_an Array
      game.each do |question|
        expect(question.id).to be_an Integer
        expect(question.difficulty).to be_a String
        expect(question.question).to be_a String
      end
    end
  end

  describe '.create_answers', :vcr do
    it 'populates attributes to the Answers table' do
      answers = TriviaFacade.create_answers

      expect(answers).to be_an Array
      answers.each do |answer|
        expect(answer.id).to eq nil
        expect(answer.answer_type).to be_a String
        expect(answer.correct).to be_a String
        expect(answer.incorrect1).to be_a String
        if answer.answer_type == 'multiple'
          expect(answer.incorrect2).to be_a String
          expect(answer.incorrect3).to be_a String
        else
          expect(answer.incorrect2).to eq nil
          expect(answer.incorrect3).to eq nil
        end
      end
    end
  end
end
