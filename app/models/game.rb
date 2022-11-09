class Game < ApplicationRecord
  validates :category, :question, :difficulty, presence: true
  has_one :answer

  def answers
    answer.where()
  end
end
