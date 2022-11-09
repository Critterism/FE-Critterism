class Answer < ApplicationRecord
  validates :correct, :incorrect1, :answer_type, presence: true
  validates_presence_of :incorrect2, :incorrect3, unless: -> { answer_type = 'boolean' }
  belongs_to :game

  def shuffle(answers)
    if answers.answer_type == "multiple"
      return [answers.correct, answers.incorrect1, answers.incorrect2, answers.incorrect3].shuffle
    else
    return [answers.correct, answers.incorrect1].shuffle
    end
  end
end
