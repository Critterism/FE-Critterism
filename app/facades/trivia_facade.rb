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
        @game = Game.create(
          category: "#{game[:attributes][:category]}",
          difficulty: "#{game[:attributes][:difficulty]}",
          question: "#{game[:attributes][:question]}"
        )
      end
    end

    def create_answers
      json = TriviaService.get_trivia_data
      json[:data].map do |answer|
        if answer[:attributes][:type] == "multiple"
          Answer.create(
            correct: "#{answer[:attributes][:correct_answer]}",
            incorrect1: "#{answer[:attributes][:incorrect_answers][0]}",
            incorrect2: "#{answer[:attributes][:incorrect_answers][1]}",
            incorrect3: "#{answer[:attributes][:incorrect_answers][2]}",
            answer_type: "#{answer[:attributes][:type]}",
            game_id: @game.id
          )
        else
          Answer.create(
            correct: "#{answer[:attributes][:correct_answer]}",
            incorrect1: "#{answer[:attributes][:incorrect_answers][0]}",
            answer_type: "#{answer[:attributes][:type]}",
            game_id: @game.id
          )
        end
      end
    end
  end
end
