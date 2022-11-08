class Trivia
  attr_reader :category,
              :type,
              :difficulty,
              :question,
              :correct_answer,
              :incorrect_answers,
              :answers,
              :current_question

  def initialize(data)
    @category = data[:attributes][:category]
    @type = data[:attributes][:type]
    @difficulty= data[:attributes][:difficulty]
    @question = data[:attributes][:question]
    @correct_answer = data[:attributes][:correct_answer]
    @incorrect_answers = data[:attributes][:incorrect_answers]
    @answers = data[:attributes][:answers]
    @current_question = data[:attributes]
  end
end
