require 'rails_helper'
RSpec.describe TriviaService, type: :service do
  describe 'Class Methods', :vcr do
    describe '.get_service_data' do
      it 'returns data for for 10 trivia question' do
        trivia_hash = TriviaService.get_trivia_data

        expect(trivia_hash).to be_a Hash
        expect(trivia_hash[:data].count).to eq 10
        expect(trivia_hash[:data]).to be_an Array
        expect(trivia_hash[:data][0]).to be_a Hash
        expect(trivia_hash[:data][0][:type]).to eq('trivia')
        expect(trivia_hash[:data][0][:attributes]).to be_a Hash
        expect(trivia_hash[:data][0][:attributes][:category]).to eq("Animals")
        expect(trivia_hash[:data][0][:attributes][:question]).to be_a String
        expect(trivia_hash[:data][0][:attributes][:correct_answer]).to be_a String
        expect(trivia_hash[:data][0][:attributes][:incorrect_answers]).to be_an Array
        expect(trivia_hash[:data][0][:attributes][:answers]).to be_an Array
      end
    end
  end
end
