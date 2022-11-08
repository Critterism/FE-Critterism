require 'rails_helper'

RSpec.describe Trivia do
  describe 'instantiation' do
    let(:data) do
      {attributes:
        {
        category: 'Animals',
        type: 'boolean',
        difficulty: 'easy',
        question: 'the axolotl us amphibian that can spend it whole life in a larval state?',
        correct_answer: 'True',
        incorrect_answers: ['False'],
        answers: ['True', 'False']
        }
      }
    end

    it 'instantiates described class' do
      trivia = Trivia.new(data)
      expect(trivia).to be_instance_of(described_class)
      expect(trivia.category).to eq('Animals')
      expect(trivia.type).to eq('boolean')
      expect(trivia.question).to eq('the axolotl us amphibian that can spend it whole life in a larval state?')
      expect(trivia.correct_answer).to eq('True')
      expect(trivia.incorrect_answers).to eq(['False'])
      expect(trivia.answers).to eq(['True', 'False'])
    end
  end
end
