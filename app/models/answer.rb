class Answer < ApplicationRecord
  validates :correct, :incorrect1, :answer_type, presence: true
  validates_presence_of :incorrect2, :incorrect3, unless: -> { answer_type = 'boolean' }
  belongs_to :game

  def shuffle(answer)
    if answer.answer_type == "multiple"
      return [answer.correct, answer.incorrect1, answer.incorrect2, answer.incorrect3].shuffle
    else
      return [answer.correct, answer.incorrect1].shuffle
    end
  end
end
