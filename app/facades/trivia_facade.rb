class TriviaFacade
  class << self
    def create_trivia
      json = TriviaService.get_trivia_data
      json[:data].map do |data|
        Trivia.new(data)
      end
    end

    def create_game
      json = TriviaService.get_trivia_data
      json[:data].map do |game|
        Game.create(
          category: "#{game[:attributes][:category]}",
          type: "#{game[:attributes][:type]}",
          difficulty: "#{game[:attributes][:difficulty]}",
          question: "#{game[:attributes][:question]}"
        )
      end
    end

    def create_answers
      json[:data].map do |answer|
        require "pry"; binding.pry
        Answer.create(
          correct: "#{answer[:attributes][:correct_answer]}",
          incorrect1: "#{answer[:attributes][:type]}",
          difficulty: "#{answer[:attributes][:difficulty]}",
          answers: "#{answer[:attributes][:questions]}"
        )
      end
    end
  end
end
