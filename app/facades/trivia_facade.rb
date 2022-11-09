class TriviaFacade
  class << self
    def create_trivia_game(user_id)
      json = TriviaService.get_trivia_data
      game1 = json[:data].map do |data|
        question  = Game.create!(
          category: "#{data[:attributes][:category]}",
          difficulty: "#{data[:attributes][:difficulty]}",
          question: "#{data[:attributes][:question]}",
          user_id: user_id
        )
        Answer.create!(
          correct: "#{data[:attributes][:correct_answer]}",
          incorrect1: "#{data[:attributes][:incorrect_answers][0]}",
          incorrect2: "#{data[:attributes][:incorrect_answers][1]}",
          incorrect3: "#{data[:attributes][:incorrect_answers][2]}",
          answer_type: "#{data[:attributes][:type]}",
          game_id: question.id
        )
        question
      end
    end
  end
end
