class TriviaFacade
  class << self
    def create_trivia
      json = TriviaService.get_trivia_data
      json[:data].map do |data|
        Trivia.new(data)
      end
    end

    def create_game_table
      json = TriviaService.get_trivia_data
      json[:data].map do |data|
        Game.create(
          category: "#{data[:attributes][:category]}",
          difficulty: "#{data[:attributes][:difficulty]}",
          question: "#{data[:attributes][:question]}"
        )
      end
    end

    def create_answers
      json = TriviaService.get_trivia_data
      json[:data].map do |data|
        question = Game.create(
          category: "#{data[:attributes][:category]}",
          difficulty: "#{data[:attributes][:difficulty]}",
          question: "#{data[:attributes][:question]}"
        )
        Answer.create(
          correct: "#{data[:attributes][:correct_answer]}",
          incorrect1: "#{data[:attributes][:incorrect_answers][0]}",
          incorrect2: "#{data[:attributes][:incorrect_answers][1]}",
          incorrect3: "#{data[:attributes][:incorrect_answers][2]}",
          answer_type: "#{data[:attributes][:type]}",
          game_id: question.id
        )
      end
    end
  end
end
